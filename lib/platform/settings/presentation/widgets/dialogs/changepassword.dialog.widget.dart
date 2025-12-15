import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener, BlocProvider;

import '../../../../../i18n/strings.g.dart' show t;
import '../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../../../../../shared/presentation/widgets/bottomsheet/bottomsheet.pullbar.dart'
    show BottomSheetPullBar;
import '../../bloc/changepassword/changepassword.bloc.dart' show ChangePasswordBloc;
import '../../bloc/changepassword/changepassword.state.dart'
    show ChangePasswordState, ChangePasswordSuccess, ChangePasswordFailure;
import '../forms/changepassword/changepassword.form.widget.dart' show ChangePasswordForm;

/// Dialog for changing user password.
///
/// Allows authenticated users to update their password by providing
/// current password, new password, and confirmation.
/// Integrates with ChangePasswordBloc for state management.
class ChangePasswordDialog extends StatelessWidget {
  const ChangePasswordDialog({super.key});

  /// Handles ChangePasswordBloc state changes for success and failure.
  void _changePasswordStateListener(BuildContext ctx, ChangePasswordState state) {
    if (state is ChangePasswordSuccess) {
      final rootContext = Navigator.of(ctx, rootNavigator: true).context;
      Navigator.of(ctx).pop();

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (rootContext.mounted) {
          DialogUtil.success(rootContext, message: t.settings.account.passwordChangeSuccess);
        }
      });
    } else if (state is ChangePasswordFailure) {
      DialogUtil.error(ctx, message: state.failure.detail);
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;

    return BlocProvider(
      create: (context) => sl<ChangePasswordBloc>(),
      child: BlocListener<ChangePasswordBloc, ChangePasswordState>(
        listener: _changePasswordStateListener,
        child: Dialog(
          backgroundColor: backgroundColor,
          alignment: Alignment.bottomCenter,
          insetPadding: EdgeInsets.symmetric(horizontal: context.sizing.s12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizing.s12)),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: context.sizing.s12,
                horizontal: context.sizing.s24,
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BottomSheetPullBar(),
                  Center(child: ChangePasswordForm()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
