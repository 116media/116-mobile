///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsFr extends Translations with BaseTranslations<AppLocale, Translations> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsFr({
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
             locale: AppLocale.fr,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ),
       super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
    super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <fr>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

  late final TranslationsFr _root = this; // ignore: unused_field

  @override
  TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) =>
      TranslationsFr(meta: meta ?? this.$meta);

  // Translations
  @override
  late final TranslationsAuthFr auth = TranslationsAuthFr._(_root);
  @override
  late final TranslationsConnectivityFr connectivity = TranslationsConnectivityFr._(_root);
  @override
  late final TranslationsCountryFr country = TranslationsCountryFr._(_root);
  @override
  late final TranslationsDiscoverFr discover = TranslationsDiscoverFr._(_root);
  @override
  late final TranslationsFavoriteFr favorite = TranslationsFavoriteFr._(_root);
  @override
  late final TranslationsHomeFr home = TranslationsHomeFr._(_root);
  @override
  late final TranslationsOnboardingFr onboarding = TranslationsOnboardingFr._(_root);
  @override
  late final TranslationsPreferencesFr preferences = TranslationsPreferencesFr._(_root);
  @override
  late final TranslationsSessionFr session = TranslationsSessionFr._(_root);
  @override
  late final TranslationsSettingsFr settings = TranslationsSettingsFr._(_root);
  @override
  late final TranslationsSharedFr shared = TranslationsSharedFr._(_root);
  @override
  late final TranslationsShowsFr shows = TranslationsShowsFr._(_root);
}

// Path: auth
class TranslationsAuthFr extends TranslationsAuthEn {
  TranslationsAuthFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final TranslationsAuthSignInFr signIn = TranslationsAuthSignInFr._(_root);
  @override
  late final TranslationsAuthSignUpFr signUp = TranslationsAuthSignUpFr._(_root);
  @override
  late final TranslationsAuthTermsAndConditionsFr termsAndConditions =
      TranslationsAuthTermsAndConditionsFr._(_root);
  @override
  late final TranslationsAuthForgotPasswordFr forgotPassword = TranslationsAuthForgotPasswordFr._(
    _root,
  );
  @override
  late final TranslationsAuthResetPasswordFr resetPassword = TranslationsAuthResetPasswordFr._(
    _root,
  );
  @override
  late final TranslationsAuthVerifyOtpFr verifyOtp = TranslationsAuthVerifyOtpFr._(_root);
  @override
  late final TranslationsAuthResendOtpFr resendOtp = TranslationsAuthResendOtpFr._(_root);
  @override
  late final TranslationsAuthCacheErrorFr cacheError = TranslationsAuthCacheErrorFr._(_root);
  @override
  late final TranslationsAuthFacebookErrorFr facebookError = TranslationsAuthFacebookErrorFr._(
    _root,
  );
  @override
  late final TranslationsAuthGoogleErrorFr googleError = TranslationsAuthGoogleErrorFr._(_root);
}

// Path: connectivity
class TranslationsConnectivityFr extends TranslationsConnectivityEn {
  TranslationsConnectivityFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get noInternet => 'Pas de connexion internet';
  @override
  String get internetRestored => 'Internet rétabli';
}

// Path: country
class TranslationsCountryFr extends TranslationsCountryEn {
  TranslationsCountryFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final TranslationsCountryCacheErrorFr cacheError = TranslationsCountryCacheErrorFr._(_root);
}

// Path: discover
class TranslationsDiscoverFr extends TranslationsDiscoverEn {
  TranslationsDiscoverFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Découvrir';
  @override
  String get search => 'Rechercher';
  @override
  String get searchPlaceholder => 'Rechercher des artistes, des chansons ou du contenu...';
  @override
  String get categories => 'Catégories';
  @override
  String get artists => 'Artistes';
  @override
  String get trending => 'Tendances actuelles';
  @override
  late final TranslationsDiscoverEmptyFr empty = TranslationsDiscoverEmptyFr._(_root);
}

// Path: favorite
class TranslationsFavoriteFr extends TranslationsFavoriteEn {
  TranslationsFavoriteFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Favoris';
  @override
  String get all => 'Tous les favoris';
  @override
  String get artists => 'Artistes favoris';
  @override
  String get songs => 'Chansons favorites';
  @override
  String get shows => 'Émissions favorites';
  @override
  late final TranslationsFavoriteEmptyFr empty = TranslationsFavoriteEmptyFr._(_root);
}

// Path: home
class TranslationsHomeFr extends TranslationsHomeEn {
  TranslationsHomeFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Accueil';
  @override
  String get welcome => 'Bienvenue sur 116';
  @override
  String get feed => 'Fil d\'actualité';
  @override
  String get trending => 'Tendances';
  @override
  String get latest => 'Derniers';
  @override
  late final TranslationsHomeEmptyFr empty = TranslationsHomeEmptyFr._(_root);
}

// Path: onboarding
class TranslationsOnboardingFr extends TranslationsOnboardingEn {
  TranslationsOnboardingFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get skip => 'Sauter';
  @override
  String get signInOrSignUp => 'Connexion / Inscription';
  @override
  List<dynamic> get pages => [
    TranslationsOnboarding$pages$0i0$Fr._(_root),
    TranslationsOnboarding$pages$0i1$Fr._(_root),
    TranslationsOnboarding$pages$0i2$Fr._(_root),
    TranslationsOnboarding$pages$0i3$Fr._(_root),
  ];
}

