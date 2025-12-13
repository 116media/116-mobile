///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element

class Translations with BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.en,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) =>
      Translations(meta: meta ?? this.$meta);

  // Translations
  late final TranslationsAuthEn auth = TranslationsAuthEn.internal(_root);
  late final TranslationsConnectivityEn connectivity = TranslationsConnectivityEn.internal(_root);
  late final TranslationsCountryEn country = TranslationsCountryEn.internal(_root);
  late final TranslationsDiscoverEn discover = TranslationsDiscoverEn.internal(_root);
  late final TranslationsFavoriteEn favorite = TranslationsFavoriteEn.internal(_root);
  late final TranslationsHomeEn home = TranslationsHomeEn.internal(_root);
  late final TranslationsOnboardingEn onboarding = TranslationsOnboardingEn.internal(_root);
  late final TranslationsPreferencesEn preferences = TranslationsPreferencesEn.internal(_root);
  late final TranslationsSessionEn session = TranslationsSessionEn.internal(_root);
  late final TranslationsSettingsEn settings = TranslationsSettingsEn.internal(_root);
  late final TranslationsSharedEn shared = TranslationsSharedEn.internal(_root);
  late final TranslationsShowsEn shows = TranslationsShowsEn.internal(_root);
}

// Path: auth
class TranslationsAuthEn {
  TranslationsAuthEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsAuthSignInEn signIn = TranslationsAuthSignInEn.internal(_root);
  late final TranslationsAuthSignUpEn signUp = TranslationsAuthSignUpEn.internal(_root);
  late final TranslationsAuthTermsAndConditionsEn termsAndConditions =
      TranslationsAuthTermsAndConditionsEn.internal(_root);
  late final TranslationsAuthForgotPasswordEn forgotPassword =
      TranslationsAuthForgotPasswordEn.internal(_root);
  late final TranslationsAuthResetPasswordEn resetPassword =
      TranslationsAuthResetPasswordEn.internal(_root);
  late final TranslationsAuthVerifyOtpEn verifyOtp = TranslationsAuthVerifyOtpEn.internal(_root);
  late final TranslationsAuthResendOtpEn resendOtp = TranslationsAuthResendOtpEn.internal(_root);
  late final TranslationsAuthCacheErrorEn cacheError = TranslationsAuthCacheErrorEn.internal(_root);
  late final TranslationsAuthFacebookErrorEn facebookError =
      TranslationsAuthFacebookErrorEn.internal(_root);
  late final TranslationsAuthGoogleErrorEn googleError = TranslationsAuthGoogleErrorEn.internal(
    _root,
  );
}

// Path: connectivity
class TranslationsConnectivityEn {
  TranslationsConnectivityEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'No internet connection'
  ///
  /// fr: 'Pas de connexion internet'
  String get noInternet => 'No internet connection';

  /// en: 'Internet restored'
  ///
  /// fr: 'Internet rétabli'
  String get internetRestored => 'Internet restored';
}

// Path: country
class TranslationsCountryEn {
  TranslationsCountryEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsCountryCacheErrorEn cacheError = TranslationsCountryCacheErrorEn.internal(
    _root,
  );
}

// Path: discover
class TranslationsDiscoverEn {
  TranslationsDiscoverEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Discover'
  ///
  /// fr: 'Découvrir'
  String get title => 'Discover';

  /// en: 'Search'
  ///
  /// fr: 'Rechercher'
  String get search => 'Search';

  /// en: 'Search for artists, songs, or content...'
  ///
  /// fr: 'Rechercher des artistes, des chansons ou du contenu...'
  String get searchPlaceholder => 'Search for artists, songs, or content...';

  /// en: 'Categories'
  ///
  /// fr: 'Catégories'
  String get categories => 'Categories';

  /// en: 'Artists'
  ///
  /// fr: 'Artistes'
  String get artists => 'Artists';

  /// en: 'Trending Now'
  ///
  /// fr: 'Tendances actuelles'
  String get trending => 'Trending Now';

  late final TranslationsDiscoverEmptyEn empty = TranslationsDiscoverEmptyEn.internal(_root);
}

// Path: favorite
class TranslationsFavoriteEn {
  TranslationsFavoriteEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Favorites'
  ///
  /// fr: 'Favoris'
  String get title => 'Favorites';

  /// en: 'All Favorites'
  ///
  /// fr: 'Tous les favoris'
  String get all => 'All Favorites';

  /// en: 'Favorite Artists'
  ///
  /// fr: 'Artistes favoris'
  String get artists => 'Favorite Artists';

  /// en: 'Favorite Songs'
  ///
  /// fr: 'Chansons favorites'
  String get songs => 'Favorite Songs';

  /// en: 'Favorite Shows'
  ///
  /// fr: 'Émissions favorites'
  String get shows => 'Favorite Shows';

  late final TranslationsFavoriteEmptyEn empty = TranslationsFavoriteEmptyEn.internal(_root);
}

// Path: home
class TranslationsHomeEn {
  TranslationsHomeEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Home'
  ///
  /// fr: 'Accueil'
  String get title => 'Home';

  /// en: 'Welcome to 116'
  ///
  /// fr: 'Bienvenue sur 116'
  String get welcome => 'Welcome to 116';

  /// en: 'Feed'
  ///
  /// fr: 'Fil d'actualité'
  String get feed => 'Feed';

  /// en: 'Trending'
  ///
  /// fr: 'Tendances'
  String get trending => 'Trending';

  /// en: 'Latest'
  ///
  /// fr: 'Derniers'
  String get latest => 'Latest';

  late final TranslationsHomeEmptyEn empty = TranslationsHomeEmptyEn.internal(_root);
}

// Path: onboarding
class TranslationsOnboardingEn {
  TranslationsOnboardingEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Skip'
  ///
  /// fr: 'Sauter'
  String get skip => 'Skip';

  /// en: 'Sign In / Sign Up'
  ///
  /// fr: 'Connexion / Inscription'
  String get signInOrSignUp => 'Sign In / Sign Up';

  List<dynamic> get pages => [
    TranslationsOnboarding$pages$0i0$En.internal(_root),
    TranslationsOnboarding$pages$0i1$En.internal(_root),
    TranslationsOnboarding$pages$0i2$En.internal(_root),
    TranslationsOnboarding$pages$0i3$En.internal(_root),
  ];
}

