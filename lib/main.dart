import 'package:didpay/features/app/app.dart';
import 'package:didpay/features/did/did_provider.dart';
import 'package:didpay/features/did/did_storage_service.dart';
import 'package:didpay/features/feature_flags/feature_flag.dart';
import 'package:didpay/features/feature_flags/feature_flags_notifier.dart';
import 'package:didpay/features/pfis/pfi.dart';
import 'package:didpay/features/pfis/pfis_notifier.dart';
import 'package:didpay/features/pfis/pfis_service.dart';
import 'package:didpay/features/vcs/vcs_notifier.dart';
import 'package:didpay/features/vcs/vcs_service.dart';
import 'package:didpay/shared/logger.dart';
import 'package:didpay/shared/storage/storage_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  logger.d('Initializing app');

  final sharedPreferences = await SharedPreferences.getInstance();
  var secureStorage = const FlutterSecureStorage(
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  final didService = DidStorageService(secureStorage);
  final did = await didService.getOrCreateDid();

  await Hive.initFlutter();

  final overrides = await notifierOverrides();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        secureStorageProvider.overrideWithValue(secureStorage),
        didServiceProvider.overrideWithValue(didService),
        didProvider.overrideWith((ref) => did),
        ...overrides,
      ],
      child: const App(),
    ),
  );
}

Future<List<Override>> notifierOverrides() async {
  final pfisBox = await Hive.openBox(PfisNotifier.storageKey);
  final pfisNotifier = await PfisNotifier.create(pfisBox, PfisService());

  if (pfisBox.isEmpty) await pfisNotifier.add(tbdPfiDid);

  final vcsBox = await Hive.openBox(VcsNotifier.storageKey);

  final vcsNotifier = await VcsNotifier.create(vcsBox, VcsService());

  final featureFlagsBox = await Hive.openBox(FeatureFlagsNotifier.storageKey);
  final featureFlagsNotifier =
      await FeatureFlagsNotifier.create(featureFlagsBox);

  if (featureFlagsBox.isEmpty) {
    await featureFlagsNotifier.add(lucidMode);
  }

  return [
    pfisProvider.overrideWith((ref) => pfisNotifier),
    vcsProvider.overrideWith((ref) => vcsNotifier),
    featureFlagsProvider.overrideWith((ref) => featureFlagsNotifier),
  ];
}
