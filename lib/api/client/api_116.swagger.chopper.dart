// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'api_116.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$Api116 extends Api116 {
  _$Api116([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = Api116;

  @override
  Future<Response<AdminVerifyOtpResponse>> _AdminVerifyOtp({
    required AdminVerifyOtpRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Verifies the OTP (One-Time Password) code sent to the admin user\'s email for various purposes.
    The admin user must verify their account within the OTP expiration window to gain full access.
    

    **Supported OTP Purposes:**

    - **Email Verification**: During admin account registration

    - **Account Recovery**: For account recovery processes

    

    This endpoint performs the following operations: 

    - Validates the OTP code format (6-digit numeric)

    - Checks if the admin user exists and is not already verified

    - Validates the OTP against the database (not expired, not used, under attempt limit)

    - Marks the admin user account as verified upon successful validation

    - Invalidates all remaining OTPs for the admin user

    

    **Authentication Requirements:**

    - No authentication required; open to admin users with unverified accounts

    

    **Security Features:**

    - OTP expiration (60 minutes)

    - Maximum 3 verification attempts per OTP

    - Single-use OTP codes

    - Automatic cleanup of expired/used OTPs

    - Admin role verification

    

    **Response Codes:**

    - Returns 200 OK with verification success status

    - Returns 400 Bad Request for invalid OTP code format

    - Returns 401 Unauthorized for expired OTP

    - Returns 403 Forbidden for maximum attempts reached

    - Returns 404 Not Found for no valid OTP found

    - Returns 409 Conflict if account is already verified

    

    **Error Handling:**

    - BadRequestException (400): Invalid OTP code format or value

    - AuthenticationException (401): OTP has expired

    - AuthorizationException (403): Maximum verification attempts reached

    - NotFoundException (404): No valid OTP found for the admin user.''',
      summary: 'Verify OTP code for admin account activation',
      operationId: 'AdminVerifyOtp',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/auth/verify-otp');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<AdminVerifyOtpResponse, AdminVerifyOtpResponse>(
      $request,
    );
  }

  @override
  Future<Response<AdminSignOutResponse>> _AdminSignOut({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Signs out the currently authenticated admin user by updating their login status.
    After successful sign-out, the client should discard the JWT token.
    

    This endpoint performs secure sign-out by:

    - Validating JWT token authentication

    - Verifying account is active (not suspended/banned)

    - Ensuring user has admin or super admin role

    - Updating user login status in the database

    - Allowing unverified accounts to sign out

    

    **Authentication Requirements:**

    - Valid JWT Bearer token

    - Account must be active (not suspended)

    - User must have Admin or SuperAdmin role

    - Verification status is not required for sign-out

    

    **Security Features:**

    - Only active admin accounts can perform sign-out

    - Prevents unnecessary database updates if already logged out

    - Always returns success for consistent UX

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive accounts or insufficient permissions

    

    **Process Flow:**

    1. Extracts admin user ID from JWT token

    2. Validates account is active

    3. Verifies admin/super admin role authorization

    4. Updates login status if currently logged in

    5. Returns success response.''',
      summary: 'Sign out the authenticated admin user',
      operationId: 'AdminSignOut',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/auth/sign-out');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<AdminSignOutResponse, AdminSignOutResponse>($request);
  }

  @override
  Future<Response<AdminResetPasswordResponse>> _AdminResetPassword({
    required AdminResetPasswordRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Resets an admin user\'s password after validating the OTP code sent during the forgot password process.
    After successful password reset, the admin user can login with their new password.
    

    This endpoint performs the following operations:

    - Validates the OTP code format and authenticity

    - Checks if the admin user exists and is active

    - Validates the OTP against the database (not expired, not used, under attempt limit)

    - Hashes the new password using secure algorithms

    - Updates the admin user\'s password in the database

    - Invalidates all remaining password reset OTPs for the user

    

    **Authentication Requirements:**

    - No authentication required; open to admin users with valid OTP codes

    - Admin user account must be active

    

    **Security Features:**

    - OTP expiration (60 minutes)

    - Maximum 3 verification attempts per OTP

    - Single-use OTP codes

    - Secure password hashing (PBKDF2 with SHA-256)

    - Automatic cleanup of expired/used OTPs

    - Password validation enforced by validator

    

    **Request Requirements:**

    - Valid email address format

    - Valid OTP code (6-digit numeric)

    - New password meeting security requirements

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 400 Bad Request for invalid input or inactive account

    - Returns 401 Unauthorized for expired OTP

    - Returns 403 Forbidden for max attempts reached

    - Returns 404 Not Found for no valid OTP found or user not found

    

    **Error Handling:**

    - BadRequestException (400): Invalid input format, inactive account, or invalid OTP

    - AuthenticationException (401): OTP has expired

    - AuthorizationException (403): Maximum verification attempts reached

    - NotFoundException (404): No valid OTP found or user not found

    

    **Process Flow:**

    1. Validates email format and password requirements

    2. Finds admin user by email address

    3. Validates account is active

    4. Validates OTP code for password reset purpose

    5. Hashes new password securely

    6. Updates admin user\'s password

    7. Marks OTP as used and invalidates remaining OTPs

    8. Returns success response.''',
      summary: 'Reset admin user password using OTP verification',
      operationId: 'AdminResetPassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/auth/reset-password');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<AdminResetPasswordResponse, AdminResetPasswordResponse>(
      $request,
    );
  }

  @override
  Future<Response<AdminResendOtpResponse>> _AdminResendOtp({
    required AdminResendOtpRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Resends a new OTP verification code for admin users by invalidating existing OTPs and generating a fresh one.
    This endpoint enables admins to request a new verification code when:
    

    - The original OTP wasn\'t received

    - The previous OTP has expired

    - There were issues with email delivery

    - Maximum attempts were reached on the previous OTP

    

    **Request Requirements:**

    - Valid admin email address format

    - Valid OTP purpose (EmailVerification, PasswordReset, TwoFactorAuthentication, AccountRecovery)

    - User must have admin privileges

    - Account must be active

    

    **Security Features:**

    - Admin role verification

    - Account active status validation

    - Automatic invalidation of existing OTPs for the specified purpose

    - New OTP generation with fresh expiration time

    

    **Response Codes:**

    - Returns 200 OK with success status when OTP is resent

    - Returns 400 Bad Request for invalid email format or purpose

    - Returns 404 Not Found when admin user doesn\'t exist

    - Returns 403 Forbidden when user lacks admin privileges

    

    **Process Flow:**

    1. Validates email format and OTP purpose

    2. Verifies admin user exists and has admin role

    3. Checks account is active and verified

    4. Invalidates all existing OTPs for the specified purpose

    5. Generates new OTP with fresh expiration

    6. Returns success response

    

    **Supported OTP Purposes:**

    - EmailVerification: For email address verification

    - PasswordReset: For password reset requests

    - TwoFactorAuthentication: For 2FA setup/verification

    - AccountRecovery: For account recovery processes''',
      summary: 'Resend OTP verification code for admin users',
      operationId: 'AdminResendOtp',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/auth/resend-otp');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<AdminResendOtpResponse, AdminResendOtpResponse>(
      $request,
    );
  }

  @override
  Future<Response<AdminLoginResponse>> _AdminLogin({
    required AdminLoginRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Authenticates an admin user using email and password credentials.
    The returned JWT token includes admin-specific claims for accessing administrative endpoints.
    

    This endpoint performs enhanced authentication by:

    - Validating email and password

    - Verifying the account is active and verified

    - Checking for admin role privileges (Admin or SuperAdmin)

    - Generating JWT token with appropriate admin claims

    - Recording the login activity

    

    **Authentication Requirements:**

    - Valid email and password combination

    - Account must be active and verified

    - User must have Admin or SuperAdmin role assigned

    

    **Security Features:**

    - Password verification using secure hashing (bcrypt)

    - Role-based access validation

    - Login activity tracking

    - Enhanced JWT claims for admin operations

    

    **Response Codes:**

    - Returns 200 OK with user info and JWT token on successful authentication

    - Returns 400 Bad Request for invalid email format or incorrect password

    - Returns 401 Unauthorized when user lacks admin privileges (Admin/SuperAdmin role required)

    - Returns 403 Forbidden when user account is inactive or disabled

    - Returns 404 Not Found when no user exists with the provided email

    

    **Error Handling:**

    - AuthenticationException (401): Missing admin role - user authenticated but lacks Admin/SuperAdmin privileges

    - AuthorizationException (403): Account inactive - user exists but account is disabled/suspended

    - BadRequestException (400): Invalid password - email exists but password is incorrect

    - NotFoundException (404): User not found - no account exists with the provided email.''',
      summary: 'Authenticate admin and return JWT token with admin claims',
      operationId: 'AdminLogin',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/auth/login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<AdminLoginResponse, AdminLoginResponse>($request);
  }

  @override
  Future<Response<AdminForgotPasswordResponse>> _AdminForgotPassword({
    required AdminForgotPasswordRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Initiates the password reset process by generating an OTP for the specified admin email address.

    The generated OTP can be used with the verify-otp endpoint to proceed with password reset.
    This endpoint follows security best practices by:
    

    - Always returning success to prevent user enumeration attacks

    - Only generating OTP for valid and active admin accounts

    - Silently handling cases where email doesn\'t exist or account is inactive

    

    **Request Requirements:**

    - Valid email address format

    - Email must belong to an existing and active admin account

    

    **Security Features:**

    - User enumeration protection (consistent response regardless of email existence)

    - Account status validation (active admin accounts only)

    - OTP generation with expiration time

    

    **Response Codes:**

    - Returns 200 OK with success status (always true for security) and the email address

    - Returns 400 Bad Request for invalid email format

    

    **Process Flow:**

    1. Validates email format

    2. Checks if admin user exists and is active

    3. Generates OTP for password reset

    4. Returns success response (regardless of actual outcome).''',
      summary: 'Initiate password reset process for existing admin users',
      operationId: 'AdminForgotPassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/auth/forgot-password');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<AdminForgotPasswordResponse, AdminForgotPasswordResponse>(
          $request,
        );
  }

  @override
  Future<Response<AdminChangePasswordResponse>> _AdminChangePassword({
    required AdminChangePasswordRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Changes an admin user\'s password after verifying their current password for security.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies admin user account is active

    - Validates the current password against stored hash

    - Ensures new password is different from current password

    - Hashes the new password using secure algorithms

    - Updates the admin user\'s password in the database

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - Only admin role users can change their password

    

    **Security Features:**

    - Current password verification for authorization

    - Prevention of reusing the same password

    - Secure password hashing (PBKDF2 with SHA-256)

    - Strong password validation enforced by validator

    - Account status validation before password change

    

    **Request Requirements:**

    - Valid old password for verification

    - New password meeting security requirements

    - User must be authenticated with valid JWT token

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 400 Bad Request for invalid old password or same password

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive accounts or insufficient permissions

    - Returns 404 Not Found for user not found

    - Returns 409 Conflict for new password same as old

    

    **Error Handling:**

    - BadRequestException (400): Invalid old password or inactive account

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Account not active or insufficient permissions

    - NotFoundException (404): User not found

    - ConflictException (409): New password same as current password

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Validates old password and new password requirements

    3. Finds admin user by ID and validates account status

    4. Verifies current password matches provided old password

    5. Ensures new password is different from current password

    6. Hashes new password securely

    7. Updates admin user\'s password in database

    8. Returns success response.''',
      summary: 'Change admin user password with current password verification',
      operationId: 'AdminChangePassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/auth/change-password');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<AdminChangePasswordResponse, AdminChangePasswordResponse>(
          $request,
        );
  }

  @override
  Future<Response<AdminGetOwnProfileResponse>> _AdminGetOwnProfile({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the complete profile information for the currently authenticated admin user.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies admin user account is active

    - Retrieves complete admin user information including roles and permissions

    - Fetches admin user avatar file information if available

    - Returns comprehensive admin user profile data

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - User must have Admin or SuperAdmin role

    

    **Returned Information:**

    - Basic user details (ID, email, username, verification status)

    - User roles and associated permissions

    - Avatar file information (if available)

    - Account status and activity information

    - Authentication provider information (local/social)

    

    **Security Features:**

    - Admin user can only access their own profile information

    - Account status validation before profile retrieval

    - Comprehensive permission and role information for authorization

    - Avatar file security through proper file service integration

    

    **Response Codes:**

    - Returns 200 OK with complete admin user profile data

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for insufficient permissions or inactive accounts

    - Returns 404 Not Found for user not found

    

    **Error Handling:**

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Insufficient permissions or account inactive

    - NotFoundException (404): User not found

    

    **Use Cases:**

    - Display admin user profile information in admin applications

    - Determine admin user permissions for UI/UX customization

    - Validate admin user account status

    - Access avatar and display admin user information

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Finds admin user by ID and validates account status

    3. Retrieves admin user roles and permissions

    4. Fetches avatar file information if available

    5. Maps complete user data to response DTO

    6. Returns comprehensive admin user profile information''',
      summary:
          'Retrieve authenticated admin user\'s complete profile information',
      operationId: 'AdminGetOwnProfile',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::profile"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/profile');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<AdminGetOwnProfileResponse, AdminGetOwnProfileResponse>(
      $request,
    );
  }

  @override
  Future<Response<AdminUpdateOwnProfileResponse>> _AdminUpdateOwnProfile({
    required AdminUpdateOwnProfileRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the profile information for the currently authenticated admin user.

    This endpoint requires admin user authentication - only logged-in admin users can update their own profile,
    providing secure profile management for authenticated admin users
    while maintaining data integrity and security requirements.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies admin user account is active

    - Validates uniqueness for username and phone number if being updated

    - Updates admin user profile information selectively

    - Returns updated admin user profile data

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - Only logged-in admin users can update their profile

    - Admin or SuperAdmin role required

    

    **Updateable Information:**

    - Username (must be unique across the system)

    - Phone number with country information

    - Country details (name, flag, ISO code, dial code)

    

    **Restrictions:**

    - Email updates are not allowed for admin users (security restriction)

    

    **Security Features:**

    - Admin user can only update their own profile information

    - Account status validation before updates

    - Uniqueness validation for username and phone

    - Email updates prohibited for admin users

    

    **Response Codes:**

    - Returns 200 OK with updated admin user profile data

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive accounts or insufficient permissions

    - Returns 404 Not Found for user not found

    - Returns 409 Conflict for duplicate username/phone

    

    **Error Handling:**

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Account not active or insufficient permissions

    - NotFoundException (404): User not found

    - ConflictException (409): Username or phone already exists

    

    **Use Cases:**

    - Update admin profile information in administration panels

    - Change username for admin branding

    - Update contact information and location details

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Finds admin user by ID and validates account status

    3. Validates uniqueness for updated fields

    4. Updates admin user profile information selectively

    5. Saves changes to database

    6. Returns updated admin user profile data

    

    **Important Notes:**

    - Email updates are restricted for admin users

    - Phone number updates include country information

    - Only provided fields are updated (partial updates supported)

    - All validations are performed before any updates.''',
      summary: 'Update authenticated admin user\'s own profile information',
      operationId: 'AdminUpdateOwnProfile',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::profile"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/profile');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<AdminUpdateOwnProfileResponse, AdminUpdateOwnProfileResponse>(
          $request,
        );
  }

  @override
  Future<Response<AdminUpdateAvatarResponse>> _AdminUpdateAvatar({
    required AdminUpdateAvatarRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the authenticated admin user\'s avatar by providing a new avatar URL.
    This endpoint allows logged-in admin users to update their profile avatar from an external URL.
    The system will download and store the avatar file, and automatically delete any previous avatar.
    

    Admin users only need to have active accounts (no verification requirement).
    

    **Authentication Requirements:**

    - Admin user must be logged in (JWT token required)

    - Must have Admin or SuperAdmin role

    - Account must be active

    

    **Request Requirements:**

    - Valid avatar URL (required)

    - URL must be accessible and point to a valid image

    - Maximum URL length: 2048 characters

    

    **Avatar Management:**

    - Previous avatar is automatically deleted when updating

    - New avatar is downloaded and stored in the system

    - Supports common image formats (JPEG, PNG, GIF, WebP)

    - Smart deduplication: if the same URL is provided again, no duplicate download occurs

    

    **Response Codes:**

    - Returns 200 OK with updated admin user information including new avatar

    - Returns 400 Bad Request for invalid avatar URL format

    - Returns 401 Unauthorized for unauthenticated requests

    - Returns 403 Forbidden for non-admin users or inactive accounts

    - Returns 404 Not Found when admin user doesn\'t exist

    

    **Security Features:**

    - Only authenticated admin users can update their own avatar

    - Role-based authorization (Admin/SuperAdmin required)

    - Account activity verification (active accounts only)

    - URL validation to ensure proper format

    - Automatic cleanup of old avatar files

    

    **Process Flow:**

    1. Validates admin authentication and account status

    2. Validates the provided avatar URL format

    3. Downloads the new avatar from the URL

    4. Deletes the previous avatar file (if exists)

    5. Updates admin user record with new avatar reference

    6. Returns updated admin user information with avatar details''',
      summary: 'Update admin user avatar',
      operationId: 'AdminUpdateAvatar',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::profile"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/profile/avatar');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<AdminUpdateAvatarResponse, AdminUpdateAvatarResponse>(
      $request,
    );
  }

  @override
  Future<Response<PublicVerifyOtpResponse>> _PublicVerifyOtp({
    required PublicVerifyOtpRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Verifies the OTP (One-Time Password) code sent to the user\'s email for various purposes.
    The user must verify their account within the OTP expiration window to gain full access.
    

    **Supported OTP Purposes:**

    - **Email Verification**: During user account registration

    - **Account Recovery**: For account recovery processes

    

    This endpoint performs the following operations:

    - Validates the OTP code format (6-digit numeric)

    - Checks if the user exists and is not already verified

    - Validates the OTP against the database (not expired, not used, under attempt limit)

    - Marks the user account as verified upon successful validation

    - Invalidates all remaining OTPs for the user

    

    **Authentication Requirements:**

    - No authentication required; open to users with unverified accounts

    

    **Security Features:**

    - OTP expiration (60 minutes)

    - Maximum 3 verification attempts per OTP

    - Single-use OTP codes

    - Automatic cleanup of expired/used OTPs

    

    **Response Codes:**

    - Returns 200 OK with verification success status

    - Returns 400 Bad Request for invalid OTP code format

    - Returns 401 Unauthorized for expired OTP

    - Returns 403 Forbidden for maximum attempts reached

    - Returns 404 Not Found for no valid OTP found

    - Returns 409 Conflict if account is already verified

    

    **Error Handling:**

    - BadRequestException (400): Invalid OTP code format or value

    - AuthenticationException (401): OTP has expired

    - AuthorizationException (403): Maximum verification attempts reached

    - NotFoundException (404): No valid OTP found for the user

    - ConflictException (409): User account is already verified.''',
      summary: 'Verify OTP code for account activation',
      operationId: 'PublicVerifyOtp',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/verify-otp');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<PublicVerifyOtpResponse, PublicVerifyOtpResponse>(
      $request,
    );
  }

  @override
  Future<Response<PublicSocialLoginResponse>> _PublicSocialLogin({
    required PublicSocialLoginRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Authenticates a user through external social providers (Google or Facebook).

    Social users are automatically verified and granted visitor role permissions.
    Avatar images from social providers are downloaded and stored locally.
    

    This endpoint performs the following operations:

    - Validates social provider data (email, username, avatar URL, provider)

    - Checks for existing local account conflicts

    - Creates new user account or updates existing social user

    - Downloads and stores avatar from social provider URL

    - Assigns visitor role to new users

    - Marks social users as verified and active

    

    **Authentication Requirements:**

    - No authentication required; open to the public for social login

    

    **Supported Providers:**

    - Google OAuth

    - Facebook OAuth

    

    **Security Features:**

    - Prevents social login if local account exists with same email

    - Downloads external avatars to prevent hotlinking

    - Automatically verifies social accounts (trusted providers)

    - Updates user login status

    

    **Response Codes:**

    - Returns 200 OK with user info and JWT token

    - Returns 400 Bad Request for invalid provider or malformed data

    - Returns 409 Conflict if local account exists with same email

    

    **Error Handling:**

    - BadRequestException (400): Invalid provider or malformed social data

    - ConflictException (409): Local account already exists with email.''',
      summary: 'Authenticate user via social provider',
      operationId: 'PublicSocialLogin',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/social-login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<PublicSocialLoginResponse, PublicSocialLoginResponse>(
      $request,
    );
  }

  @override
  Future<Response<PublicSignUpResponse>> _PublicSignUp({
    required PublicSignUpRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Registers a new public user by creating an account with the provided details.

    The created user account will initially have the Visitor role and related permissions,
    granting basic public access until further elevated by admins.
    

    This endpoint performs the following operations:

    - Validates signup data (email, username, password, etc.)

    - Ensures the email/username is unique

    - Hashes the password using secure algorithms (bcrypt)

    - Creates a new public user account in the system

    - Triggers optional account verification (email/SMS)

    

    **Authentication Requirements:**

    - No authentication required; open to the public for account creation

    

    **Security Features:**

    - Password securely hashed before storage

    - Uniqueness checks on email and username

    - Optional verification workflow (e.g., email confirmation)

    

    **Response Codes:**

    - Returns 201 Created with newly created user info (excluding sensitive data)

    - Returns 400 Bad Request for invalid input or weak password

    - Returns 409 Conflict if email/username already exists

    

    **Error Handling:**

    - BadRequestException (400): Invalid signup data (missing/invalid fields, weak password)

    - ConflictException (409): Email or username already in use.''',
      summary: 'Register a new public user account',
      operationId: 'PublicSignUp',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/signup');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<PublicSignUpResponse, PublicSignUpResponse>($request);
  }

  @override
  Future<Response<PublicSignOutResponse>> _PublicSignOut({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Signs out the currently authenticated user by updating their login status.
    After successful sign-out, the client should discard the JWT token.
    

    This endpoint performs secure sign-out by:

    - Validating JWT token authentication

    - Verifying account is active (not suspended/banned)

    - Updating user login status in the database

    - Allowing unverified accounts to sign out

    

    **Authentication Requirements:**

    - Valid JWT Bearer token

    - Account must be active (not suspended)

    - Verification status is not required for sign-out

    

    **Security Features:**

    - Only active accounts can perform sign-out

    - Prevents unnecessary database updates if already logged out

    - Always returns success for consistent UX

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive accounts

    

    **Process Flow:**

    1. Extracts user ID from JWT token

    2. Validates account is active

    3. Updates login status if currently logged in

    4. Returns success response.''',
      summary: 'Sign out the authenticated user',
      operationId: 'PublicSignOut',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/sign-out');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<PublicSignOutResponse, PublicSignOutResponse>($request);
  }

  @override
  Future<Response<PublicResetPasswordResponse>> _PublicResetPassword({
    required PublicResetPasswordRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Resets a user\'s password after validating the OTP code sent during the forgot password process.
    After successful password reset, the user can login with their new password.
    

    This endpoint performs the following operations:

    - Validates the OTP code format and authenticity

    - Checks if the user exists and is active/verified

    - Validates the OTP against the database (not expired, not used, under attempt limit)

    - Hashes the new password using secure algorithms

    - Updates the user\'s password in the database

    - Invalidates all remaining password reset OTPs for the user

    

    **Authentication Requirements:**

    - No authentication required; open to users with valid OTP codes

    - User account must be active and verified

    

    **Security Features:**

    - OTP expiration (60 minutes)

    - Maximum 3 verification attempts per OTP

    - Single-use OTP codes

    - Secure password hashing (PBKDF2 with SHA-256)

    - Automatic cleanup of expired/used OTPs

    - Password validation enforced by validator

    

    **Request Requirements:**

    - Valid email address format

    - Valid OTP code (6-digit numeric)

    - New password meeting security requirements

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 400 Bad Request for invalid input or inactive account

    - Returns 401 Unauthorized for expired OTP

    - Returns 403 Forbidden for max attempts reached or unverified account

    - Returns 404 Not Found for no valid OTP found or user not found

    

    **Error Handling:**

    - BadRequestException (400): Invalid input format, inactive account, or invalid OTP

    - AuthenticationException (401): OTP has expired

    - AuthorizationException (403): Maximum verification attempts reached or account not verified

    - NotFoundException (404): No valid OTP found or user not found

    

    **Process Flow:**

    1. Validates email format and password requirements

    2. Finds user by email address

    3. Validates account is active and verified

    4. Validates OTP code for password reset purpose

    5. Hashes new password securely

    6. Updates user\'s password

    7. Marks OTP as used and invalidates remaining OTPs

    8. Returns success response.''',
      summary: 'Reset user password using OTP verification',
      operationId: 'PublicResetPassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/reset-password');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<PublicResetPasswordResponse, PublicResetPasswordResponse>(
          $request,
        );
  }

  @override
  Future<Response<PublicResendOtpResponse>> _PublicResendOtp({
    required PublicResendOtpRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Resends a new OTP verification code for public users by invalidating existing OTPs and generating a fresh one.
    

    This endpoint enables users to request a new verification code when:

    - The original OTP wasn\'t received

    - The previous OTP has expired

    - There were issues with email delivery

    - Maximum attempts were reached on the previous OTP

    

    **Request Requirements:**

    - Valid email address format

    - Valid OTP purpose (EmailVerification, PasswordReset, TwoFactorAuthentication, AccountRecovery)

    - Account must be active

    

    **Security Features:**

    - Account active status validation

    - Automatic invalidation of existing OTPs for the specified purpose

    - New OTP generation with fresh expiration time

    

    **Response Codes:**

    - Returns 200 OK with success status when OTP is resent

    - Returns 400 Bad Request for invalid email format or purpose

    - Returns 404 Not Found when user doesn\'t exist

    - Returns 403 Forbidden when user account is inactive

    

    **Process Flow:**

    1. Validates email format and OTP purpose

    2. Verifies user exists

    3. Checks account is active and verified

    4. Invalidates all existing OTPs for the specified purpose

    5. Generates new OTP with fresh expiration

    6. Returns success response

    

    **Supported OTP Purposes:**

    - EmailVerification: For email address verification

    - PasswordReset: For password reset requests

    - TwoFactorAuthentication: For 2FA setup/verification

    - AccountRecovery: For account recovery processes''',
      summary: 'Resend OTP verification code for public users',
      operationId: 'PublicResendOtp',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/resend-otp');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<PublicResendOtpResponse, PublicResendOtpResponse>(
      $request,
    );
  }

  @override
  Future<Response<PublicLoginResponse>> _PublicLogin({
    required PublicLoginRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Authenticates a public user using email/userName and password credentials.
    The returned JWT token includes claims for accessing public user\'s endpoints.
    

    This endpoint performs enhanced authentication by:

    - Validating credentials and password

    - Verifying the account is active and verified

    - Generating JWT token with appropriate user claims

    - Recording the login activity

    

    **Authentication Requirements:**

    - Valid email/userName and password combination

    - Account must be active and verified

    

    **Security Features:**

    - Password verification using secure hashing (bcrypt)

    - Login activity tracking

    - Basic JWT claims for public users operations

    

    **Response Codes:**

    - Returns 200 OK with user info and JWT token on successful authentication

    - Returns 400 Bad Request for invalid email/userName or incorrect password

    - Returns 403 Forbidden when user account is inactive or disabled

    - Returns 404 Not Found when no user exists with the provided email/userName

    

    **Error Handling:**

    - AuthorizationException (403): Account inactive - user exists but account is disabled/suspended

    - BadRequestException (400): Invalid password - email/userName exists but password is incorrect

    - NotFoundException (404): User not found - no account exists with the provided email/userName.''',
      summary: 'Authenticate public user and return JWT token with user claims',
      operationId: 'PublicLogin',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<PublicLoginResponse, PublicLoginResponse>($request);
  }

  @override
  Future<Response<PublicForgotPasswordResponse>> _PublicForgotPassword({
    required PublicForgotPasswordRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Initiates the password reset process by generating an OTP for the specified email address.
    The generated OTP can be used with the verify-otp endpoint to proceed with password reset.
    

    This endpoint follows security best practices by:

    - Always returning success to prevent user enumeration attacks

    - Only generating OTP for valid, active, and verified accounts

    - Silently handling cases where email doesn\'t exist or account is inactive

    

    **Request Requirements:**

    - Valid email address format

    - Email must belong to an existing, active, and verified account

    

    **Security Features:**

    - User enumeration protection (consistent response regardless of email existence)

    - Account status validation (active and verified)

    - OTP generation with expiration time

    

    **Response Codes:**

    - Returns 200 OK with success status (always true for security) and the email address

    - Returns 400 Bad Request for invalid email format

    

    **Process Flow:**

    1. Validates email format

    2. Checks if user exists and is active/verified

    3. Generates OTP for password reset

    4. Returns success response (regardless of actual outcome).''',
      summary: 'Initiate password reset process for existing users',
      operationId: 'PublicForgotPassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/forgot-password');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<PublicForgotPasswordResponse, PublicForgotPasswordResponse>(
          $request,
        );
  }

  @override
  Future<Response<PublicChangePasswordResponse>> _PublicChangePassword({
    required PublicChangePasswordRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Changes a user\'s password after verifying their current password for security.

    After successful password change, the user continues using their existing session.
    The new password will be required for future logins.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies user account is active and verified

    - Validates the current password against stored hash

    - Ensures new password is different from current password

    - Hashes the new password using secure algorithms

    - Updates the user\'s password in the database

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - Account must be verified (email confirmed)

    - Only visitor role users can change their password

    

    **Security Features:**

    - Current password verification for authorization

    - Prevention of reusing the same password

    - Secure password hashing (PBKDF2 with SHA-256)

    - Strong password validation enforced by validator

    - Account status validation before password change

    

    **Request Requirements:**

    - Valid old password for verification

    - New password meeting security requirements

    - User must be authenticated with valid JWT token

    

    **Response Codes:**

    - Returns 200 OK with success status

    - Returns 400 Bad Request for invalid old password or same password

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive or unverified accounts

    - Returns 404 Not Found for user not found

    - Returns 409 Conflict for new password same as old

    

    **Error Handling:**

    - BadRequestException (400): Invalid old password or inactive account

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Account not verified or insufficient permissions

    - NotFoundException (404): User not found

    - ConflictException (409): New password same as current password

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Validates old password and new password requirements

    3. Finds user by ID and validates account status

    4. Verifies current password matches provided old password

    5. Ensures new password is different from current password

    6. Hashes new password securely

    7. Updates user\'s password in database

    8. Returns success response.''',
      summary: 'Change user password with current password verification',
      operationId: 'PublicChangePassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::authentication"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/change-password');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<PublicChangePasswordResponse, PublicChangePasswordResponse>(
          $request,
        );
  }

  @override
  Future<Response<PublicGetOwnProfileResponse>> _PublicGetOwnProfile({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Retrieves the complete profile information for the currently authenticated user.

    This endpoint provides all necessary user information for client applications
    to display profile details and manage user-specific functionality.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies user account is active and verified

    - Retrieves complete user information including roles and permissions

    - Fetches user avatar file information if available

    - Returns comprehensive user profile data

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - Account must be verified (email confirmed)

    - Only visitor role users can access their profile

    

    **Returned Information:**

    - Basic user details (ID, email, username, verification status)

    - User roles and associated permissions

    - Avatar file information (if available)

    - Account status and activity information

    - Authentication provider information (local/social)

    

    **Security Features:**

    - User can only access their own profile information

    - Account status validation before profile retrieval

    - Comprehensive permission and role information for authorization

    - Avatar file security through proper file service integration

    

    **Response Codes:**

    - Returns 200 OK with complete user profile data

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive or unverified accounts

    - Returns 404 Not Found for user not found

    

    **Error Handling:**

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Account not verified or insufficient permissions

    - NotFoundException (404): User not found

    

    **Use Cases:**

    - Display user profile information in client applications

    - Determine user permissions for UI/UX customization

    - Validate user account status and verification

    - Access avatar and display user information

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Finds user by ID and validates account status

    3. Retrieves user roles and permissions

    4. Fetches avatar file information if available

    5. Maps complete user data to response DTO

    6. Returns comprehensive user profile information.''',
      summary: 'Retrieve authenticated user\'s complete profile information',
      operationId: 'PublicGetOwnProfile',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::profile"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/profile');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<PublicGetOwnProfileResponse, PublicGetOwnProfileResponse>(
          $request,
        );
  }

  @override
  Future<Response<PublicUpdateOwnProfileResponse>> _PublicUpdateOwnProfile({
    required PublicUpdateOwnProfileRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the profile information for the currently authenticated user.

    This endpoint requires user authentication - only logged-in users can update their own profile,
    providing secure profile management for authenticated users
    while maintaining data integrity and security requirements.
    

    This endpoint performs the following operations:

    - Validates JWT token authentication and extracts user ID

    - Verifies user account is active and verified

    - Validates uniqueness for email, username, and phone number if being updated

    - Updates user profile information selectively

    - Returns updated user profile data

    

    **Authentication Requirements:**

    - Valid JWT Bearer token required

    - Account must be active (not suspended/banned)

    - Account must be verified (email confirmed)

    - Only logged-in users can update their profile

    

    **Updateable Information:**

    - Email address (triggers re-verification and logout)

    - Username (must be unique across the system)

    - Phone number with country information

    - Country details (name, flag, ISO code, dial code)

    

    **Security Features:**

    - User can only update their own profile information

    - Account status validation before updates

    - Uniqueness validation for email, username, and phone

    - Email update triggers account re-verification

    

    **Response Codes:**

    - Returns 200 OK with updated user profile data

    - Returns 401 Unauthorized for invalid/missing JWT token

    - Returns 403 Forbidden for inactive or unverified accounts

    - Returns 404 Not Found for user not found

    - Returns 409 Conflict for duplicate email/username/phone

    

    **Error Handling:**

    - AuthenticationException (401): Invalid JWT token

    - AuthorizationException (403): Account not verified or insufficient permissions

    - NotFoundException (404): User not found

    - ConflictException (409): Email, username, or phone already exists

    

    **Use Cases:**

    - Update user profile information in client applications

    - Change email address (requires re-verification)

    - Update contact information and location details

    - Modify username for personal branding

    

    **Process Flow:**

    1. Validates JWT token and extracts user ID

    2. Finds user by ID and validates account status

    3. Validates uniqueness for updated fields

    4. Updates user profile information selectively

    5. Saves changes to database

    6. Returns updated user profile data

    

    **Important Notes:**

    - Email updates reset verification status and force logout

    - Phone number updates include country information

    - Only provided fields are updated (partial updates supported)

    - All validations are performed before any updates.''',
      summary: 'Update authenticated user\'s own profile information',
      operationId: 'PublicUpdateOwnProfile',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::profile"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/profile');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client
        .send<PublicUpdateOwnProfileResponse, PublicUpdateOwnProfileResponse>(
          $request,
        );
  }

  @override
  Future<Response<PublicUpdateAvatarResponse>> _PublicUpdateAvatar({
    required PublicUpdateAvatarRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''    Updates the authenticated user\'s avatar by providing a new avatar URL.

    This endpoint allows logged-in users to update their profile avatar from an external URL.
    The system will download and store the avatar file, and automatically delete any previous avatar.
    Only verified users can update their avatar to maintain profile quality and security.
    

    **Authentication Requirements:**

    - User must be logged in (JWT token required)

    - Account must be active and verified

    

    **Request Requirements:**

    - Valid avatar URL (required)

    - URL must be accessible and point to a valid image

    - Maximum URL length: 2048 characters

    

    **Avatar Management:**

    - Previous avatar is automatically deleted when updating

    - New avatar is downloaded and stored in the system

    - Supports common image formats (JPEG, PNG, GIF, WebP)

    - Smart deduplication: if the same URL is provided again, no duplicate download occurs

    

    **Response Codes:**

    - Returns 200 OK with updated user information including new avatar

    - Returns 400 Bad Request for invalid avatar URL format

    - Returns 401 Unauthorized for unauthenticated requests

    - Returns 403 Forbidden for inactive or unverified accounts

    - Returns 404 Not Found when user doesn\'t exist

    

    **Security Features:**

    - Only the authenticated user can update their own avatar

    - Account verification required (verified accounts only)

    - URL validation to ensure proper format

    - Automatic cleanup of old avatar files

    

    **Process Flow:**

    1. Validates user authentication and account status

    2. Validates the provided avatar URL format

    3. Downloads the new avatar from the URL

    4. Deletes the previous avatar file (if exists)

    5. Updates user record with new avatar reference

    6. Returns updated user information with avatar details.''',
      summary: 'Update user avatar',
      operationId: 'PublicUpdateAvatar',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::profile"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/profile/avatar');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<PublicUpdateAvatarResponse, PublicUpdateAvatarResponse>(
      $request,
    );
  }
}