// Path: preferences
class TranslationsPreferencesEn {
  TranslationsPreferencesEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Set Your Preferences'
  ///
  /// fr: 'Réglez Vos Préférences'
  String get title => 'Set Your Preferences';

  /// en: 'Choose your preferred theme and language settings.'
  ///
  /// fr: 'Choisissez votre thème et vos paramètres de langue préférés.'
  String get subtitle => 'Choose your preferred theme and language settings.';

  late final TranslationsPreferencesThemeEn theme = TranslationsPreferencesThemeEn.internal(_root);
  late final TranslationsPreferencesLanguageEn language =
      TranslationsPreferencesLanguageEn.internal(_root);
}

// Path: session
class TranslationsSessionEn {
  TranslationsSessionEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsSessionCacheErrorEn cacheError = TranslationsSessionCacheErrorEn.internal(
    _root,
  );
}

// Path: settings
class TranslationsSettingsEn {
  TranslationsSettingsEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Settings'
  ///
  /// fr: 'Paramètres'
  String get title => 'Settings';

  late final TranslationsSettingsProfileEn profile = TranslationsSettingsProfileEn.internal(_root);
  late final TranslationsSettingsAccountEn account = TranslationsSettingsAccountEn.internal(_root);
  late final TranslationsSettingsPreferencesEn preferences =
      TranslationsSettingsPreferencesEn.internal(_root);
  late final TranslationsSettingsAboutEn about = TranslationsSettingsAboutEn.internal(_root);
  late final TranslationsSettingsFollowUsEn followUs = TranslationsSettingsFollowUsEn.internal(
    _root,
  );
  late final TranslationsSettingsSupportEn support = TranslationsSettingsSupportEn.internal(_root);
}

// Path: shared
class TranslationsSharedEn {
  TranslationsSharedEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsSharedCommonEn common = TranslationsSharedCommonEn.internal(_root);
  late final TranslationsSharedValidationEn validation = TranslationsSharedValidationEn.internal(
    _root,
  );
  late final TranslationsSharedErrorsEn errors = TranslationsSharedErrorsEn.internal(_root);
  late final TranslationsSharedButtonsEn buttons = TranslationsSharedButtonsEn.internal(_root);
  late final TranslationsSharedEmptyEn empty = TranslationsSharedEmptyEn.internal(_root);
  late final TranslationsSharedCountryEn country = TranslationsSharedCountryEn.internal(_root);
  late final TranslationsSharedNavigationEn navigation = TranslationsSharedNavigationEn.internal(
    _root,
  );
}

// Path: shows
class TranslationsShowsEn {
  TranslationsShowsEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Shows'
  ///
  /// fr: 'Émissions'
  String get title => 'Shows';

  /// en: 'All Shows'
  ///
  /// fr: 'Toutes les émissions'
  String get allShows => 'All Shows';

  /// en: 'Episodes'
  ///
  /// fr: 'Épisodes'
  String get episodes => 'Episodes';

  /// en: 'Watch Now'
  ///
  /// fr: 'Regarder maintenant'
  String get watchNow => 'Watch Now';

  late final TranslationsShowsEmptyEn empty = TranslationsShowsEmptyEn.internal(_root);
}

// Path: auth.signIn
class TranslationsAuthSignInEn {
  TranslationsAuthSignInEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Sign In'
  ///
  /// fr: 'Connexion'
  String get title => 'Sign In';

  /// en: 'Email'
  ///
  /// fr: 'E-mail'
  String get emailLabel => 'Email';

  /// en: 'Password'
  ///
  /// fr: 'Mot de passe'
  String get passwordLabel => 'Password';

  /// en: 'Forgot Password?'
  ///
  /// fr: 'Mot de passe oublié?'
  String get forgotPassword => 'Forgot Password?';

  /// en: 'Sign In'
  ///
  /// fr: 'Se connecter'
  String get submitButton => 'Sign In';

  /// en: 'Don't have an account?'
  ///
  /// fr: 'Vous n'avez pas de compte?'
  String get noAccount => 'Don\'t have an account?';

  /// en: 'Sign Up'
  ///
  /// fr: 'S'inscrire'
  String get signUpLink => 'Sign Up';

  /// en: 'Or Continue With'
  ///
  /// fr: 'Ou Continuer Avec'
  String get orContinueWith => 'Or Continue With';
}

// Path: auth.signUp
class TranslationsAuthSignUpEn {
  TranslationsAuthSignUpEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Sign Up'
  ///
  /// fr: 'Inscription'
  String get title => 'Sign Up';

  /// en: 'Email'
  ///
  /// fr: 'E-mail'
  String get emailLabel => 'Email';

  /// en: 'Username'
  ///
  /// fr: 'Nom d'utilisateur'
  String get usernameLabel => 'Username';

  /// en: 'Password'
  ///
  /// fr: 'Mot de passe'
  String get passwordLabel => 'Password';

  /// en: 'Confirm Password'
  ///
  /// fr: 'Confirmer le mot de passe'
  String get confirmPasswordLabel => 'Confirm Password';

  /// en: 'Sign Up'
  ///
  /// fr: 'S'inscrire'
  String get submitButton => 'Sign Up';

  /// en: 'Already have an account?'
  ///
  /// fr: 'Vous avez déjà un compte?'
  String get haveAccount => 'Already have an account?';

  /// en: 'Sign In'
  ///
  /// fr: 'Se connecter'
  String get signInLink => 'Sign In';
}

// Path: auth.termsAndConditions
class TranslationsAuthTermsAndConditionsEn {
  TranslationsAuthTermsAndConditionsEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'By continuing, you acknowledge that you understand and agree to the '
  ///
  /// fr: 'En continuant, vous reconnaissez que vous comprenez et acceptez les '
  String get prefix => 'By continuing, you acknowledge that you understand and agree to the ';

  /// en: 'Terms & Conditions'
  ///
  /// fr: 'Conditions Générales'
  String get termsLink => 'Terms & Conditions';

  /// en: ' and '
  ///
  /// fr: ' et la '
  String get and => ' and ';

  /// en: 'Privacy Policy'
  ///
  /// fr: 'Politique de Confidentialité'
  String get privacyLink => 'Privacy Policy';
}

