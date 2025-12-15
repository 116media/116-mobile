import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext, SelectContext;
import 'package:gap/gap.dart' show Gap;

import '../../../../../../i18n/strings.g.dart' show t;
import '../../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../../shared/presentation/widgets/buttons/outline.button.dart'
    show OutlineButton;
import '../../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../../shared/presentation/widgets/header/header.title.dart' show HeaderTitle;
import '../../../../../../shared/presentation/widgets/inputfields/inputfield.widget.dart'
    show InputField;
import '../../../bloc/changepassword/changepassword.bloc.dart' show ChangePasswordBloc;
import '../../../bloc/changepassword/changepassword.event.dart' show ChangePasswordSubmitted;
import '../../../bloc/changepassword/changepassword.state.dart' show ChangePasswordLoading;
import '../../../models/changepassword.credentials.model.dart' show ChangePasswordCredentialsModel;
import '../../../validators/changepassword.validator.dart' show ChangePasswordValidator;

/// Form widget for changing user password.
///
/// Allows users to change their password by providing current password,
/// new password, and confirmation. Integrates with ChangePasswordBloc
/// for state management.
class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({super.key});

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _oldPasswordController;
  late final TextEditingController _newPasswordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();

    _oldPasswordController = TextEditingController();
    _newPasswordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _handleChangePassword() {
    if (_formKey.currentState?.validate() ?? false) {
      final credentials = ChangePasswordCredentialsModel(
        oldPassword: _oldPasswordController.text,
        newPassword: _newPasswordController.text,
      );

      context.read<ChangePasswordBloc>().add(ChangePasswordSubmitted(credentials));
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select(
      (ChangePasswordBloc bloc) => bloc.state is ChangePasswordLoading,
    );

    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.sizing.s32),
        child: Column(
          spacing: context.sizing.s12,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderTitle(
              title: t.settings.account.passwordTitle,
              subtitle: t.settings.account.passwordSubtitle,
            ),

            Gap(context.sizing.s12),

            Wrap(
              spacing: context.sizing.s12,
              runSpacing: context.sizing.s12,
              alignment: WrapAlignment.center,
              children: [
                // Old Password Field
                InputField(
                  isFilled: true,
                  isPassword: true,
                  isDisabled: isLoading,
                  controller: _oldPasswordController,
                  label: t.shared.validation.currentPassword,
                  validator: ChangePasswordValidator.oldPassword(
                    t.shared.validation.currentPassword,
                  ),
                ),

                // New Password Field
                InputField(
                  isFilled: true,
                  isPassword: true,
                  isDisabled: isLoading,
                  controller: _newPasswordController,
                  label: t.shared.validation.newPassword,
                  validator: ChangePasswordValidator.newPassword(t.shared.validation.newPassword),
                ),

                // Confirm New Password Field
                InputField(
                  isFilled: true,
                  isPassword: true,
                  isDisabled: isLoading,
                  controller: _confirmPasswordController,
                  label: t.shared.validation.confirmNewPassword,
                  validator: (value) => ChangePasswordValidator.confirmPassword(
                    t.shared.validation.confirmNewPassword,
                    _newPasswordController.text,
                  )(value),
                ),
              ],
            ),

            Gap(context.sizing.s12),

            FadeAnimation(
              child: SolidButton(
                isFull: true,
                size: ButtonSize.sm,
                isLoading: isLoading,
                text: t.shared.common.save,
                // isDisabled: isLoading || !_hasFormChanged,
                onPressed: _handleChangePassword,
              ),
            ),

            OutlineButton(
              size: ButtonSize.sm,
              isDisabled: isLoading,
              color: ColorsUtil.error,
              text: t.shared.common.cancel,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
