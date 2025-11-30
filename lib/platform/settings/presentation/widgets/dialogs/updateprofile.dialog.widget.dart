import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener, BlocProvider;

import '../../../../../modules/auth/infrastructure/models/hive/user/user.model.dart' show UserModel;
import '../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../../../../../shared/presentation/widgets/bottomsheet/bottomsheet.pullbar.dart'
    show BottomSheetPullBar;
import '../../bloc/updateprofile/updateprofile.bloc.dart' show UpdateProfileBloc;
import '../../bloc/updateprofile/updateprofile.state.dart'
    show UpdateProfileState, UpdateProfileSuccess, UpdateProfileFailure;
import '../forms/updateprofile/updateprofile.form.widget.dart' show UpdateProfileForm;

/// Dialog for editing user profile information.
///
/// Allows authenticated users to update their username, email, and phone number.
/// Integrates with UpdateProfileBloc for state management.
class UpdateProfileDialog extends StatefulWidget {
  final UserModel? user;

  const UpdateProfileDialog({super.key, this.user});

  @override
  State<UpdateProfileDialog> createState() => _UpdateProfileDialogState();
}

class _UpdateProfileDialogState extends State<UpdateProfileDialog> {
  void _updateProfileStateListener(BuildContext ctx, UpdateProfileState state) {
    if (state is UpdateProfileSuccess) {
      final rootContext = Navigator.of(ctx, rootNavigator: true).context;
      Navigator.of(ctx).pop();

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (rootContext.mounted) {
          DialogUtil.success(rootContext, message: 'Profile updated successfully!');
        }
      });
    } else if (state is UpdateProfileFailure) {
      DialogUtil.error(context, message: state.failure.detail);
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;

    return BlocProvider(
      create: (context) => sl<UpdateProfileBloc>(),
      child: BlocListener<UpdateProfileBloc, UpdateProfileState>(
        listener: (context, state) => _updateProfileStateListener(context, state),
        child: Dialog(
          backgroundColor: backgroundColor,
          alignment: Alignment.bottomCenter,
          insetPadding: EdgeInsets.symmetric(horizontal: context.sizing.s12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizing.s12)),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(context.sizing.s24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const BottomSheetPullBar(),
                  Center(child: UpdateProfileForm(user: widget.user)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