// Path: preferences
class TranslationsPreferencesFr extends TranslationsPreferencesEn {
  TranslationsPreferencesFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Réglez Vos Préférences';
  @override
  String get subtitle => 'Choisissez votre thème et vos paramètres de langue préférés.';
  @override
  late final TranslationsPreferencesThemeFr theme = TranslationsPreferencesThemeFr._(_root);
  @override
  late final TranslationsPreferencesLanguageFr language = TranslationsPreferencesLanguageFr._(
    _root,
  );
  @override
  late final TranslationsPreferencesCacheErrorFr cacheError = TranslationsPreferencesCacheErrorFr._(
    _root,
  );
}

// Path: session
class TranslationsSessionFr extends TranslationsSessionEn {
  TranslationsSessionFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final TranslationsSessionCacheErrorFr cacheError = TranslationsSessionCacheErrorFr._(_root);
}

// Path: settings
class TranslationsSettingsFr extends TranslationsSettingsEn {
  TranslationsSettingsFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Paramètres';
  @override
  late final TranslationsSettingsProfileFr profile = TranslationsSettingsProfileFr._(_root);
  @override
  late final TranslationsSettingsAvatarFr avatar = TranslationsSettingsAvatarFr._(_root);
  @override
  late final TranslationsSettingsAccountFr account = TranslationsSettingsAccountFr._(_root);
  @override
  late final TranslationsSettingsPreferencesFr preferences = TranslationsSettingsPreferencesFr._(
    _root,
  );
  @override
  late final TranslationsSettingsSupportFr support = TranslationsSettingsSupportFr._(_root);
  @override
  late final TranslationsSettingsFollowUsFr followUs = TranslationsSettingsFollowUsFr._(_root);
  @override
  late final TranslationsSettingsLogoutFr logout = TranslationsSettingsLogoutFr._(_root);
}

// Path: shared
class TranslationsSharedFr extends TranslationsSharedEn {
  TranslationsSharedFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final TranslationsSharedCommonFr common = TranslationsSharedCommonFr._(_root);
  @override
  late final TranslationsSharedValidationFr validation = TranslationsSharedValidationFr._(_root);
  @override
  late final TranslationsSharedErrorsFr errors = TranslationsSharedErrorsFr._(_root);
  @override
  late final TranslationsSharedButtonsFr buttons = TranslationsSharedButtonsFr._(_root);
  @override
  late final TranslationsSharedEmptyFr empty = TranslationsSharedEmptyFr._(_root);
  @override
  late final TranslationsSharedCountryFr country = TranslationsSharedCountryFr._(_root);
  @override
  late final TranslationsSharedNavigationFr navigation = TranslationsSharedNavigationFr._(_root);
}

// Path: shows
class TranslationsShowsFr extends TranslationsShowsEn {
  TranslationsShowsFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Émissions';
  @override
  String get allShows => 'Toutes les émissions';
  @override
  String get episodes => 'Épisodes';
  @override
  String get watchNow => 'Regarder maintenant';
  @override
  late final TranslationsShowsEmptyFr empty = TranslationsShowsEmptyFr._(_root);
}

// Path: auth.signIn
class TranslationsAuthSignInFr extends TranslationsAuthSignInEn {
  TranslationsAuthSignInFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Connexion';
  @override
  String get emailLabel => 'E-mail';
  @override
  String get passwordLabel => 'Mot de passe';
  @override
  String get forgotPassword => 'Mot de passe oublié?';
  @override
  String get submitButton => 'Se connecter';
  @override
  String get noAccount => 'Vous n\'avez pas de compte?';
  @override
  String get signUpLink => 'S\'inscrire';
  @override
  String get orContinueWith => 'Ou Continuer Avec';
}

// Path: auth.signUp
class TranslationsAuthSignUpFr extends TranslationsAuthSignUpEn {
  TranslationsAuthSignUpFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Inscription';
  @override
  String get emailLabel => 'E-mail';
  @override
  String get usernameLabel => 'Nom d\'utilisateur';
  @override
  String get passwordLabel => 'Mot de passe';
  @override
  String get confirmPasswordLabel => 'Confirmer le mot de passe';
  @override
  String get submitButton => 'S\'inscrire';
  @override
  String get haveAccount => 'Vous avez déjà un compte?';
  @override
  String get signInLink => 'Se connecter';
}

// Path: auth.termsAndConditions
class TranslationsAuthTermsAndConditionsFr extends TranslationsAuthTermsAndConditionsEn {
  TranslationsAuthTermsAndConditionsFr._(TranslationsFr root)
    : this._root = root,
      super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get prefix => 'En continuant, vous reconnaissez que vous comprenez et acceptez les ';
  @override
  String get termsLink => 'Conditions Générales';
  @override
  String get and => ' et la ';
  @override
  String get privacyLink => 'Politique de Confidentialité';
}

// Path: auth.forgotPassword
class TranslationsAuthForgotPasswordFr extends TranslationsAuthForgotPasswordEn {
  TranslationsAuthForgotPasswordFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Mot De Passe Oublié';
  @override
  String get subtitle =>
      'Entrez l\'e-mail associé à votre compte. Nous vous enverrons un code de vérification pour réinitialiser votre mot de passe.';
  @override
  String get emailLabel => 'E-mail';
  @override
  String get submitButton => 'Envoyer Le Code';
  @override
  String get backToSignIn => 'Retour à la connexion';
  @override
  String get success => 'Code de vérification envoyé avec succès! Veuillez vérifier votre e-mail.';
}

