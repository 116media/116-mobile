import 'package:freezed_annotation/freezed_annotation.dart';

part 'signout.response.entity.freezed.dart';

/// Domain entity representing the response from a sign out request.
///
/// Contains the success status indicating whether the user
/// was successfully signed out and session data cleared.
@freezed
abstract class SignOutResponseEntity with _$SignOutResponseEntity {
  const factory SignOutResponseEntity({required bool isSuccess}) = _SignOutResponseEntity;
}