// Path: auth.forgotPassword
class TranslationsAuthForgotPasswordEn {
  TranslationsAuthForgotPasswordEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Forgot Password'
  ///
  /// fr: 'Mot De Passe Oublié'
  String get title => 'Forgot Password';

  /// en: 'Enter the email associated with your account. We'll send you a verification code to reset your password.'
  ///
  /// fr: 'Entrez l'e-mail associé à votre compte. Nous vous enverrons un code de vérification pour réinitialiser votre mot de passe.'
  String get subtitle =>
      'Enter the email associated with your account. We\'ll send you a verification code to reset your password.';

  /// en: 'Email'
  ///
  /// fr: 'E-mail'
  String get emailLabel => 'Email';

  /// en: 'Send Code'
  ///
  /// fr: 'Envoyer Le Code'
  String get submitButton => 'Send Code';

  /// en: 'Back to Sign In'
  ///
  /// fr: 'Retour à la connexion'
  String get backToSignIn => 'Back to Sign In';

  /// en: 'Verification code sent successfully! Please check your email.'
  ///
  /// fr: 'Code de vérification envoyé avec succès! Veuillez vérifier votre e-mail.'
  String get success => 'Verification code sent successfully! Please check your email.';
}

// Path: auth.resetPassword
class TranslationsAuthResetPasswordEn {
  TranslationsAuthResetPasswordEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Reset Password'
  ///
  /// fr: 'Réinitialiser Mot De Passe'
  String get title => 'Reset Password';

  /// en: 'Enter your new password below to reset your account password.'
  ///
  /// fr: 'Entrez votre nouveau mot de passe ci-dessous pour réinitialiser le mot de passe de votre compte.'
  String get subtitle => 'Enter your new password below to reset your account password.';

  /// en: 'New password'
  ///
  /// fr: 'Nouveau mot de passe'
  String get passwordLabel => 'New password';

  /// en: 'Confirm password'
  ///
  /// fr: 'Confirmer le mot de passe'
  String get confirmPasswordLabel => 'Confirm password';

  /// en: 'Reset Password'
  ///
  /// fr: 'Réinitialiser Mot De Passe'
  String get submitButton => 'Reset Password';

  /// en: 'Password reset successfully! You can now sign in with your new password.'
  ///
  /// fr: 'Mot de passe réinitialisé avec succès! Vous pouvez maintenant vous connecter avec votre nouveau mot de passe.'
  String get success => 'Password reset successfully! You can now sign in with your new password.';
}

// Path: auth.verifyOtp
class TranslationsAuthVerifyOtpEn {
  TranslationsAuthVerifyOtpEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Verify Your Email'
  ///
  /// fr: 'Vérifiez Votre E-mail'
  String get title => 'Verify Your Email';

  /// en: 'Please enter the 6-digit verification code we've sent to '
  ///
  /// fr: 'Veuillez entrer le code de vérification à 6 chiffres que nous avons envoyé à '
  String get subtitle => 'Please enter the 6-digit verification code we\'ve sent to ';

  /// en: 'your email'
  ///
  /// fr: 'votre e-mail'
  String get yourEmail => 'your email';

  /// en: 'Verification code'
  ///
  /// fr: 'Code de vérification'
  String get codeLabel => 'Verification code';

  /// en: 'Verify'
  ///
  /// fr: 'Vérifier'
  String get submitButton => 'Verify';

  /// en: 'Account verified successfully! Please enter your new password.'
  ///
  /// fr: 'Compte vérifié avec succès! Veuillez entrer votre nouveau mot de passe.'
  String get success => 'Account verified successfully! Please enter your new password.';

  /// en: 'Your account verification completed! You're all set to continue.'
  ///
  /// fr: 'La vérification de votre compte est terminée! Vous êtes prêt à continuer.'
  String get completed => 'Your account verification completed! You\'re all set to continue.';
}

// Path: auth.resendOtp
class TranslationsAuthResendOtpEn {
  TranslationsAuthResendOtpEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: ' in {seconds} seconds'
  ///
  /// fr: ' dans {seconds} secondes'
  String countdown({required Object seconds}) => ' in ${seconds} seconds';

  /// en: 'Didn't receive the code?'
  ///
  /// fr: 'Vous n'avez pas reçu le code?'
  String get resendCode => 'Didn\'t receive the code?';

  /// en: 'Resend'
  ///
  /// fr: 'Renvoyer'
  String get resendButton => 'Resend';

  /// en: 'New verification code sent successfully! Please check your email.'
  ///
  /// fr: 'Nouveau code de vérification envoyé avec succès! Veuillez vérifier votre e-mail.'
  String get success => 'New verification code sent successfully! Please check your email.';
}

// Path: auth.cacheError
class TranslationsAuthCacheErrorEn {
  TranslationsAuthCacheErrorEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Failed to save user data: {error}'
  ///
  /// fr: 'Échec lors de la sauvegarde des données utilisateur: {error}'
  String setUser({required Object error}) => 'Failed to save user data: ${error}';

  /// en: 'Failed to retrieve user data: {error}'
  ///
  /// fr: 'Échec lors de la récupération des données utilisateur: {error}'
  String getUser({required Object error}) => 'Failed to retrieve user data: ${error}';

  /// en: 'Failed to save token: {error}'
  ///
  /// fr: 'Échec lors de la sauvegarde du token: {error}'
  String setToken({required Object error}) => 'Failed to save token: ${error}';

  /// en: 'Failed to retrieve token: {error}'
  ///
  /// fr: 'Échec lors de la récupération du token: {error}'
  String getToken({required Object error}) => 'Failed to retrieve token: ${error}';

  /// en: 'Failed to clear token: {error}'
  ///
  /// fr: 'Échec lors de la suppression du token: {error}'
  String clearToken({required Object error}) => 'Failed to clear token: ${error}';

  /// en: 'Failed to watch user: {error}'
  ///
  /// fr: 'Échec lors de la surveillance de l'utilisateur: {error}'
  String watchUser({required Object error}) => 'Failed to watch user: ${error}';
}

// Path: auth.facebookError
class TranslationsAuthFacebookErrorEn {
  TranslationsAuthFacebookErrorEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Facebook sign-in cancelled by the user.'
  ///
  /// fr: 'La connexion Facebook a été annulée par l'utilisateur.'
  String get signInCancelled => 'Facebook sign-in cancelled by the user.';