// Path: auth.resetPassword
class TranslationsAuthResetPasswordFr extends TranslationsAuthResetPasswordEn {
  TranslationsAuthResetPasswordFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Réinitialiser Mot De Passe';
  @override
  String get subtitle =>
      'Entrez votre nouveau mot de passe ci-dessous pour réinitialiser le mot de passe de votre compte.';
  @override
  String get passwordLabel => 'Nouveau mot de passe';
  @override
  String get confirmPasswordLabel => 'Confirmer le mot de passe';
  @override
  String get submitButton => 'Réinitialiser Mot De Passe';
  @override
  String get success =>
      'Mot de passe réinitialisé avec succès! Vous pouvez maintenant vous connecter avec votre nouveau mot de passe.';
}

// Path: auth.verifyOtp
class TranslationsAuthVerifyOtpFr extends TranslationsAuthVerifyOtpEn {
  TranslationsAuthVerifyOtpFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vérifiez Votre E-mail';
  @override
  String get subtitle =>
      'Veuillez entrer le code de vérification à 6 chiffres que nous avons envoyé à ';
  @override
  String get yourEmail => 'votre e-mail';
  @override
  String get codeLabel => 'Code de vérification';
  @override
  String get submitButton => 'Vérifier';
  @override
  String get success => 'Compte vérifié avec succès! Veuillez entrer votre nouveau mot de passe.';
  @override
  String get completed =>
      'La vérification de votre compte est terminée! Vous êtes prêt à continuer.';
}

// Path: auth.resendOtp
class TranslationsAuthResendOtpFr extends TranslationsAuthResendOtpEn {
  TranslationsAuthResendOtpFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String countdown({required Object seconds}) => ' dans ${seconds} secondes';
  @override
  String get resendCode => 'Vous n\'avez pas reçu le code?';
  @override
  String get resendButton => 'Renvoyer';
  @override
  String get success =>
      'Nouveau code de vérification envoyé avec succès! Veuillez vérifier votre e-mail.';
}

// Path: auth.cacheError
class TranslationsAuthCacheErrorFr extends TranslationsAuthCacheErrorEn {
  TranslationsAuthCacheErrorFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String setUser({required Object error}) =>
      'Échec lors de la sauvegarde des données utilisateur: ${error}';
  @override
  String getUser({required Object error}) =>
      'Échec lors de la récupération des données utilisateur: ${error}';
  @override
  String setToken({required Object error}) => 'Échec lors de la sauvegarde du token: ${error}';
  @override
  String getToken({required Object error}) => 'Échec lors de la récupération du token: ${error}';
  @override
  String clearToken({required Object error}) => 'Échec lors de la suppression du token: ${error}';
  @override
  String watchUser({required Object error}) =>
      'Échec lors de la surveillance de l\'utilisateur: ${error}';
}

// Path: auth.facebookError
class TranslationsAuthFacebookErrorFr extends TranslationsAuthFacebookErrorEn {
  TranslationsAuthFacebookErrorFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get signInCancelled => 'La connexion Facebook a été annulée par l\'utilisateur.';
  @override
  String unexpected({required Object error}) => 'Erreur inattendue de connexion Facebook: ${error}';
}

// Path: auth.googleError
class TranslationsAuthGoogleErrorFr extends TranslationsAuthGoogleErrorEn {
  TranslationsAuthGoogleErrorFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String unexpected({required Object error}) => 'Erreur inattendue de connexion Google: ${error}';
  @override
  String initFailed({required Object error}) =>
      'Échec de l\'initialisation de connexion Google: ${error}';
}

// Path: country.cacheError
class TranslationsCountryCacheErrorFr extends TranslationsCountryCacheErrorEn {
  TranslationsCountryCacheErrorFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String setCountry({required Object error}) =>
      'Échec lors de la sauvegarde des données du pays: ${error}';
  @override
  String getCountry({required Object error}) =>
      'Échec lors de la récupération des données du pays: ${error}';
  @override
  String clearCountry({required Object error}) =>
      'Échec lors de la suppression des données du pays: ${error}';
  @override
  String watchCountry({required Object error}) =>
      'Échec lors de la surveillance des données du pays: ${error}';
}

// Path: discover.empty
class TranslationsDiscoverEmptyFr extends TranslationsDiscoverEmptyEn {
  TranslationsDiscoverEmptyFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Aucun résultat';
  @override
  String get description => 'Essayez de rechercher autre chose';
}

// Path: favorite.empty
class TranslationsFavoriteEmptyFr extends TranslationsFavoriteEmptyEn {
  TranslationsFavoriteEmptyFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pas encore de favoris';
  @override
  String get description => 'Commencez à ajouter du contenu à vos favoris';
}

// Path: home.empty
class TranslationsHomeEmptyFr extends TranslationsHomeEmptyEn {
  TranslationsHomeEmptyFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pas encore de contenu';
  @override
  String get description => 'Revenez plus tard pour du nouveau contenu';
}

// Path: onboarding.pages.0
class TranslationsOnboarding$pages$0i0$Fr extends TranslationsOnboarding$pages$0i0$En {
  TranslationsOnboarding$pages$0i0$Fr._(TranslationsFr root)
    : this._root = root,
      super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String title({required Object app}) => 'Bienvenue Sur ${app}';
  @override
  String get description =>
      'Découvrez des histoires, cultures et artistes qui façonnent le son d’une nouvelle génération, de la rue à la scène mondiale.';
}

// Path: onboarding.pages.1
class TranslationsOnboarding$pages$0i1$Fr extends TranslationsOnboarding$pages$0i1$En {
  TranslationsOnboarding$pages$0i1$Fr._(TranslationsFr root)
    : this._root = root,
      super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Au-delà De La Musique';
  @override
  String get description =>
      'Restez informé avec des actualités, magazines et analyses approfondies sur les personnes et tendances qui célèbrent la créativité.';
}

