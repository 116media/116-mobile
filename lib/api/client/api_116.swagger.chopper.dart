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
          '''Verifies the OTP (One-Time Password) code sent to the admin user\'s email for various purposes.
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
      tags: ["admin::identity"],
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
  Future<Response<AdminSignOutFromAllDevicesResponse>>
  _AdminSignOutFromAllDevices({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Signs out the currently authenticated admin user from all devices by invalidating all active sessions.
After successful sign-out, all refresh tokens will be revoked and the admin must re-authenticate on all devices.

This endpoint is commonly used:

- After password changes (security best practice)
- When admin suspects account compromise
- When enabling two-factor authentication
- As a "Sign Out Everywhere" feature\n
\n
**Authentication Requirements:**\n
- Valid JWT Bearer token with admin privileges\n
- Account must be active (not suspended)\n
\n
**Security Features:**\n
- Invalidates all active sessions across all devices\n
- Uses soft delete for session tracking and analytics\n
- Prevents token reuse after sign-out\n
- Idempotent operation (safe to call multiple times)\n
\n
**Response Codes:**\n
- Returns 200 OK with success status\n
- Returns 401 Unauthorized for invalid/missing JWT token\n
- Returns 403 Forbidden for non-admin users or inactive accounts\n
\n
**Process Flow:**\n
1. Extracts admin user ID from JWT token\n
2. Validates account is active and has admin privileges\n
3. Soft deletes all active sessions for the admin user\n
4. Returns success response.''',
      summary: 'Sign out the authenticated admin user from all devices',
      operationId: 'AdminSignOutFromAllDevices',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::identity"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/auth/sign-out-all');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      AdminSignOutFromAllDevicesResponse,
      AdminSignOutFromAllDevicesResponse
    >($request);
  }

  @override
  Future<Response<AdminSignOutResponse>> _AdminSignOut({
    required AdminSignOutRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Signs out the currently authenticated admin user by updating their login status.
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
      tags: ["admin::identity"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/auth/sign-out');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<AdminSignOutResponse, AdminSignOutResponse>($request);
  }

  @override
  Future<Response<AdminResetPasswordResponse>> _AdminResetPassword({
    required AdminResetPasswordRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Resets an admin user\'s password after validating the OTP code sent during the forgot password process.
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
      tags: ["admin::identity"],
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
          '''Resends a new OTP verification code for admin users by invalidating existing OTPs and generating a fresh one.
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
      tags: ["admin::identity"],
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
          '''Authenticates an admin user using email and password credentials.
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
      tags: ["admin::identity"],
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
          '''Initiates the password reset process by generating an OTP for the specified admin email address.

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
      tags: ["admin::identity"],
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
          '''Changes an admin user\'s password after verifying their current password for security.

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
      tags: ["admin::identity"],
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
  Future<Response<AdminGetSessionMetricsResponse>> _AdminGetSessionMetrics({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Retrieves comprehensive session metrics including platform distribution and user activity.
This is an admin-only operation for monitoring system usage and platform analytics.

**Metrics Provided:**

- Client Platform Counts: Sessions grouped by client platform (iOS app, Android app, Web browser, PWA)
- Device Type Counts: Sessions grouped by device type (Mobile, Desktop, Tablet)
- Total Active Sessions: Count of all currently active sessions
- Total Active Users: Count of unique users with at least one active session

**Use Cases:**

- Monitor platform adoption (mobile app vs web app usage)
- Track device type distribution for responsive design priorities
- Measure concurrent user activity
- Generate dashboards showing real-time system usage

**Response Codes:**

- Returns 200 OK with metrics data
- Returns 401 Unauthorized if access token is invalid
- Returns 403 Forbidden if not admin''',
      summary: 'Get session metrics and statistics',
      operationId: 'AdminGetSessionMetrics',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::sessions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/sessions/metrics');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<AdminGetSessionMetricsResponse, AdminGetSessionMetricsResponse>(
          $request,
        );
  }

  @override
  Future<Response<AdminGetAllSessionsResponse>> _AdminGetAllSessions({
    required int pageIndex,
    required int pageSize,
    String? status,
    String? userId,
    String? ipAddress,
    DateTime? fromDate,
    DateTime? toDate,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Retrieves a paginated list of all user sessions with optional filtering capabilities.
This is an admin-only operation for monitoring and managing user sessions.

**Query Parameters:**

- pageIndex: Zero-based page index (default: 0)
- pageSize: Number of items per page (default: 10, max: 100)
- status: Filter by status ("active" or "expired")\n
- userId: Filter by user ID (GUID)\n
- ipAddress: Filter by IP address (partial match)\n
- deviceName: Filter by device name (partial match)\n
- fromDate: Filter sessions created after this date\n
- toDate: Filter sessions created before this date\n
\n
**Response Includes:**\n
- Paginated list of sessions\n
- Total count of matching sessions\n
- Current page index and size\n
\n
**Response Codes:**\n
- Returns 200 OK with paginated sessions\n
- Returns 400 Bad Request for invalid parameters\n
- Returns 401 Unauthorized if access token is invalid\n
- Returns 403 Forbidden if not admin''',
      summary: 'Retrieve all sessions with pagination and filtering',
      operationId: 'AdminGetAllSessions',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::sessions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/sessions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'pageIndex': pageIndex,
      'pageSize': pageSize,
      'status': status,
      'userId': userId,
      'ipAddress': ipAddress,
      'fromDate': fromDate,
      'toDate': toDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client
        .send<AdminGetAllSessionsResponse, AdminGetAllSessionsResponse>(
          $request,
        );
  }

  @override
  Future<Response<dynamic>> _AdminExportSessionData({
    String? status,
    DateTime? fromDate,
    DateTime? toDate,
    String? format,
    String? columns,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Exports session data with optional filtering by status and date range.
This is an admin-only operation for extracting session data for reporting and analysis.

**Filter Parameters:**

- Status: Filter by session status ("active" or "expired").\n
- FromDate: Include only sessions created after this date.\n
- ToDate: Include only sessions created before this date.\n
\n
**Exported Fields:**\n
- Session ID, User ID\n
- IP Address, Device Name, User Agent, Client Platform\n
- Created At, Expires At, Is Active, Deleted At\n
\n
**Use Cases:**\n
- Generate session activity reports\n
- Export data for compliance and auditing\n
- Analyze session patterns and user behavior\n
- Create backups of session data\n
\n
**Response Codes:**\n
- Returns 200 OK with session export data\n
- Returns 400 Bad Request if filter parameters are invalid\n
- Returns 401 Unauthorized if access token is invalid\n
- Returns 403 Forbidden if not admin''',
      summary: 'Export session data with optional filtering',
      operationId: 'AdminExportSessionData',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::sessions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/sessions/export');
    final Map<String, dynamic> $params = <String, dynamic>{
      'status': status,
      'fromDate': fromDate,
      'toDate': toDate,
      'format': format,
      'columns': columns,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AdminForceLogoutUserResponse>> _AdminForceLogoutUser({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Forces a user to log out from all their active sessions across all devices.
This is an admin-only operation used for security purposes or account management.

This endpoint performs force logout by:

- Validating the target user ID from the route parameter
- Soft deleting all sessions associated with that user
- Invalidating all tokens for those sessions

**Authentication Requirements:**

- Admin must be authenticated with a valid access token
- Requires admin role and appropriate permissions

**Use Cases:**

- Security response to compromised accounts
- Account suspension or termination
- Policy enforcement (e.g., forced password reset)
- Emergency access revocation

**Response Codes:**

- Returns 200 OK with success flag on successful logout
- Returns 400 Bad Request if user ID is invalid
- Returns 401 Unauthorized if access token is invalid or expired
- Returns 403 Forbidden if admin lacks required permissions

**Important Notes:**

- This operation affects all user sessions, not just one device
- Sessions are soft deleted for audit trail purposes
- User will need to log in again on all devices''',
      summary: 'Force logout a user from all devices',
      operationId: 'AdminForceLogoutUser',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::sessions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/sessions/force-logout/${id}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<AdminForceLogoutUserResponse, AdminForceLogoutUserResponse>(
          $request,
        );
  }

  @override
  Future<Response<AdminCleanupExpiredSessionsResponse>>
  _AdminCleanupExpiredSessions({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Performs a cleanup operation to soft delete all expired sessions from the database.
This is an admin-only maintenance operation used for database hygiene.

This endpoint performs cleanup by:

- Identifying all sessions that have expired (past their ExpiresAt timestamp)
- Soft deleting those expired sessions to maintain audit trail
- Returning the count of sessions that were cleaned up

**Authentication Requirements:**

- Admin must be authenticated with a valid access token
- Requires admin role and appropriate permissions

**Use Cases:**

- Regular maintenance to keep session data clean
- Database optimization and cleanup
- Scheduled cleanup operations (can be triggered manually or via cron)
- Removing stale session data that won\'t be used again

**Response Codes:**

- Returns 200 OK with deleted count on successful cleanup
- Returns 401 Unauthorized if access token is invalid or expired
- Returns 403 Forbidden if admin lacks required permissions

**Important Notes:**

- Sessions are soft deleted, not permanently removed
- This operation only affects expired sessions, not active ones
- The operation is safe to run multiple times
- Consider running this periodically as part of maintenance tasks''',
      summary: 'Cleanup all expired sessions',
      operationId: 'AdminCleanupExpiredSessions',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::sessions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/sessions/cleanup');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      AdminCleanupExpiredSessionsResponse,
      AdminCleanupExpiredSessionsResponse
    >($request);
  }

  @override
  Future<Response<AdminGetOwnProfileResponse>> _AdminGetOwnProfile({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Retrieves the complete profile information for the currently authenticated admin user.

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
      tags: ["admin::user"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/user/profile');
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
          '''Updates the profile information for the currently authenticated admin user.

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
- Country details (name, ISO code, dial code)

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
      tags: ["admin::user"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/user/profile');
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
    required MultipartFile avatarFile,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Updates the authenticated admin user\'s avatar by uploading an image file.

This endpoint accepts multipart/form-data file uploads and stores the image in Cloudinary cloud storage.
The system will automatically delete any previous avatar when a new one is uploaded.

Admin users only need to have active accounts (no verification requirement).

**Authentication Requirements:**

- Admin user must be logged in (JWT token required)
- Must have Admin or SuperAdmin role
- Account must be active

**Request Requirements:**

- Content-Type: multipart/form-data
- Form field name: "avatarFile"\n
- Allowed file types: JPEG, PNG, GIF, WebP\n
- Maximum file size: 1MB\n
- File must be a valid image\n
\n
**Avatar Management:**\n
- Previous avatar is automatically deleted from cloud storage\n
- Images are stored in Cloudinary with automatic optimization\n
- Secure HTTPS URLs are generated for accessing avatars\n
- Smart quality optimization and format conversion\n
\n
**Response Codes:**\n
- Returns 200 OK with updated admin user information including new avatar\n
- Returns 400 Bad Request for invalid file type, size, or missing file\n
- Returns 401 Unauthorized for unauthenticated requests\n
- Returns 403 Forbidden for non-admin users or inactive accounts\n
- Returns 404 Not Found when admin user doesn\'t exist\n
\n
**Security Features:**\n
- Only authenticated admin users can update their own avatar\n
- Role-based authorization (Admin/SuperAdmin required)\n
- Account activity verification (active accounts only)\n
- File type and size validation\n
- Automatic cleanup of old avatar files from cloud storage\n
- Secure signed uploads to Cloudinary\n
\n
**Process Flow:**\n
1. Validates admin authentication and account status\n
2. Validates the uploaded file (type, size, format)\n
3. Uploads the new avatar to Cloudinary cloud storage\n
4. Deletes the previous avatar from cloud storage (if exists)\n
5. Updates admin user record with new avatar reference\n
6. Returns updated admin user information with avatar details\n
\n
**Example cURL Request:**\n
```
curl -X PATCH https://api.example.com/api/v1/admin/profile/avatar \
-H "Authorization: Bearer ADMIN_JWT_TOKEN" \
-F "avatarFile=@/path/to/image.jpg"
```''',
      summary: 'Update admin user avatar via file upload',
      operationId: 'AdminUpdateAvatar',
      consumes: [],
      produces: [],
      security: [],
      tags: ["admin::user"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/user/avatar');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<MultipartFile>('avatarFile', avatarFile),
    ];
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
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
          '''Verifies the OTP (One-Time Password) code sent to the user\'s email for various purposes.
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
      tags: ["public::identity"],
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
          '''Authenticates a user through external social providers (Google or Facebook).

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
      tags: ["public::identity"],
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
          '''Registers a new public user by creating an account with the provided details.

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
      tags: ["public::identity"],
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
  Future<Response<PublicSignOutFromAllDevicesResponse>>
  _PublicSignOutFromAllDevices({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Signs out the currently authenticated user from all devices by invalidating all active sessions.
After successful sign-out, all refresh tokens will be revoked and the user must re-authenticate on all devices.

This endpoint is commonly used:

- After password changes (security best practice)
- When user suspects account compromise
- When enabling two-factor authentication
- As a "Sign Out Everywhere" feature\n
\n
**Authentication Requirements:**\n
- Valid JWT Bearer token\n
- Account must be active (not suspended)\n
- Verification status is not required for sign-out\n
\n
**Security Features:**\n
- Invalidates all active sessions across all devices\n
- Uses soft delete for session tracking and analytics\n
- Prevents token reuse after sign-out\n
- Idempotent operation (safe to call multiple times)\n
\n
**Response Codes:**\n
- Returns 200 OK with success status\n
- Returns 401 Unauthorized for invalid/missing JWT token\n
- Returns 403 Forbidden for inactive accounts\n
\n
**Process Flow:**\n
1. Extracts user ID from JWT token\n
2. Validates account is active\n
3. Soft deletes all active sessions for the user\n
4. Returns success response.''',
      summary: 'Sign out the authenticated user from all devices',
      operationId: 'PublicSignOutFromAllDevices',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/sign-out-all');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<
      PublicSignOutFromAllDevicesResponse,
      PublicSignOutFromAllDevicesResponse
    >($request);
  }

  @override
  Future<Response<PublicSignOutResponse>> _PublicSignOut({
    required PublicSignOutRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Signs out the currently authenticated user by updating their login status.
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
      tags: ["public::identity"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/sign-out');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<PublicSignOutResponse, PublicSignOutResponse>($request);
  }

  @override
  Future<Response<PublicSetPasswordResponse>> _PublicSetPassword({
    required PublicSetPasswordRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Allows users who authenticated via external providers (Google/Facebook) to set a password for local authentication.

This endpoint performs the following operations:

- Validates JWT token authentication and extracts user ID
- Verifies user account is active
- Checks that user has an email address configured
- Validates that user\'s current auth provider is Google or Facebook (not Local)
- Hashes the new password using secure algorithms
- Sets the password and changes auth provider to Local
- Updates the user in the database

**Request Requirements:**

- Valid password meeting security requirements
- User must be authenticated with valid JWT token
- User must have authenticated via Google or Facebook originally
- User must have an email address configured

**Response Codes:**

- Returns 200 OK with success status
- Returns 400 Bad Request for missing email, already set password, or invalid auth provider
- Returns 401 Unauthorized for invalid/missing JWT token
- Returns 403 Forbidden for inactive accounts
- Returns 404 Not Found for user not found

**Error Handling:**

- BadRequestException (400): Missing email, password already set, or not external auth user
- AuthenticationException (401): Invalid JWT token
- AuthorizationException (403): Account not active
- NotFoundException (404): User not found

**Process Flow:**

1. Validates JWT token and extracts user ID

2. Validates password requirements

3. Finds user by ID and validates account status

4. Checks that user has an email address

5. Validates user\'s current auth provider is Google or Facebook

6. Hashes new password securely

7. Sets password and changes auth provider to Local

8. Updates user in database

9. Returns success response.

**Note:** After successfully setting a password, users can log in using their email and password,

in addition to continuing to use their external authentication provider.''',
      summary: 'Set password for external auth users (Google/Facebook)',
      operationId: 'PublicSetPassword',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::identity"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/auth/set-password');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<PublicSetPasswordResponse, PublicSetPasswordResponse>(
      $request,
    );
  }

  @override
  Future<Response<PublicResetPasswordResponse>> _PublicResetPassword({
    required PublicResetPasswordRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Resets a user\'s password after validating the OTP code sent during the forgot password process.
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
      tags: ["public::identity"],
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
          '''Resends a new OTP verification code for public users by invalidating existing OTPs and generating a fresh one.

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
      tags: ["public::identity"],
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
          '''Authenticates a public user using email/userName and password credentials.
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
      tags: ["public::identity"],
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
          '''Initiates the password reset process by generating an OTP for the specified email address.
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
      tags: ["public::identity"],
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
          '''Changes a user\'s password after verifying their current password for security.

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
      tags: ["public::identity"],
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
  Future<Response<PublicGetOwnSessionsResponse>> _PublicGetOwnSessions({
    bool? isActive,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Retrieves a list of all sessions (devices) for the currently authenticated user.
Supports filtering by session status (active/inactive).

This endpoint provides session management by:

- Listing all user sessions across different devices
- Showing device information (IP address, device name, user agent)
- Indicating session status (active or expired)
- Displaying session creation and expiration times

**Authentication Requirements:**

- User must be authenticated with a valid access token
- User can only view their own sessions

**Query Parameters:**

- isActive (optional): Filter sessions by status
- true: Only active sessions
- false: Only expired/inactive sessions
- null/omitted: All sessions

**Use Cases:**

- View all active login sessions
- Identify unrecognized devices
- Manage active sessions before revoking specific ones
- Security audit of login history

**Response Codes:**

- Returns 200 OK with list of sessions
- Returns 401 Unauthorized if access token is invalid or expired
- Returns 403 Forbidden if user lacks required permissions

**Session Information Includes:**

- Session ID for revoking specific sessions
- IP address of the device
- Device name and user agent string
- Creation timestamp
- Expiration timestamp
- Active status (computed from expiration time and deletion status)''',
      summary: 'Retrieve all sessions for the authenticated user',
      operationId: 'PublicGetOwnSessions',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::sessions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/sessions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'isActive': isActive,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client
        .send<PublicGetOwnSessionsResponse, PublicGetOwnSessionsResponse>(
          $request,
        );
  }

  @override
  Future<Response<PublicGetOwnSessionByIdResponse>> _PublicGetOwnSessionById({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Retrieves detailed information about a specific session identified by its ID.
The session must belong to the authenticated user.

This endpoint provides session details by:

- Validating the session ID from the route parameter
- Verifying the session belongs to the authenticated user
- Returning complete session metadata and status

**Authentication Requirements:**

- User must be authenticated with a valid access token
- User can only view their own sessions

**Use Cases:**

- View detailed information about a specific session
- Check session status before revoking
- Verify device information for security auditing
- Display session details in user dashboard

**Security Features:**

- Session ownership verification prevents viewing other users\' sessions
- Returns 404 (not 403) for unauthorized access to prevent session enumeration

**Response Codes:**

- Returns 200 OK with session details on success
- Returns 400 Bad Request if session ID is invalid
- Returns 401 Unauthorized if access token is invalid or expired
- Returns 403 Forbidden if user lacks required permissions
- Returns 404 Not Found if session doesn\'t exist or doesn\'t belong to user

**Session Information Includes:**

- Session ID
- IP address of the device
- Device name and user agent string
- Creation timestamp
- Expiration timestamp
- Active status (computed from expiration time and deletion status)

**Error Handling:**

- NotFoundException (404): Session not found or doesn\'t belong to user''',
      summary: 'Retrieve a specific session by ID',
      operationId: 'PublicGetOwnSessionById',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::sessions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/sessions/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<PublicGetOwnSessionByIdResponse, PublicGetOwnSessionByIdResponse>(
          $request,
        );
  }

  @override
  Future<Response<PublicRevokeSessionResponse>> _PublicRevokeSession({
    required String id,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Revokes (logs out from) a specific session identified by its ID.
This allows users to remotely log out from other devices.

This endpoint performs session revocation by:

- Validating the session ID from the route parameter
- Verifying the session belongs to the authenticated user
- Soft deleting the session (marking it as inactive)
- Invalidating all tokens associated with that session

**Authentication Requirements:**

- User must be authenticated with a valid access token
- User can only revoke their own sessions

**Use Cases:**

- Log out from a specific device remotely
- Remove unrecognized or suspicious sessions
- Clean up old sessions after viewing session list
- Security response to potential account compromise

**Security Features:**

- Session ownership verification prevents revoking other users\' sessions
- Soft delete ensures session history is maintained for audit purposes
- Immediate invalidation prevents further use of associated tokens

**Response Codes:**

- Returns 200 OK with success flag on successful revocation
- Returns 400 Bad Request if session ID is invalid
- Returns 401 Unauthorized if access token is invalid or expired
- Returns 403 Forbidden if user lacks required permissions
- Returns 404 Not Found if session doesn\'t exist or doesn\'t belong to user

**Error Handling:**

- NotFoundException (404): Session not found or doesn\'t belong to user
- Attempting to revoke another user\'s session returns 404 (not 403) to prevent session enumeration attacks''',
      summary: 'Revoke a specific session (log out from a device)',
      operationId: 'PublicRevokeSession',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::sessions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/sessions/revoke/${id}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client
        .send<PublicRevokeSessionResponse, PublicRevokeSessionResponse>(
          $request,
        );
  }

  @override
  Future<Response<PublicRefreshTokenResponse>> _PublicRefreshToken({
    required PublicRefreshTokenRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Validates and rotates a refresh token to obtain a new access token.
Implements token rotation for enhanced security - the old refresh token is invalidated.

This endpoint performs token refresh by:

- Validating the provided refresh token
- Verifying the session is still active and not expired
- Generating a new access token
- Rotating the refresh token (old token becomes invalid)
- Returning new authentication credentials

**Authentication Requirements:**

- Valid, non-expired refresh token
- Session must be active (not logged out or revoked)

**Security Features:**

- Automatic token rotation prevents token reuse
- Refresh token hashing for secure storage
- Session validation ensures only active sessions can refresh

**Response Codes:**

- Returns 200 OK with new tokens on successful refresh
- Returns 403 Forbidden for invalid or expired refresh tokens

**Error Handling:**

- AuthorizationException (403): Invalid/expired refresh token or session revoked
- Token rotation ensures old refresh tokens cannot be reused after successful refresh.''',
      summary: 'Refresh access token using a valid refresh token',
      operationId: 'PublicRefreshToken',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::sessions"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/sessions/refresh-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<PublicRefreshTokenResponse, PublicRefreshTokenResponse>(
      $request,
    );
  }

  @override
  Future<Response<PublicGetOwnProfileResponse>> _PublicGetOwnProfile({
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Retrieves the complete profile information for the currently authenticated user.

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
      tags: ["public::user"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/user/profile');
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
          '''Updates the profile information for the currently authenticated user.

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
- Country details (name, ISO code, dial code)

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
      tags: ["public::user"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/user/profile');
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
    required MultipartFile avatarFile,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description:
          '''Updates the authenticated user\'s avatar by uploading an image file.

This endpoint accepts multipart/form-data file uploads and stores the image in Cloudinary cloud storage.
The system will automatically delete any previous avatar when a new one is uploaded.
Only verified users can update their avatar to maintain profile quality and security.

**Authentication Requirements:**

- User must be logged in (JWT token required)
- Account must be active and verified

**Request Requirements:**

- Content-Type: multipart/form-data
- Form field name: "avatarFile"\n
- Allowed file types: JPEG, PNG, GIF, WebP\n
- Maximum file size: 1MB\n
- File must be a valid image\n
\n
**Avatar Management:**\n
- Previous avatar is automatically deleted from cloud storage\n
- Images are stored in Cloudinary with automatic optimization\n
- Secure HTTPS URLs are generated for accessing avatars\n
- Smart quality optimization and format conversion\n
\n
**Response Codes:**\n
- Returns 200 OK with updated user information including new avatar\n
- Returns 400 Bad Request for invalid file type, size, or missing file\n
- Returns 401 Unauthorized for unauthenticated requests\n
- Returns 403 Forbidden for inactive or unverified accounts\n
- Returns 404 Not Found when user doesn\'t exist\n
\n
**Security Features:**\n
- Only the authenticated user can update their own avatar\n
- Account verification required (verified accounts only)\n
- File type and size validation\n
- Automatic cleanup of old avatar files from cloud storage\n
- Secure signed uploads to Cloudinary\n
\n
**Process Flow:**\n
1. Validates user authentication and account status\n
2. Validates the uploaded file (type, size, format)\n
3. Uploads the new avatar to Cloudinary cloud storage\n
4. Deletes the previous avatar from cloud storage (if exists)\n
5. Updates user record with new avatar reference\n
6. Returns updated user information with avatar details\n
\n
**Example cURL Request:**\n
```
curl -X PATCH https://api.example.com/api/v1/public/profile/avatar \
-H "Authorization: Bearer YOUR_JWT_TOKEN" \
-F "avatarFile=@/path/to/image.jpg"
```''',
      summary: 'Update user avatar via file upload',
      operationId: 'PublicUpdateAvatar',
      consumes: [],
      produces: [],
      security: [],
      tags: ["public::user"],
      deprecated: false,
    ),
  }) {
    final Uri $url = Uri.parse('/api/v1/public/user/avatar');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<MultipartFile>('avatarFile', avatarFile),
    ];
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      tag: swaggerMetaData,
    );
    return client.send<PublicUpdateAvatarResponse, PublicUpdateAvatarResponse>(
      $request,
    );
  }
}