  /// en: 'Unexpected Facebook sign-in error: {error}'
  ///
  /// fr: 'Erreur inattendue de connexion Facebook: {error}'
  String unexpected({required Object error}) => 'Unexpected Facebook sign-in error: ${error}';
}

// Path: auth.googleError
class TranslationsAuthGoogleErrorEn {
  TranslationsAuthGoogleErrorEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Unexpected Google sign-in error: {error}'
  ///
  /// fr: 'Erreur inattendue de connexion Google: {error}'
  String unexpected({required Object error}) => 'Unexpected Google sign-in error: ${error}';

  /// en: 'Failed to initialize Google Sign-In: {error}'
  ///
  /// fr: 'Échec de l'initialisation de connexion Google: {error}'
  String initFailed({required Object error}) => 'Failed to initialize Google Sign-In: ${error}';
}

// Path: country.cacheError
class TranslationsCountryCacheErrorEn {
  TranslationsCountryCacheErrorEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Failed to save country data: {error}'
  ///
  /// fr: 'Échec lors de la sauvegarde des données du pays: {error}'
  String setCountry({required Object error}) => 'Failed to save country data: ${error}';

  /// en: 'Failed to retrieve country data: {error}'
  ///
  /// fr: 'Échec lors de la récupération des données du pays: {error}'
  String getCountry({required Object error}) => 'Failed to retrieve country data: ${error}';

  /// en: 'Failed to clear country data: {error}'
  ///
  /// fr: 'Échec lors de la suppression des données du pays: {error}'
  String clearCountry({required Object error}) => 'Failed to clear country data: ${error}';

  /// en: 'Failed to watch country data: {error}'
  ///
  /// fr: 'Échec lors de la surveillance des données du pays: {error}'
  String watchCountry({required Object error}) => 'Failed to watch country data: ${error}';
}

// Path: discover.empty
class TranslationsDiscoverEmptyEn {
  TranslationsDiscoverEmptyEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Nothing Found'
  ///
  /// fr: 'Aucun résultat'
  String get title => 'Nothing Found';

  /// en: 'Try searching for something else'
  ///
  /// fr: 'Essayez de rechercher autre chose'
  String get description => 'Try searching for something else';
}

// Path: favorite.empty
class TranslationsFavoriteEmptyEn {
  TranslationsFavoriteEmptyEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'No Favorites Yet'
  ///
  /// fr: 'Pas encore de favoris'
  String get title => 'No Favorites Yet';

  /// en: 'Start adding content to your favorites'
  ///
  /// fr: 'Commencez à ajouter du contenu à vos favoris'
  String get description => 'Start adding content to your favorites';
}

// Path: home.empty
class TranslationsHomeEmptyEn {
  TranslationsHomeEmptyEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'No Content Yet'
  ///
  /// fr: 'Pas encore de contenu'
  String get title => 'No Content Yet';

  /// en: 'Check back later for new content'
  ///
  /// fr: 'Revenez plus tard pour du nouveau contenu'
  String get description => 'Check back later for new content';
}

// Path: onboarding.pages.0
class TranslationsOnboarding$pages$0i0$En {
  TranslationsOnboarding$pages$0i0$En.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String title({required Object app}) => 'Welcome To ${app}';

  String get description =>
      'Discover stories, cultures, and artists shaping the sound of a new generation, from the streets to the global stage.';
}

// Path: onboarding.pages.1
class TranslationsOnboarding$pages$0i1$En {
  TranslationsOnboarding$pages$0i1$En.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => 'News Beyond Music';

  String get description =>
      'Stay informed with news, magazines, and deep dives into the people, trends that celebrate creativity.';
}

// Path: onboarding.pages.2
class TranslationsOnboarding$pages$0i2$En {
  TranslationsOnboarding$pages$0i2$En.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => 'Exclusive Shows & Media';

  String get description =>
      'Experience the urban culture through interviews, documentaries, podcasts, raw studio sessions, etc.';
}

// Path: onboarding.pages.3
class TranslationsOnboarding$pages$0i3$En {
  TranslationsOnboarding$pages$0i3$En.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  String get title => 'Be Part Of The Culture';

  String get description =>
      'Like, comment, and share your favorite artists. Discover new talents and stay connected with the music pulse.';
}

// Path: preferences.theme
class TranslationsPreferencesThemeEn {
  TranslationsPreferencesThemeEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Light'
  ///
  /// fr: 'Clair'
  String get light => 'Light';

  /// en: 'Dark'
  ///
  /// fr: 'Sombre'
  String get dark => 'Dark';
}

// Path: preferences.language
class TranslationsPreferencesLanguageEn {
  TranslationsPreferencesLanguageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'English'
  ///
  /// fr: 'Anglais'
  String get english => 'English';

  /// en: 'French'
  ///
  /// fr: 'Français'
  String get french => 'French';

  /// en: 'Select Language'
  ///
  /// fr: 'Sélectionner Langue'
  String get title => 'Select Language';

  /// en: 'Choose your preferred language'
  ///
  /// fr: 'Choisissez votre langue préférée'
  String get subtitle => 'Choose your preferred language';
}

// Path: session.cacheError
class TranslationsSessionCacheErrorEn {
  TranslationsSessionCacheErrorEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Failed to save session state: {error}'
  ///
  /// fr: 'Échec lors de la sauvegarde de la session : {error}'
  String setSession({required Object error}) => 'Failed to save session state: ${error}';

  /// en: 'Failed to retrieve session state: {error}'
  ///
  /// fr: 'Échec lors de la récupération de la session : {error}'
  String getSession({required Object error}) => 'Failed to retrieve session state: ${error}';

  /// en: 'Failed to clear session state: {error}'
  ///
  /// fr: 'Échec lors de la suppression de la session : {error}'
  String clearSession({required Object error}) => 'Failed to clear session state: ${error}';
}

// Path: settings.profile
class TranslationsSettingsProfileEn {
  TranslationsSettingsProfileEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Profile'
  ///
  /// fr: 'Profil'
  String get title => 'Profile';

  /// en: 'Edit Profile'
  ///
  /// fr: 'Modifier le profil'
  String get editProfile => 'Edit Profile';

  /// en: 'Username'
  ///
  /// fr: 'Nom d'utilisateur'
  String get username => 'Username';