// Path: onboarding.pages.2
class TranslationsOnboarding$pages$0i2$Fr extends TranslationsOnboarding$pages$0i2$En {
  TranslationsOnboarding$pages$0i2$Fr._(TranslationsFr root)
    : this._root = root,
      super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Émissions Et Médias Exclusifs';
  @override
  String get description =>
      'Vivez la culture urbaine à travers des interviews, documentaires, podcasts, sessions studio brutes, etc.';
}

// Path: onboarding.pages.3
class TranslationsOnboarding$pages$0i3$Fr extends TranslationsOnboarding$pages$0i3$En {
  TranslationsOnboarding$pages$0i3$Fr._(TranslationsFr root)
    : this._root = root,
      super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Faites Partie De La Culture';
  @override
  String get description =>
      'Likez, commentez et partagez vos artistes préférés. Découvrez de nouveaux talents et restez connecté au rythme de la musique.';
}

// Path: preferences.theme
class TranslationsPreferencesThemeFr extends TranslationsPreferencesThemeEn {
  TranslationsPreferencesThemeFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get light => 'Clair';
  @override
  String get dark => 'Sombre';
}

// Path: preferences.language
class TranslationsPreferencesLanguageFr extends TranslationsPreferencesLanguageEn {
  TranslationsPreferencesLanguageFr._(TranslationsFr root)
    : this._root = root,
      super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get english => 'Anglais';
  @override
  String get french => 'Français';
  @override
  String get title => 'Sélectionner Langue';
  @override
  String get subtitle => 'Choisissez votre langue préférée';
}

// Path: preferences.cacheError
class TranslationsPreferencesCacheErrorFr extends TranslationsPreferencesCacheErrorEn {
  TranslationsPreferencesCacheErrorFr._(TranslationsFr root)
    : this._root = root,
      super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String getPreferences({required Object error}) =>
      'Échec de la récupération des préférences: ${error}';
  @override
  String setPreferences({required Object error}) =>
      'Échec de la sauvegarde des préférences: ${error}';
  @override
  String clearPreferences({required Object error}) =>
      'Échec de la suppression des préférences: ${error}';
}

// Path: session.cacheError
class TranslationsSessionCacheErrorFr extends TranslationsSessionCacheErrorEn {
  TranslationsSessionCacheErrorFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String setSession({required Object error}) =>
      'Échec lors de la sauvegarde de la session : ${error}';
  @override
  String getSession({required Object error}) =>
      'Échec lors de la récupération de la session : ${error}';
  @override
  String clearSession({required Object error}) =>
      'Échec lors de la suppression de la session : ${error}';
}

// Path: settings.profile
class TranslationsSettingsProfileFr extends TranslationsSettingsProfileEn {
  TranslationsSettingsProfileFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Profil';
  @override
  String get editProfile => 'Modifier Profil';
  @override
  String get username => 'Nom d\'utilisateur';
  @override
  String get email => 'E-mail';
  @override
  String get telephone => 'Téléphone';
  @override
  String get updateSuccess => 'Profil mis à jour avec succès!';
  @override
  String get updateSubtitle =>
      'Mettez à jour les détails du profil, en particulier votre nom d\'utilisateur et votre numéro de téléphone.';
  @override
  String get guestMode => 'Mode Invité';
  @override
  String get guestMessage =>
      'Connectez-vous pour vous rapprocher des artistes, des histoires et du rythme du jeu.';
}

// Path: settings.avatar
class TranslationsSettingsAvatarFr extends TranslationsSettingsAvatarEn {
  TranslationsSettingsAvatarFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Modifier l\'Avatar';
  @override
  String get subtitle =>
      'Sélectionnez une image depuis votre caméra ou votre galerie pour définir votre nouvel avatar.';
  @override
  String get cropTitle => 'Recadrer l\'Avatar';
  @override
  String get camera => 'Caméra';
  @override
  String get gallery => 'Galerie';
  @override
  String selectError({required Object error}) => 'Échec de la sélection de l\'image: ${error}';
}

// Path: settings.account
class TranslationsSettingsAccountFr extends TranslationsSettingsAccountEn {
  TranslationsSettingsAccountFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Compte';
  @override
  String get password => 'Mot de passe';
  @override
  String get passwordSubtitle => 'Changer votre mot de passe';
  @override
  String get privacySecurity => 'Confidentialité et sécurité';
  @override
  String get changePassword => 'Changer le mot de passe';
  @override
  String get deleteTitle => 'Supprimer compte';
  @override
  String get deleteMessage =>
      'Êtes-vous sûr de supprimer votre compte? Cette action ne peut pas être annulée.';
}

// Path: settings.preferences
class TranslationsSettingsPreferencesFr extends TranslationsSettingsPreferencesEn {
  TranslationsSettingsPreferencesFr._(TranslationsFr root)
    : this._root = root,
      super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Préférences';
  @override
  String get language => 'Langue';
  @override
  String get darkMode => 'Mode sombre';
  @override
  String get darkModeOn => 'Activé';
  @override
  String get darkModeOff => 'Désactivé';
  @override
  String get notifications => 'Notifications';
  @override
  String get notificationsSubtitle => 'Activer les notifications push';
}

// Path: settings.support
class TranslationsSettingsSupportFr extends TranslationsSettingsSupportEn {
  TranslationsSettingsSupportFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Support';
  @override
  String get faq => 'FAQ';
  @override
  String get contactUs => 'Contactez-nous';
  @override
  String get contactSubtitle => 'Service commerciales et support';
  @override
  String get terms => 'Conditions générales';
  @override
  String get copyright => 'Conformité aux droits d\'auteur';
}

