/// Defines the supported authentication providers for a user.
///
/// Domain enum representing the authentication provider type including
/// local credentials, Google OAuth, and Facebook OAuth.
///
/// Each enum value has a PascalCase representation that matches the
/// C# backend enum format for API communication.
enum AuthProvider {
  local("Local"),
  google("Google"),
  facebook("Facebook");

  final String value;
  const AuthProvider(this.value);
}