  /// en: 'Email'
  ///
  /// fr: 'E-mail'
  String get email => 'Email';

  /// en: 'Phone Number'
  ///
  /// fr: 'Numéro de téléphone'
  String get phone => 'Phone Number';

  /// en: 'Profile Picture'
  ///
  /// fr: 'Photo de profil'
  String get avatar => 'Profile Picture';

  /// en: 'Change Avatar'
  ///
  /// fr: 'Changer la photo'
  String get changeAvatar => 'Change Avatar';

  /// en: 'Save Changes'
  ///
  /// fr: 'Enregistrer les modifications'
  String get saveChanges => 'Save Changes';
}

// Path: settings.account
class TranslationsSettingsAccountEn {
  TranslationsSettingsAccountEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Account'
  ///
  /// fr: 'Compte'
  String get title => 'Account';

  /// en: 'Change Password'
  ///
  /// fr: 'Changer le mot de passe'
  String get changePassword => 'Change Password';

  /// en: 'Delete Account'
  ///
  /// fr: 'Supprimer le compte'
  String get deleteAccount => 'Delete Account';

  /// en: 'Sign Out'
  ///
  /// fr: 'Se déconnecter'
  String get signOut => 'Sign Out';
}

// Path: settings.preferences
class TranslationsSettingsPreferencesEn {
  TranslationsSettingsPreferencesEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Preferences'
  ///
  /// fr: 'Préférences'
  String get title => 'Preferences';

  /// en: 'Language'
  ///
  /// fr: 'Langue'
  String get language => 'Language';

  /// en: 'Theme'
  ///
  /// fr: 'Thème'
  String get theme => 'Theme';

  /// en: 'Notifications'
  ///
  /// fr: 'Notifications'
  String get notifications => 'Notifications';
}

// Path: settings.about
class TranslationsSettingsAboutEn {
  TranslationsSettingsAboutEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'About'
  ///
  /// fr: 'À propos'
  String get title => 'About';

  /// en: 'Version'
  ///
  /// fr: 'Version'
  String get version => 'Version';

  /// en: 'Terms of Service'
  ///
  /// fr: 'Conditions d'utilisation'
  String get termsOfService => 'Terms of Service';

  /// en: 'Privacy Policy'
  ///
  /// fr: 'Politique de confidentialité'
  String get privacyPolicy => 'Privacy Policy';

  /// en: 'Contact Us'
  ///
  /// fr: 'Nous contacter'
  String get contactUs => 'Contact Us';
}

// Path: settings.followUs
class TranslationsSettingsFollowUsEn {
  TranslationsSettingsFollowUsEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Follow Us'
  ///
  /// fr: 'Suivez-nous'
  String get title => 'Follow Us';

  /// en: 'Stay connected on social media'
  ///
  /// fr: 'Restez connecté sur les réseaux sociaux'
  String get subtitle => 'Stay connected on social media';
}

// Path: settings.support
class TranslationsSettingsSupportEn {
  TranslationsSettingsSupportEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Support'
  ///
  /// fr: 'Support'
  String get title => 'Support';

  /// en: 'Help Center'
  ///
  /// fr: 'Centre d'aide'
  String get helpCenter => 'Help Center';

  /// en: 'Report a Problem'
  ///
  /// fr: 'Signaler un problème'
  String get reportProblem => 'Report a Problem';

  /// en: 'Send Feedback'
  ///
  /// fr: 'Envoyer des commentaires'
  String get feedback => 'Send Feedback';
}

// Path: shared.common
class TranslationsSharedCommonEn {
  TranslationsSharedCommonEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Continue'
  ///
  /// fr: 'Continuer'
  String get kContinue => 'Continue';

  /// en: 'Cancel'
  ///
  /// fr: 'Annuler'
  String get cancel => 'Cancel';

  /// en: 'Save'
  ///
  /// fr: 'Enregistrer'
  String get save => 'Save';

  /// en: 'Edit'
  ///
  /// fr: 'Modifier'
  String get edit => 'Edit';

  /// en: 'Delete'
  ///
  /// fr: 'Supprimer'
  String get delete => 'Delete';

  /// en: 'Confirm'
  ///
  /// fr: 'Confirmer'
  String get confirm => 'Confirm';

  /// en: 'Yes'
  ///
  /// fr: 'Oui'
  String get yes => 'Yes';

  /// en: 'No'
  ///
  /// fr: 'Non'
  String get no => 'No';

  /// en: 'OK'
  ///
  /// fr: 'OK'
  String get ok => 'OK';

  /// en: 'Done'
  ///
  /// fr: 'Terminé'
  String get done => 'Done';

  /// en: 'Close'
  ///
  /// fr: 'Fermer'
  String get close => 'Close';

  /// en: 'Retry'
  ///
  /// fr: 'Réessayer'
  String get retry => 'Retry';

  /// en: 'Loading...'
  ///
  /// fr: 'Chargement...'
  String get loading => 'Loading...';

  /// en: 'Error'
  ///
  /// fr: 'Erreur'
  String get error => 'Error';

  /// en: 'Success'
  ///
  /// fr: 'Succès'
  String get success => 'Success';

  /// en: 'Warning'
  ///
  /// fr: 'Alerte'
  String get warning => 'Warning';

  /// en: 'Info'
  ///
  /// fr: 'Info'
  String get info => 'Info';

  /// en: 'Search'
  ///
  /// fr: 'Rechercher'
  String get search => 'Search';
}

// Path: shared.validation
class TranslationsSharedValidationEn {
  TranslationsSharedValidationEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: '{fieldName} required'
  ///
  /// fr: '{fieldName} obligatoire'
  String required({required Object fieldName}) => '${fieldName} required';

  /// en: '{fieldName} has an invalid format'
  ///
  /// fr: '{fieldName} a un format invalide'
  String invalidFormat({required Object fieldName}) => '${fieldName} has an invalid format';

  /// en: '{fieldName} must be at least {minLength} characters'
  ///
  /// fr: '{fieldName} doit contenir au moins {minLength} caractères'
  String tooShort({required Object fieldName, required Object minLength}) =>
      '${fieldName} must be at least ${minLength} characters';

  /// en: '{fieldName} cannot exceed {maxLength} characters'
  ///
  /// fr: '{fieldName} ne doit pas dépasser {maxLength} caractères'
  String tooLong({required Object fieldName, required Object maxLength}) =>
      '${fieldName} cannot exceed ${maxLength} characters';