// Path: settings.followUs
class TranslationsSettingsFollowUsFr extends TranslationsSettingsFollowUsEn {
  TranslationsSettingsFollowUsFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Suivez-nous';
}

// Path: settings.logout
class TranslationsSettingsLogoutFr extends TranslationsSettingsLogoutEn {
  TranslationsSettingsLogoutFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Déconnexion';
  @override
  String get message => 'Êtes-vous sûr de vouloir vous déconnecter?';
  @override
  String get button => 'Se Déconnecter';
  @override
  String get confirm => 'Confirmer';
}

// Path: shared.common
class TranslationsSharedCommonFr extends TranslationsSharedCommonEn {
  TranslationsSharedCommonFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get kContinue => 'Continuer';
  @override
  String get cancel => 'Annuler';
  @override
  String get save => 'Enregistrer';
  @override
  String get edit => 'Modifier';
  @override
  String get delete => 'Supprimer';
  @override
  String get confirm => 'Confirmer';
  @override
  String get yes => 'Oui';
  @override
  String get no => 'Non';
  @override
  String get ok => 'OK';
  @override
  String get done => 'Terminé';
  @override
  String get close => 'Fermer';
  @override
  String get retry => 'Réessayer';
  @override
  String get loading => 'Chargement...';
  @override
  String get error => 'Erreur';
  @override
  String get success => 'Succès';
  @override
  String get warning => 'Alerte';
  @override
  String get info => 'Info';
  @override
  String get search => 'Rechercher';
}

// Path: shared.validation
class TranslationsSharedValidationFr extends TranslationsSharedValidationEn {
  TranslationsSharedValidationFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String required({required Object fieldName}) => '${fieldName} obligatoire';
  @override
  String invalidFormat({required Object fieldName}) => '${fieldName} a un format invalide';
  @override
  String tooShort({required Object fieldName, required Object minLength}) =>
      '${fieldName} doit contenir au moins ${minLength} caractères';
  @override
  String tooLong({required Object fieldName, required Object maxLength}) =>
      '${fieldName} ne doit pas dépasser ${maxLength} caractères';
  @override
  String lengthBetween({
    required Object fieldName,
    required Object minLength,
    required Object maxLength,
  }) => '${fieldName} doit contenir entre ${minLength} et ${maxLength} caractères';
  @override
  String get passwordsDoNotMatch => 'Les mots de passe sont différents';
  @override
  String numericOnly({required Object fieldName}) =>
      '${fieldName} doit uniquement contenir des chiffres';
  @override
  String passwordRegex({required Object fieldName}) =>
      '${fieldName} doit contenir 1 majuscule, 1 minuscule et 1 chiffre';
  @override
  String invalidPhone({required Object fieldName}) =>
      '${fieldName} est invalide pour le pays sélectionné';
  @override
  String invalidMobilePhone({required Object fieldName}) =>
      '${fieldName} doit être un numéro mobile valide pour le pays sélectionné';
}

// Path: shared.errors
class TranslationsSharedErrorsFr extends TranslationsSharedErrorsEn {
  TranslationsSharedErrorsFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get unknown => 'Une erreur s\'est produite. Veuillez réessayer.';
  @override
  String get network => 'Pas de connexion Internet. Veuillez vérifier votre réseau.';
  @override
  String get timeout => 'La demande a expiré. Veuillez réessayer.';
  @override
  String get serverError => 'Erreur du serveur. Veuillez réessayer plus tard.';
  @override
  String get unauthorized => 'Accès non autorisé. Veuillez vous reconnecter.';
  @override
  String get notFound => 'La ressource demandée est introuvable.';
  @override
  String get forbidden => 'Vous n\'avez pas la permission d\'accéder à cette ressource.';
}

// Path: shared.buttons
class TranslationsSharedButtonsFr extends TranslationsSharedButtonsEn {
  TranslationsSharedButtonsFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get signIn => 'Se connecter';
  @override
  String get signUp => 'S\'inscrire';
  @override
  String get signOut => 'Se déconnecter';
  @override
  String get submit => 'Soumettre';
  @override
  String get back => 'Retour';
  @override
  String get next => 'Suivant';
  @override
  String get continueAsGuest => 'Continuer Sans S\'inscrire';
}

// Path: shared.empty
class TranslationsSharedEmptyFr extends TranslationsSharedEmptyEn {
  TranslationsSharedEmptyFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get noData => 'Aucune donnée disponible';
  @override
  String get noResults => 'Aucun résultat trouvé';
  @override
  String get noContent => 'Aucun contenu à afficher';
}

// Path: shared.country
class TranslationsSharedCountryFr extends TranslationsSharedCountryEn {
  TranslationsSharedCountryFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sélectionner Pays';
  @override
  String get subtitle => 'Choisissez votre pays pour obtenir le bon indicatif régional.';
}

// Path: shared.navigation
class TranslationsSharedNavigationFr extends TranslationsSharedNavigationEn {
  TranslationsSharedNavigationFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get home => 'Accueil';
  @override
  String get discover => 'Découvrir';
  @override
  String get shows => 'Émissions';
  @override
  String get favorite => 'Favoris';
}

