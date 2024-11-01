import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of Loc
/// returned by `Loc.of(context)`.
///
/// Applications need to include `Loc.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Loc.localizationsDelegates,
///   supportedLocales: Loc.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Loc.supportedLocales
/// property.
abstract class Loc {
  Loc(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Loc of(BuildContext context) {
    return Localizations.of<Loc>(context, Loc)!;
  }

  static const LocalizationsDelegate<Loc> delegate = _LocDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'DIDPay'**
  String get appName;

  /// No description provided for @welcomeToDIDPay.
  ///
  /// In en, this message translates to:
  /// **'Welcome to DIDPay'**
  String get welcomeToDIDPay;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get getStarted;

  /// No description provided for @interactWithPfis.
  ///
  /// In en, this message translates to:
  /// **'Interact with PFIs (Participating Financial Institutions) and send money to others around the world'**
  String get interactWithPfis;

  /// No description provided for @whereAreYouLocated.
  ///
  /// In en, this message translates to:
  /// **'Where are you located?'**
  String get whereAreYouLocated;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @deposit.
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To:'**
  String get to;

  /// No description provided for @withdraw.
  ///
  /// In en, this message translates to:
  /// **'Withdraw'**
  String get withdraw;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @accountBalance.
  ///
  /// In en, this message translates to:
  /// **'Account balance'**
  String get accountBalance;

  /// No description provided for @youDeposit.
  ///
  /// In en, this message translates to:
  /// **'You deposit'**
  String get youDeposit;

  /// No description provided for @youWithdraw.
  ///
  /// In en, this message translates to:
  /// **'You withdraw'**
  String get youWithdraw;

  /// No description provided for @youGet.
  ///
  /// In en, this message translates to:
  /// **'You get'**
  String get youGet;

  /// No description provided for @estRate.
  ///
  /// In en, this message translates to:
  /// **'Est. rate'**
  String get estRate;

  /// No description provided for @serviceFee.
  ///
  /// In en, this message translates to:
  /// **'Service fee'**
  String get serviceFee;

  /// No description provided for @usd.
  ///
  /// In en, this message translates to:
  /// **'USD'**
  String get usd;

  /// No description provided for @activity.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get activity;

  /// No description provided for @noTransactionsYet.
  ///
  /// In en, this message translates to:
  /// **'No transactions yet'**
  String get noTransactionsYet;

  /// No description provided for @startBySendingMoney.
  ///
  /// In en, this message translates to:
  /// **'Start by sending money through your PFI!'**
  String get startBySendingMoney;

  /// No description provided for @transactionDetails.
  ///
  /// In en, this message translates to:
  /// **'Transaction details'**
  String get transactionDetails;

  /// No description provided for @youPay.
  ///
  /// In en, this message translates to:
  /// **'You pay'**
  String get youPay;

  /// No description provided for @youPaid.
  ///
  /// In en, this message translates to:
  /// **'You paid'**
  String get youPaid;

  /// No description provided for @youReceive.
  ///
  /// In en, this message translates to:
  /// **'You receive'**
  String get youReceive;

  /// No description provided for @youReceived.
  ///
  /// In en, this message translates to:
  /// **'You received'**
  String get youReceived;

  /// No description provided for @txnTypeQuote.
  ///
  /// In en, this message translates to:
  /// **'{txnType} quote'**
  String txnTypeQuote(String txnType);

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @reject.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// No description provided for @yourPaymentWasSent.
  ///
  /// In en, this message translates to:
  /// **'Your payment was sent!'**
  String get yourPaymentWasSent;

  /// No description provided for @verificationComplete.
  ///
  /// In en, this message translates to:
  /// **'Verification complete!'**
  String get verificationComplete;

  /// No description provided for @makeSureInfoIsCorrect.
  ///
  /// In en, this message translates to:
  /// **'Make sure this information is correct.'**
  String get makeSureInfoIsCorrect;

  /// No description provided for @enterYourPaymentDetails.
  ///
  /// In en, this message translates to:
  /// **'Enter your payment details'**
  String get enterYourPaymentDetails;

  /// No description provided for @enterTheirPaymentDetails.
  ///
  /// In en, this message translates to:
  /// **'Enter their payment details'**
  String get enterTheirPaymentDetails;

  /// No description provided for @checkTheirPaymentDetails.
  ///
  /// In en, this message translates to:
  /// **'Check their payment details'**
  String get checkTheirPaymentDetails;

  /// No description provided for @serviceFeeAmount.
  ///
  /// In en, this message translates to:
  /// **'Service fee: {amount} {currency}'**
  String serviceFeeAmount(String amount, String currency);

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @serviceFeesMayApply.
  ///
  /// In en, this message translates to:
  /// **'Service fees may apply'**
  String get serviceFeesMayApply;

  /// No description provided for @selectPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Select a payment method'**
  String get selectPaymentMethod;

  /// No description provided for @didHint.
  ///
  /// In en, this message translates to:
  /// **'did:...'**
  String get didHint;

  /// No description provided for @credentialHint.
  ///
  /// In en, this message translates to:
  /// **'xxxxx.yyyyy.zzzzz'**
  String get credentialHint;

  /// No description provided for @dapHint.
  ///
  /// In en, this message translates to:
  /// **'@local-handle/domain'**
  String get dapHint;

  /// No description provided for @thisFieldCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'This field cannot be empty'**
  String get thisFieldCannotBeEmpty;

  /// No description provided for @invalidDid.
  ///
  /// In en, this message translates to:
  /// **'Invalid DID'**
  String get invalidDid;

  /// No description provided for @invalidDap.
  ///
  /// In en, this message translates to:
  /// **'Invalid DAP'**
  String get invalidDap;

  /// No description provided for @noDidQrCodeFound.
  ///
  /// In en, this message translates to:
  /// **'No DID QR Code found'**
  String get noDidQrCodeFound;

  /// No description provided for @noDapQrCodeFound.
  ///
  /// In en, this message translates to:
  /// **'No DAP QR Code found'**
  String get noDapQrCodeFound;

  /// No description provided for @myDap.
  ///
  /// In en, this message translates to:
  /// **'My DAP'**
  String get myDap;

  /// No description provided for @myDid.
  ///
  /// In en, this message translates to:
  /// **'My DID'**
  String get myDid;

  /// No description provided for @myVc.
  ///
  /// In en, this message translates to:
  /// **'My VC'**
  String get myVc;

  /// No description provided for @vcNotFound.
  ///
  /// In en, this message translates to:
  /// **'VC not found'**
  String get vcNotFound;

  /// No description provided for @copiedDid.
  ///
  /// In en, this message translates to:
  /// **'Copied DID!'**
  String get copiedDid;

  /// No description provided for @simulatedQrCodeScan.
  ///
  /// In en, this message translates to:
  /// **'Simulated QR code scan!'**
  String get simulatedQrCodeScan;

  /// No description provided for @sendingPayment.
  ///
  /// In en, this message translates to:
  /// **'Sending payment...'**
  String get sendingPayment;

  /// No description provided for @verifyingYourIdentity.
  ///
  /// In en, this message translates to:
  /// **'Verifying your identity...'**
  String get verifyingYourIdentity;

  /// No description provided for @reviewYourPayment.
  ///
  /// In en, this message translates to:
  /// **'Review your payment'**
  String get reviewYourPayment;

  /// No description provided for @depositAmount.
  ///
  /// In en, this message translates to:
  /// **'Deposit amount'**
  String get depositAmount;

  /// No description provided for @withdrawAmount.
  ///
  /// In en, this message translates to:
  /// **'Withdraw amount'**
  String get withdrawAmount;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @selectYourCountry.
  ///
  /// In en, this message translates to:
  /// **'Select your country to see what PFIs are available to you'**
  String get selectYourCountry;

  /// No description provided for @getStartedWithAPfi.
  ///
  /// In en, this message translates to:
  /// **'Get started with a PFI'**
  String get getStartedWithAPfi;

  /// No description provided for @selectAPfi.
  ///
  /// In en, this message translates to:
  /// **'Select a PFI to verify your identity and provide you liquidity'**
  String get selectAPfi;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of service'**
  String get termsOfService;

  /// No description provided for @exampleTerms.
  ///
  /// In en, this message translates to:
  /// **'Financial services are being provided by Block, Inc. By clicking on the \"next\" button, you consent to opening an account with Block, Inc. Block, Inc. will ask you for personal information to verify your identity before opening an account...'**
  String get exampleTerms;

  /// No description provided for @iCertifyThatIAgreeToThe.
  ///
  /// In en, this message translates to:
  /// **'I certify that I agree to the '**
  String get iCertifyThatIAgreeToThe;

  /// No description provided for @userAgreement.
  ///
  /// In en, this message translates to:
  /// **'User Agreement'**
  String get userAgreement;

  /// No description provided for @andIHaveReadThe.
  ///
  /// In en, this message translates to:
  /// **', and I have read the '**
  String get andIHaveReadThe;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @sendAmountUsdc.
  ///
  /// In en, this message translates to:
  /// **'Send {amount} USDC'**
  String sendAmountUsdc(String amount);

  /// No description provided for @availableBalance.
  ///
  /// In en, this message translates to:
  /// **'Available balance: '**
  String get availableBalance;

  /// No description provided for @selectWallet.
  ///
  /// In en, this message translates to:
  /// **'Select your wallet'**
  String get selectWallet;

  /// No description provided for @selectWalletDescription.
  ///
  /// In en, this message translates to:
  /// **'We recommend you use DidPay with a compatible digital wallet. Select from the following options.'**
  String get selectWalletDescription;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @selectPaymentType.
  ///
  /// In en, this message translates to:
  /// **'Select a payment type'**
  String get selectPaymentType;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @youSend.
  ///
  /// In en, this message translates to:
  /// **'You send'**
  String get youSend;

  /// No description provided for @theyGet.
  ///
  /// In en, this message translates to:
  /// **'They get'**
  String get theyGet;

  /// No description provided for @sendMoneyAbroad.
  ///
  /// In en, this message translates to:
  /// **'Send money abroad'**
  String get sendMoneyAbroad;

  /// No description provided for @selectCountryToGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Select a country to get started'**
  String get selectCountryToGetStarted;

  /// No description provided for @exchangeRate.
  ///
  /// In en, this message translates to:
  /// **'Exchange rate'**
  String get exchangeRate;

  /// No description provided for @txnTypeFee.
  ///
  /// In en, this message translates to:
  /// **'{txnType} fee'**
  String txnTypeFee(String txnType);

  /// No description provided for @requestedAmount.
  ///
  /// In en, this message translates to:
  /// **'Requested amount'**
  String get requestedAmount;

  /// No description provided for @totalToAccount.
  ///
  /// In en, this message translates to:
  /// **'Total to account'**
  String get totalToAccount;

  /// No description provided for @totalToYou.
  ///
  /// In en, this message translates to:
  /// **'Total to you'**
  String get totalToYou;

  /// No description provided for @totalToRecipient.
  ///
  /// In en, this message translates to:
  /// **'Total to recipient'**
  String get totalToRecipient;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @errorFound.
  ///
  /// In en, this message translates to:
  /// **'Error found'**
  String get errorFound;

  /// No description provided for @tapToRetry.
  ///
  /// In en, this message translates to:
  /// **'Tap to retry'**
  String get tapToRetry;

  /// No description provided for @unableToRetrieveTxns.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve transactions'**
  String get unableToRetrieveTxns;

  /// No description provided for @addAPfi.
  ///
  /// In en, this message translates to:
  /// **'Add a PFI'**
  String get addAPfi;

  /// No description provided for @addACredential.
  ///
  /// In en, this message translates to:
  /// **'Add a credential'**
  String get addACredential;

  /// No description provided for @enterACredentialJwt.
  ///
  /// In en, this message translates to:
  /// **'Enter a credential Json Web Token (JWT)'**
  String get enterACredentialJwt;

  /// No description provided for @noPfisFound.
  ///
  /// In en, this message translates to:
  /// **'No PFIs found'**
  String get noPfisFound;

  /// No description provided for @startByAddingAPfi.
  ///
  /// In en, this message translates to:
  /// **'Start by adding a PFI'**
  String get startByAddingAPfi;

  /// No description provided for @pfiAdded.
  ///
  /// In en, this message translates to:
  /// **'PFI added!'**
  String get pfiAdded;

  /// No description provided for @credentialAdded.
  ///
  /// In en, this message translates to:
  /// **'Credential added!'**
  String get credentialAdded;

  /// No description provided for @addingPfi.
  ///
  /// In en, this message translates to:
  /// **'Adding PFI...'**
  String get addingPfi;

  /// No description provided for @addingCredential.
  ///
  /// In en, this message translates to:
  /// **'Adding credential...'**
  String get addingCredential;

  /// No description provided for @mustAddPfiBeforeSending.
  ///
  /// In en, this message translates to:
  /// **'Must add a PFI before sending funds!'**
  String get mustAddPfiBeforeSending;

  /// No description provided for @fetchingYourQuote.
  ///
  /// In en, this message translates to:
  /// **'Fetching your quote...'**
  String get fetchingYourQuote;

  /// No description provided for @fetchingPaymentInstructions.
  ///
  /// In en, this message translates to:
  /// **'Fetching payment instructions...'**
  String get fetchingPaymentInstructions;

  /// No description provided for @sendingYourRequest.
  ///
  /// In en, this message translates to:
  /// **'Sending your request...'**
  String get sendingYourRequest;

  /// No description provided for @sendingYourOrder.
  ///
  /// In en, this message translates to:
  /// **'Sending your order...'**
  String get sendingYourOrder;

  /// No description provided for @orderConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Order confirmed!'**
  String get orderConfirmed;

  /// No description provided for @removePfi.
  ///
  /// In en, this message translates to:
  /// **'Remove PFI'**
  String get removePfi;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @linkedPfis.
  ///
  /// In en, this message translates to:
  /// **'Linked PFIs'**
  String get linkedPfis;

  /// No description provided for @noTransactionsFound.
  ///
  /// In en, this message translates to:
  /// **'No transactions found'**
  String get noTransactionsFound;

  /// No description provided for @whoDoYouWantToPay.
  ///
  /// In en, this message translates to:
  /// **'Who do you want to pay?'**
  String get whoDoYouWantToPay;

  /// No description provided for @fetchingOfferings.
  ///
  /// In en, this message translates to:
  /// **'Fetching offerings...'**
  String get fetchingOfferings;

  /// No description provided for @startingIdv.
  ///
  /// In en, this message translates to:
  /// **'Starting identity verification...'**
  String get startingIdv;

  /// No description provided for @identityVerificationComplete.
  ///
  /// In en, this message translates to:
  /// **'Identity verification complete!'**
  String get identityVerificationComplete;

  /// No description provided for @issuedCredentials.
  ///
  /// In en, this message translates to:
  /// **'Issued credentials'**
  String get issuedCredentials;

  /// No description provided for @removeCredential.
  ///
  /// In en, this message translates to:
  /// **'Remove credential'**
  String get removeCredential;

  /// No description provided for @noCredentialsIssuedYet.
  ///
  /// In en, this message translates to:
  /// **'No credentials issued yet'**
  String get noCredentialsIssuedYet;

  /// No description provided for @selectCurrency.
  ///
  /// In en, this message translates to:
  /// **'Select currency'**
  String get selectCurrency;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @fetchingTransactions.
  ///
  /// In en, this message translates to:
  /// **'Fetching transactions...'**
  String get fetchingTransactions;

  /// No description provided for @scan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get scan;

  /// No description provided for @cameraUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Camera unavailable'**
  String get cameraUnavailable;

  /// No description provided for @dontKnowTheirDid.
  ///
  /// In en, this message translates to:
  /// **'Don\'t know their DID? Scan their QR code instead'**
  String get dontKnowTheirDid;

  /// No description provided for @dontKnowTheirDap.
  ///
  /// In en, this message translates to:
  /// **'Don\'t know their DAP? Scan their QR code instead'**
  String get dontKnowTheirDap;

  /// No description provided for @scanACredentialJwt.
  ///
  /// In en, this message translates to:
  /// **'Scan a credential JWT QR code'**
  String get scanACredentialJwt;

  /// No description provided for @credentialScanUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Credential scan unavailable'**
  String get credentialScanUnavailable;

  /// No description provided for @featureFlags.
  ///
  /// In en, this message translates to:
  /// **'Feature flags'**
  String get featureFlags;

  /// No description provided for @lucidMode.
  ///
  /// In en, this message translates to:
  /// **'Lucid mode'**
  String get lucidMode;

  /// No description provided for @selectFromUnfilteredList.
  ///
  /// In en, this message translates to:
  /// **'Select from an unfiltered list of all your PFI offerings.'**
  String get selectFromUnfilteredList;

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// No description provided for @stay.
  ///
  /// In en, this message translates to:
  /// **'Stay'**
  String get stay;

  /// No description provided for @stoptxnType.
  ///
  /// In en, this message translates to:
  /// **'Stop {txnType}ing money?'**
  String stoptxnType(String txnType);

  /// No description provided for @ifYouExitNow.
  ///
  /// In en, this message translates to:
  /// **'If you exit now, you\'ll lose all your progress'**
  String get ifYouExitNow;

  /// No description provided for @ifYouGoBackNow.
  ///
  /// In en, this message translates to:
  /// **'If you go back now, you\'ll lose your quote'**
  String get ifYouGoBackNow;

  /// No description provided for @enterADap.
  ///
  /// In en, this message translates to:
  /// **'Enter a Decentralized Agnostic Paytag (DAP)'**
  String get enterADap;

  /// No description provided for @verifyingDap.
  ///
  /// In en, this message translates to:
  /// **'Verifying DAP...'**
  String get verifyingDap;

  /// No description provided for @placeholderDap.
  ///
  /// In en, this message translates to:
  /// **'@username/didpay.me'**
  String get placeholderDap;

  /// No description provided for @areYouSure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get areYouSure;

  /// No description provided for @allOfYourCredentialsWillAlsoBeDeleted.
  ///
  /// In en, this message translates to:
  /// **'All of your credentials will also be deleted'**
  String get allOfYourCredentialsWillAlsoBeDeleted;

  /// No description provided for @regenerate.
  ///
  /// In en, this message translates to:
  /// **'Regenerate'**
  String get regenerate;

  /// No description provided for @goBack.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get goBack;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToClipboard;
}

class _LocDelegate extends LocalizationsDelegate<Loc> {
  const _LocDelegate();

  @override
  Future<Loc> load(Locale locale) {
    return SynchronousFuture<Loc>(lookupLoc(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_LocDelegate old) => false;
}

Loc lookupLoc(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return LocEn();
  }

  throw FlutterError(
    'Loc.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