  /// en: '{fieldName} must be between {minLength} and {maxLength} characters'
  ///
  /// fr: '{fieldName} doit contenir entre {minLength} et {maxLength} caractères'
  String lengthBetween({
    required Object fieldName,
    required Object minLength,
    required Object maxLength,
  }) => '${fieldName} must be between ${minLength} and ${maxLength} characters';

  /// en: 'Passwords do not match'
  ///
  /// fr: 'Les mots de passe sont différents'
  String get passwordsDoNotMatch => 'Passwords do not match';

  /// en: '{fieldName} must contain only numbers'
  ///
  /// fr: '{fieldName} doit uniquement contenir des chiffres'
  String numericOnly({required Object fieldName}) => '${fieldName} must contain only numbers';

  /// en: '{fieldName} must contain 1 uppercase, 1 lowercase, and 1 digit'
  ///
  /// fr: '{fieldName} doit contenir 1 majuscule, 1 minuscule et 1 chiffre'
  String passwordRegex({required Object fieldName}) =>
      '${fieldName} must contain 1 uppercase, 1 lowercase, and 1 digit';

  /// en: '{fieldName} is invalid for the selected country'
  ///
  /// fr: '{fieldName} est invalide pour le pays sélectionné'
  String invalidPhone({required Object fieldName}) =>
      '${fieldName} is invalid for the selected country';

  /// en: '{fieldName} must be a valid mobile number the selected country'
  ///
  /// fr: '{fieldName} doit être un numéro mobile valide pour le pays sélectionné'
  String invalidMobilePhone({required Object fieldName}) =>
      '${fieldName} must be a valid mobile number the selected country';
}

// Path: shared.errors
class TranslationsSharedErrorsEn {
  TranslationsSharedErrorsEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Something went wrong. Please try again later.'
  ///
  /// fr: 'Une erreur s'est produite. Veuillez réessayer.'
  String get unknown => 'Something went wrong. Please try again later.';

  /// en: 'No internet connection. Please check your network.'
  ///
  /// fr: 'Pas de connexion Internet. Veuillez vérifier votre réseau.'
  String get network => 'No internet connection. Please check your network.';

  /// en: 'Request timed out. Please try again.'
  ///
  /// fr: 'La demande a expiré. Veuillez réessayer.'
  String get timeout => 'Request timed out. Please try again.';

  /// en: 'Server error. Please try again later.'
  ///
  /// fr: 'Erreur du serveur. Veuillez réessayer plus tard.'
  String get serverError => 'Server error. Please try again later.';

  /// en: 'Unauthorized access. Please log in again.'
  ///
  /// fr: 'Accès non autorisé. Veuillez vous reconnecter.'
  String get unauthorized => 'Unauthorized access. Please log in again.';

  /// en: 'The requested resource was not found.'
  ///
  /// fr: 'La ressource demandée est introuvable.'
  String get notFound => 'The requested resource was not found.';

  /// en: 'You don't have permission to access this resource.'
  ///
  /// fr: 'Vous n'avez pas la permission d'accéder à cette ressource.'
  String get forbidden => 'You don\'t have permission to access this resource.';
}

// Path: shared.buttons
class TranslationsSharedButtonsEn {
  TranslationsSharedButtonsEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Sign In'
  ///
  /// fr: 'Se connecter'
  String get signIn => 'Sign In';

  /// en: 'Sign Up'
  ///
  /// fr: 'S'inscrire'
  String get signUp => 'Sign Up';

  /// en: 'Sign Out'
  ///
  /// fr: 'Se déconnecter'
  String get signOut => 'Sign Out';

  /// en: 'Submit'
  ///
  /// fr: 'Soumettre'
  String get submit => 'Submit';

  /// en: 'Back'
  ///
  /// fr: 'Retour'
  String get back => 'Back';

  /// en: 'Next'
  ///
  /// fr: 'Suivant'
  String get next => 'Next';

  /// en: 'Continue As Guest'
  ///
  /// fr: 'Continuer Sans S'inscrire'
  String get continueAsGuest => 'Continue As Guest';
}

// Path: shared.empty
class TranslationsSharedEmptyEn {
  TranslationsSharedEmptyEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'No data available'
  ///
  /// fr: 'Aucune donnée disponible'
  String get noData => 'No data available';

  /// en: 'No results found'
  ///
  /// fr: 'Aucun résultat trouvé'
  String get noResults => 'No results found';

  /// en: 'No content to display'
  ///
  /// fr: 'Aucun contenu à afficher'
  String get noContent => 'No content to display';
}

// Path: shared.country
class TranslationsSharedCountryEn {
  TranslationsSharedCountryEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Select Country'
  ///
  /// fr: 'Sélectionner le pays'
  String get title => 'Select Country';

  /// en: 'Choose your country to get the correct dial code.'
  ///
  /// fr: 'Choisissez votre pays pour obtenir le bon indicatif régional.'
  String get subtitle => 'Choose your country to get the correct dial code.';
}

// Path: shared.navigation
class TranslationsSharedNavigationEn {
  TranslationsSharedNavigationEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'Home'
  ///
  /// fr: 'Accueil'
  String get home => 'Home';

  /// en: 'Discover'
  ///
  /// fr: 'Découvrir'
  String get discover => 'Discover';

  /// en: 'Shows'
  ///
  /// fr: 'Émissions'
  String get shows => 'Shows';

  /// en: 'Favorite'
  ///
  /// fr: 'Favoris'
  String get favorite => 'Favorite';
}

// Path: shows.empty
class TranslationsShowsEmptyEn {
  TranslationsShowsEmptyEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// en: 'No Shows Available'
  ///
  /// fr: 'Aucune émission disponible'
  String get title => 'No Shows Available';