// Path: shows.empty
class TranslationsShowsEmptyFr extends TranslationsShowsEmptyEn {
  TranslationsShowsEmptyFr._(TranslationsFr root) : this._root = root, super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Aucune émission disponible';
  @override
  String get description => 'Revenez plus tard pour de nouvelles émissions';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
  dynamic _flatMapFunction(String path) {
    return switch (path) {
      'auth.signIn.title' => 'Connexion',
      'auth.signIn.emailLabel' => 'E-mail',
      'auth.signIn.passwordLabel' => 'Mot de passe',
      'auth.signIn.forgotPassword' => 'Mot de passe oublié?',
      'auth.signIn.submitButton' => 'Se connecter',
      'auth.signIn.noAccount' => 'Vous n\'avez pas de compte?',
      'auth.signIn.signUpLink' => 'S\'inscrire',
      'auth.signIn.orContinueWith' => 'Ou Continuer Avec',
      'auth.signUp.title' => 'Inscription',
      'auth.signUp.emailLabel' => 'E-mail',
      'auth.signUp.usernameLabel' => 'Nom d\'utilisateur',
      'auth.signUp.passwordLabel' => 'Mot de passe',
      'auth.signUp.confirmPasswordLabel' => 'Confirmer le mot de passe',
      'auth.signUp.submitButton' => 'S\'inscrire',
      'auth.signUp.haveAccount' => 'Vous avez déjà un compte?',
      'auth.signUp.signInLink' => 'Se connecter',
      'auth.termsAndConditions.prefix' =>
        'En continuant, vous reconnaissez que vous comprenez et acceptez les ',
      'auth.termsAndConditions.termsLink' => 'Conditions Générales',
      'auth.termsAndConditions.and' => ' et la ',
      'auth.termsAndConditions.privacyLink' => 'Politique de Confidentialité',
      'auth.forgotPassword.title' => 'Mot De Passe Oublié',
      'auth.forgotPassword.subtitle' =>
        'Entrez l\'e-mail associé à votre compte. Nous vous enverrons un code de vérification pour réinitialiser votre mot de passe.',
      'auth.forgotPassword.emailLabel' => 'E-mail',
      'auth.forgotPassword.submitButton' => 'Envoyer Le Code',
      'auth.forgotPassword.backToSignIn' => 'Retour à la connexion',
      'auth.forgotPassword.success' =>
        'Code de vérification envoyé avec succès! Veuillez vérifier votre e-mail.',
      'auth.resetPassword.title' => 'Réinitialiser Mot De Passe',
      'auth.resetPassword.subtitle' =>
        'Entrez votre nouveau mot de passe ci-dessous pour réinitialiser le mot de passe de votre compte.',
      'auth.resetPassword.passwordLabel' => 'Nouveau mot de passe',
      'auth.resetPassword.confirmPasswordLabel' => 'Confirmer le mot de passe',
      'auth.resetPassword.submitButton' => 'Réinitialiser Mot De Passe',
      'auth.resetPassword.success' =>
        'Mot de passe réinitialisé avec succès! Vous pouvez maintenant vous connecter avec votre nouveau mot de passe.',
      'auth.verifyOtp.title' => 'Vérifiez Votre E-mail',
      'auth.verifyOtp.subtitle' =>
        'Veuillez entrer le code de vérification à 6 chiffres que nous avons envoyé à ',
      'auth.verifyOtp.yourEmail' => 'votre e-mail',
      'auth.verifyOtp.codeLabel' => 'Code de vérification',
      'auth.verifyOtp.submitButton' => 'Vérifier',
      'auth.verifyOtp.success' =>
        'Compte vérifié avec succès! Veuillez entrer votre nouveau mot de passe.',
      'auth.verifyOtp.completed' =>
        'La vérification de votre compte est terminée! Vous êtes prêt à continuer.',
      'auth.resendOtp.countdown' => ({required Object seconds}) => ' dans ${seconds} secondes',
      'auth.resendOtp.resendCode' => 'Vous n\'avez pas reçu le code?',
      'auth.resendOtp.resendButton' => 'Renvoyer',
      'auth.resendOtp.success' =>
        'Nouveau code de vérification envoyé avec succès! Veuillez vérifier votre e-mail.',
      'auth.cacheError.setUser' =>
        ({required Object error}) =>
            'Échec lors de la sauvegarde des données utilisateur: ${error}',
      'auth.cacheError.getUser' =>
        ({required Object error}) =>
            'Échec lors de la récupération des données utilisateur: ${error}',
      'auth.cacheError.setToken' =>
        ({required Object error}) => 'Échec lors de la sauvegarde du token: ${error}',
      'auth.cacheError.getToken' =>
        ({required Object error}) => 'Échec lors de la récupération du token: ${error}',
      'auth.cacheError.clearToken' =>
        ({required Object error}) => 'Échec lors de la suppression du token: ${error}',
      'auth.cacheError.watchUser' =>
        ({required Object error}) => 'Échec lors de la surveillance de l\'utilisateur: ${error}',
      'auth.facebookError.signInCancelled' =>
        'La connexion Facebook a été annulée par l\'utilisateur.',
      'auth.facebookError.unexpected' =>
        ({required Object error}) => 'Erreur inattendue de connexion Facebook: ${error}',
      'auth.googleError.unexpected' =>
        ({required Object error}) => 'Erreur inattendue de connexion Google: ${error}',
      'auth.googleError.initFailed' =>
        ({required Object error}) => 'Échec de l\'initialisation de connexion Google: ${error}',
      'connectivity.noInternet' => 'Pas de connexion internet',
      'connectivity.internetRestored' => 'Internet rétabli',
      'country.cacheError.setCountry' =>
        ({required Object error}) => 'Échec lors de la sauvegarde des données du pays: ${error}',
      'country.cacheError.getCountry' =>
        ({required Object error}) => 'Échec lors de la récupération des données du pays: ${error}',
      'country.cacheError.clearCountry' =>
        ({required Object error}) => 'Échec lors de la suppression des données du pays: ${error}',
      'country.cacheError.watchCountry' =>
        ({required Object error}) => 'Échec lors de la surveillance des données du pays: ${error}',
      'discover.title' => 'Découvrir',
      'discover.search' => 'Rechercher',
      'discover.searchPlaceholder' => 'Rechercher des artistes, des chansons ou du contenu...',
      'discover.categories' => 'Catégories',
      'discover.artists' => 'Artistes',
      'discover.trending' => 'Tendances actuelles',
      'discover.empty.title' => 'Aucun résultat',
      'discover.empty.description' => 'Essayez de rechercher autre chose',
      'favorite.title' => 'Favoris',
      'favorite.all' => 'Tous les favoris',
      'favorite.artists' => 'Artistes favoris',
      'favorite.songs' => 'Chansons favorites',
      'favorite.shows' => 'Émissions favorites',
      'favorite.empty.title' => 'Pas encore de favoris',
      'favorite.empty.description' => 'Commencez à ajouter du contenu à vos favoris',
      'home.title' => 'Accueil',
      'home.welcome' => 'Bienvenue sur 116',
      'home.feed' => 'Fil d\'actualité',
      'home.trending' => 'Tendances',
      'home.latest' => 'Derniers',
      'home.empty.title' => 'Pas encore de contenu',
      'home.empty.description' => 'Revenez plus tard pour du nouveau contenu',
      'onboarding.skip' => 'Sauter',
      'onboarding.signInOrSignUp' => 'Connexion / Inscription',
      'onboarding.pages.0.title' => ({required Object app}) => 'Bienvenue Sur ${app}',
      'onboarding.pages.0.description' =>
        'Découvrez des histoires, cultures et artistes qui façonnent le son d’une nouvelle génération, de la rue à la scène mondiale.',
      'onboarding.pages.1.title' => 'Au-delà De La Musique',
      'onboarding.pages.1.description' =>
        'Restez informé avec des actualités, magazines et analyses approfondies sur les personnes et tendances qui célèbrent la créativité.',
      'onboarding.pages.2.title' => 'Émissions Et Médias Exclusifs',
      'onboarding.pages.2.description' =>
        'Vivez la culture urbaine à travers des interviews, documentaires, podcasts, sessions studio brutes, etc.',
      'onboarding.pages.3.title' => 'Faites Partie De La Culture',
      'onboarding.pages.3.description' =>
        'Likez, commentez et partagez vos artistes préférés. Découvrez de nouveaux talents et restez connecté au rythme de la musique.',
      'preferences.title' => 'Réglez Vos Préférences',
      'preferences.subtitle' => 'Choisissez votre thème et vos paramètres de langue préférés.',
      'preferences.theme.light' => 'Clair',
      'preferences.theme.dark' => 'Sombre',
      'preferences.language.english' => 'Anglais',
      'preferences.language.french' => 'Français',
      'preferences.language.title' => 'Sélectionner Langue',
      'preferences.language.subtitle' => 'Choisissez votre langue préférée',
      'preferences.cacheError.getPreferences' =>
        ({required Object error}) => 'Échec de la récupération des préférences: ${error}',
      'preferences.cacheError.setPreferences' =>
        ({required Object error}) => 'Échec de la sauvegarde des préférences: ${error}',
      'preferences.cacheError.clearPreferences' =>
        ({required Object error}) => 'Échec de la suppression des préférences: ${error}',
      'session.cacheError.setSession' =>
        ({required Object error}) => 'Échec lors de la sauvegarde de la session : ${error}',
      'session.cacheError.getSession' =>
        ({required Object error}) => 'Échec lors de la récupération de la session : ${error}',
      'session.cacheError.clearSession' =>
        ({required Object error}) => 'Échec lors de la suppression de la session : ${error}',
      'settings.title' => 'Paramètres',
      'settings.profile.title' => 'Profil',
      'settings.profile.editProfile' => 'Modifier Profil',
      'settings.profile.username' => 'Nom d\'utilisateur',
      'settings.profile.email' => 'E-mail',
      'settings.profile.telephone' => 'Téléphone',
      'settings.profile.updateSuccess' => 'Profil mis à jour avec succès!',
      'settings.profile.updateSubtitle' =>
        'Mettez à jour les détails du profil, en particulier votre nom d\'utilisateur et votre numéro de téléphone.',
      'settings.profile.guestMode' => 'Mode Invité',
      'settings.profile.guestMessage' =>
        'Connectez-vous pour vous rapprocher des artistes, des histoires et du rythme du jeu.',
      'settings.avatar.title' => 'Modifier l\'Avatar',
      'settings.avatar.subtitle' =>
        'Sélectionnez une image depuis votre caméra ou votre galerie pour définir votre nouvel avatar.',
      'settings.avatar.cropTitle' => 'Recadrer l\'Avatar',
      'settings.avatar.camera' => 'Caméra',
      'settings.avatar.gallery' => 'Galerie',
      'settings.avatar.selectError' =>
        ({required Object error}) => 'Échec de la sélection de l\'image: ${error}',
      'settings.account.title' => 'Compte',
      'settings.account.password' => 'Mot de passe',
      'settings.account.passwordSubtitle' => 'Changer votre mot de passe',
      'settings.account.privacySecurity' => 'Confidentialité et sécurité',
      'settings.account.changePassword' => 'Changer le mot de passe',
      'settings.account.deleteTitle' => 'Supprimer compte',
      'settings.account.deleteMessage' =>
        'Êtes-vous sûr de supprimer votre compte? Cette action ne peut pas être annulée.',
      'settings.preferences.title' => 'Préférences',
      'settings.preferences.language' => 'Langue',
      'settings.preferences.darkMode' => 'Mode sombre',
      'settings.preferences.darkModeOn' => 'Activé',
      'settings.preferences.darkModeOff' => 'Désactivé',
      'settings.preferences.notifications' => 'Notifications',
      'settings.preferences.notificationsSubtitle' => 'Activer les notifications push',
      'settings.support.title' => 'Support',
      'settings.support.faq' => 'FAQ',
      'settings.support.contactUs' => 'Contactez-nous',
      'settings.support.contactSubtitle' => 'Service commerciales et support',
      'settings.support.terms' => 'Conditions générales',
      'settings.support.copyright' => 'Conformité aux droits d\'auteur',
      'settings.followUs.title' => 'Suivez-nous',
      'settings.logout.title' => 'Déconnexion',
      'settings.logout.message' => 'Êtes-vous sûr de vouloir vous déconnecter?',
      'settings.logout.button' => 'Se Déconnecter',
      'settings.logout.confirm' => 'Confirmer',
      'shared.common.kContinue' => 'Continuer',
      'shared.common.cancel' => 'Annuler',
      'shared.common.save' => 'Enregistrer',
      'shared.common.edit' => 'Modifier',
      'shared.common.delete' => 'Supprimer',
      'shared.common.confirm' => 'Confirmer',
      'shared.common.yes' => 'Oui',
      'shared.common.no' => 'Non',
      'shared.common.ok' => 'OK',
      'shared.common.done' => 'Terminé',
      'shared.common.close' => 'Fermer',
      'shared.common.retry' => 'Réessayer',
      'shared.common.loading' => 'Chargement...',
      'shared.common.error' => 'Erreur',
      'shared.common.success' => 'Succès',
      'shared.common.warning' => 'Alerte',
      'shared.common.info' => 'Info',
      'shared.common.search' => 'Rechercher',
      'shared.validation.required' => ({required Object fieldName}) => '${fieldName} obligatoire',
      'shared.validation.invalidFormat' =>
        ({required Object fieldName}) => '${fieldName} a un format invalide',
      'shared.validation.tooShort' =>
        ({required Object fieldName, required Object minLength}) =>
            '${fieldName} doit contenir au moins ${minLength} caractères',
      'shared.validation.tooLong' =>
        ({required Object fieldName, required Object maxLength}) =>
            '${fieldName} ne doit pas dépasser ${maxLength} caractères',
      'shared.validation.lengthBetween' =>
        ({required Object fieldName, required Object minLength, required Object maxLength}) =>
            '${fieldName} doit contenir entre ${minLength} et ${maxLength} caractères',
      'shared.validation.passwordsDoNotMatch' => 'Les mots de passe sont différents',
      'shared.validation.numericOnly' =>
        ({required Object fieldName}) => '${fieldName} doit uniquement contenir des chiffres',
      'shared.validation.passwordRegex' =>
        ({required Object fieldName}) =>
            '${fieldName} doit contenir 1 majuscule, 1 minuscule et 1 chiffre',
      'shared.validation.invalidPhone' =>
        ({required Object fieldName}) => '${fieldName} est invalide pour le pays sélectionné',
      'shared.validation.invalidMobilePhone' =>
        ({required Object fieldName}) =>
            '${fieldName} doit être un numéro mobile valide pour le pays sélectionné',
      'shared.errors.unknown' => 'Une erreur s\'est produite. Veuillez réessayer.',
      'shared.errors.network' => 'Pas de connexion Internet. Veuillez vérifier votre réseau.',
      'shared.errors.timeout' => 'La demande a expiré. Veuillez réessayer.',
      'shared.errors.serverError' => 'Erreur du serveur. Veuillez réessayer plus tard.',
      'shared.errors.unauthorized' => 'Accès non autorisé. Veuillez vous reconnecter.',
      'shared.errors.notFound' => 'La ressource demandée est introuvable.',
      'shared.errors.forbidden' => 'Vous n\'avez pas la permission d\'accéder à cette ressource.',
      'shared.buttons.signIn' => 'Se connecter',
      'shared.buttons.signUp' => 'S\'inscrire',
      'shared.buttons.signOut' => 'Se déconnecter',
      'shared.buttons.submit' => 'Soumettre',
      'shared.buttons.back' => 'Retour',
      'shared.buttons.next' => 'Suivant',
      'shared.buttons.continueAsGuest' => 'Continuer Sans S\'inscrire',
      'shared.empty.noData' => 'Aucune donnée disponible',
      'shared.empty.noResults' => 'Aucun résultat trouvé',
      'shared.empty.noContent' => 'Aucun contenu à afficher',
      'shared.country.title' => 'Sélectionner Pays',
      'shared.country.subtitle' => 'Choisissez votre pays pour obtenir le bon indicatif régional.',
      'shared.navigation.home' => 'Accueil',
      'shared.navigation.discover' => 'Découvrir',
      'shared.navigation.shows' => 'Émissions',
      'shared.navigation.favorite' => 'Favoris',
      'shows.title' => 'Émissions',
      'shows.allShows' => 'Toutes les émissions',
      'shows.episodes' => 'Épisodes',
      'shows.watchNow' => 'Regarder maintenant',
      'shows.empty.title' => 'Aucune émission disponible',
      'shows.empty.description' => 'Revenez plus tard pour de nouvelles émissions',
      _ => null,
    };
  }
}