  /// en: 'Check back later for new shows'
  ///
  /// fr: 'Revenez plus tard pour de nouvelles émissions'
  String get description => 'Check back later for new shows';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
  dynamic _flatMapFunction(String path) {
    return switch (path) {
      'auth.signIn.title' => 'Sign In',
      'auth.signIn.emailLabel' => 'Email',
      'auth.signIn.passwordLabel' => 'Password',
      'auth.signIn.forgotPassword' => 'Forgot Password?',
      'auth.signIn.submitButton' => 'Sign In',
      'auth.signIn.noAccount' => 'Don\'t have an account?',
      'auth.signIn.signUpLink' => 'Sign Up',
      'auth.signIn.orContinueWith' => 'Or Continue With',
      'auth.signUp.title' => 'Sign Up',
      'auth.signUp.emailLabel' => 'Email',
      'auth.signUp.usernameLabel' => 'Username',
      'auth.signUp.passwordLabel' => 'Password',
      'auth.signUp.confirmPasswordLabel' => 'Confirm Password',
      'auth.signUp.submitButton' => 'Sign Up',
      'auth.signUp.haveAccount' => 'Already have an account?',
      'auth.signUp.signInLink' => 'Sign In',
      'auth.termsAndConditions.prefix' =>
        'By continuing, you acknowledge that you understand and agree to the ',
      'auth.termsAndConditions.termsLink' => 'Terms & Conditions',
      'auth.termsAndConditions.and' => ' and ',
      'auth.termsAndConditions.privacyLink' => 'Privacy Policy',
      'auth.forgotPassword.title' => 'Forgot Password',
      'auth.forgotPassword.subtitle' =>
        'Enter the email associated with your account. We\'ll send you a verification code to reset your password.',
      'auth.forgotPassword.emailLabel' => 'Email',
      'auth.forgotPassword.submitButton' => 'Send Code',
      'auth.forgotPassword.backToSignIn' => 'Back to Sign In',
      'auth.forgotPassword.success' =>
        'Verification code sent successfully! Please check your email.',
      'auth.resetPassword.title' => 'Reset Password',
      'auth.resetPassword.subtitle' =>
        'Enter your new password below to reset your account password.',
      'auth.resetPassword.passwordLabel' => 'New password',
      'auth.resetPassword.confirmPasswordLabel' => 'Confirm password',
      'auth.resetPassword.submitButton' => 'Reset Password',
      'auth.resetPassword.success' =>
        'Password reset successfully! You can now sign in with your new password.',
      'auth.verifyOtp.title' => 'Verify Your Email',
      'auth.verifyOtp.subtitle' => 'Please enter the 6-digit verification code we\'ve sent to ',
      'auth.verifyOtp.yourEmail' => 'your email',
      'auth.verifyOtp.codeLabel' => 'Verification code',
      'auth.verifyOtp.submitButton' => 'Verify',
      'auth.verifyOtp.success' => 'Account verified successfully! Please enter your new password.',
      'auth.verifyOtp.completed' =>
        'Your account verification completed! You\'re all set to continue.',
      'auth.resendOtp.countdown' => ({required Object seconds}) => ' in ${seconds} seconds',
      'auth.resendOtp.resendCode' => 'Didn\'t receive the code?',
      'auth.resendOtp.resendButton' => 'Resend',
      'auth.resendOtp.success' =>
        'New verification code sent successfully! Please check your email.',
      'auth.cacheError.setUser' =>
        ({required Object error}) => 'Failed to save user data: ${error}',
      'auth.cacheError.getUser' =>
        ({required Object error}) => 'Failed to retrieve user data: ${error}',
      'auth.cacheError.setToken' => ({required Object error}) => 'Failed to save token: ${error}',
      'auth.cacheError.getToken' =>
        ({required Object error}) => 'Failed to retrieve token: ${error}',
      'auth.cacheError.clearToken' =>
        ({required Object error}) => 'Failed to clear token: ${error}',
      'auth.cacheError.watchUser' => ({required Object error}) => 'Failed to watch user: ${error}',
      'auth.facebookError.signInCancelled' => 'Facebook sign-in cancelled by the user.',
      'auth.facebookError.unexpected' =>
        ({required Object error}) => 'Unexpected Facebook sign-in error: ${error}',
      'auth.googleError.unexpected' =>
        ({required Object error}) => 'Unexpected Google sign-in error: ${error}',
      'auth.googleError.initFailed' =>
        ({required Object error}) => 'Failed to initialize Google Sign-In: ${error}',
      'connectivity.noInternet' => 'No internet connection',
      'connectivity.internetRestored' => 'Internet restored',
      'country.cacheError.setCountry' =>
        ({required Object error}) => 'Failed to save country data: ${error}',
      'country.cacheError.getCountry' =>
        ({required Object error}) => 'Failed to retrieve country data: ${error}',
      'country.cacheError.clearCountry' =>
        ({required Object error}) => 'Failed to clear country data: ${error}',
      'country.cacheError.watchCountry' =>
        ({required Object error}) => 'Failed to watch country data: ${error}',
      'discover.title' => 'Discover',
      'discover.search' => 'Search',
      'discover.searchPlaceholder' => 'Search for artists, songs, or content...',
      'discover.categories' => 'Categories',
      'discover.artists' => 'Artists',
      'discover.trending' => 'Trending Now',
      'discover.empty.title' => 'Nothing Found',
      'discover.empty.description' => 'Try searching for something else',
      'favorite.title' => 'Favorites',
      'favorite.all' => 'All Favorites',
      'favorite.artists' => 'Favorite Artists',
      'favorite.songs' => 'Favorite Songs',
      'favorite.shows' => 'Favorite Shows',
      'favorite.empty.title' => 'No Favorites Yet',
      'favorite.empty.description' => 'Start adding content to your favorites',
      'home.title' => 'Home',
      'home.welcome' => 'Welcome to 116',
      'home.feed' => 'Feed',
      'home.trending' => 'Trending',
      'home.latest' => 'Latest',
      'home.empty.title' => 'No Content Yet',
      'home.empty.description' => 'Check back later for new content',
      'onboarding.skip' => 'Skip',
      'onboarding.signInOrSignUp' => 'Sign In / Sign Up',
      'onboarding.pages.0.title' => ({required Object app}) => 'Welcome To ${app}',
      'onboarding.pages.0.description' =>
        'Discover stories, cultures, and artists shaping the sound of a new generation, from the streets to the global stage.',
      'onboarding.pages.1.title' => 'News Beyond Music',
      'onboarding.pages.1.description' =>
        'Stay informed with news, magazines, and deep dives into the people, trends that celebrate creativity.',
      'onboarding.pages.2.title' => 'Exclusive Shows & Media',
      'onboarding.pages.2.description' =>
        'Experience the urban culture through interviews, documentaries, podcasts, raw studio sessions, etc.',
      'onboarding.pages.3.title' => 'Be Part Of The Culture',
      'onboarding.pages.3.description' =>
        'Like, comment, and share your favorite artists. Discover new talents and stay connected with the music pulse.',
      'preferences.title' => 'Set Your Preferences',
      'preferences.subtitle' => 'Choose your preferred theme and language settings.',
      'preferences.theme.light' => 'Light',
      'preferences.theme.dark' => 'Dark',
      'preferences.language.english' => 'English',
      'preferences.language.french' => 'French',
      'preferences.language.title' => 'Select Language',
      'preferences.language.subtitle' => 'Choose your preferred language',
      'session.cacheError.setSession' =>
        ({required Object error}) => 'Failed to save session state: ${error}',
      'session.cacheError.getSession' =>
        ({required Object error}) => 'Failed to retrieve session state: ${error}',
      'session.cacheError.clearSession' =>
        ({required Object error}) => 'Failed to clear session state: ${error}',
      'settings.title' => 'Settings',
      'settings.profile.title' => 'Profile',
      'settings.profile.editProfile' => 'Edit Profile',
      'settings.profile.username' => 'Username',
      'settings.profile.email' => 'Email',
      'settings.profile.phone' => 'Phone Number',
      'settings.profile.avatar' => 'Profile Picture',
      'settings.profile.changeAvatar' => 'Change Avatar',
      'settings.profile.saveChanges' => 'Save Changes',
      'settings.account.title' => 'Account',
      'settings.account.changePassword' => 'Change Password',
      'settings.account.deleteAccount' => 'Delete Account',
      'settings.account.signOut' => 'Sign Out',
      'settings.preferences.title' => 'Preferences',
      'settings.preferences.language' => 'Language',
      'settings.preferences.theme' => 'Theme',
      'settings.preferences.notifications' => 'Notifications',
      'settings.about.title' => 'About',
      'settings.about.version' => 'Version',
      'settings.about.termsOfService' => 'Terms of Service',
      'settings.about.privacyPolicy' => 'Privacy Policy',
      'settings.about.contactUs' => 'Contact Us',
      'settings.followUs.title' => 'Follow Us',
      'settings.followUs.subtitle' => 'Stay connected on social media',
      'settings.support.title' => 'Support',
      'settings.support.helpCenter' => 'Help Center',
      'settings.support.reportProblem' => 'Report a Problem',
      'settings.support.feedback' => 'Send Feedback',
      'shared.common.kContinue' => 'Continue',
      'shared.common.cancel' => 'Cancel',
      'shared.common.save' => 'Save',
      'shared.common.edit' => 'Edit',
      'shared.common.delete' => 'Delete',
      'shared.common.confirm' => 'Confirm',
      'shared.common.yes' => 'Yes',
      'shared.common.no' => 'No',
      'shared.common.ok' => 'OK',
      'shared.common.done' => 'Done',
      'shared.common.close' => 'Close',
      'shared.common.retry' => 'Retry',
      'shared.common.loading' => 'Loading...',
      'shared.common.error' => 'Error',
      'shared.common.success' => 'Success',
      'shared.common.warning' => 'Warning',
      'shared.common.info' => 'Info',
      'shared.common.search' => 'Search',
      'shared.validation.required' => ({required Object fieldName}) => '${fieldName} required',
      'shared.validation.invalidFormat' =>
        ({required Object fieldName}) => '${fieldName} has an invalid format',
      'shared.validation.tooShort' =>
        ({required Object fieldName, required Object minLength}) =>
            '${fieldName} must be at least ${minLength} characters',
      'shared.validation.tooLong' =>
        ({required Object fieldName, required Object maxLength}) =>
            '${fieldName} cannot exceed ${maxLength} characters',
      'shared.validation.lengthBetween' =>
        ({required Object fieldName, required Object minLength, required Object maxLength}) =>
            '${fieldName} must be between ${minLength} and ${maxLength} characters',
      'shared.validation.passwordsDoNotMatch' => 'Passwords do not match',
      'shared.validation.numericOnly' =>
        ({required Object fieldName}) => '${fieldName} must contain only numbers',
      'shared.validation.passwordRegex' =>
        ({required Object fieldName}) =>
            '${fieldName} must contain 1 uppercase, 1 lowercase, and 1 digit',
      'shared.validation.invalidPhone' =>
        ({required Object fieldName}) => '${fieldName} is invalid for the selected country',
      'shared.validation.invalidMobilePhone' =>
        ({required Object fieldName}) =>
            '${fieldName} must be a valid mobile number the selected country',
      'shared.errors.unknown' => 'Something went wrong. Please try again later.',
      'shared.errors.network' => 'No internet connection. Please check your network.',
      'shared.errors.timeout' => 'Request timed out. Please try again.',
      'shared.errors.serverError' => 'Server error. Please try again later.',
      'shared.errors.unauthorized' => 'Unauthorized access. Please log in again.',
      'shared.errors.notFound' => 'The requested resource was not found.',
      'shared.errors.forbidden' => 'You don\'t have permission to access this resource.',
      'shared.buttons.signIn' => 'Sign In',
      'shared.buttons.signUp' => 'Sign Up',
      'shared.buttons.signOut' => 'Sign Out',
      'shared.buttons.submit' => 'Submit',
      'shared.buttons.back' => 'Back',
      'shared.buttons.next' => 'Next',
      'shared.buttons.continueAsGuest' => 'Continue As Guest',
      'shared.empty.noData' => 'No data available',
      'shared.empty.noResults' => 'No results found',
      'shared.empty.noContent' => 'No content to display',
      'shared.country.title' => 'Select Country',
      'shared.country.subtitle' => 'Choose your country to get the correct dial code.',
      'shared.navigation.home' => 'Home',
      'shared.navigation.discover' => 'Discover',
      'shared.navigation.shows' => 'Shows',
      'shared.navigation.favorite' => 'Favorite',
      'shows.title' => 'Shows',
      'shows.allShows' => 'All Shows',
      'shows.episodes' => 'Episodes',
      'shows.watchNow' => 'Watch Now',
      'shows.empty.title' => 'No Shows Available',
      'shows.empty.description' => 'Check back later for new shows',
      _ => null,
    };
  }
}
