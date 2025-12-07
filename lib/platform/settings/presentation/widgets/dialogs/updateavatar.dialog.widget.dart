import 'dart:io' show File;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocProvider, BlocListener, ReadContext, SelectContext;
import 'package:gap/gap.dart' show Gap;
import 'package:image_cropper/image_cropper.dart'
    show
        AndroidUiSettings,
        CropAspectRatioPreset,
        CropStyle,
        CroppedFile,
        IOSUiSettings,
        ImageCompressFormat,
        ImageCropper;
import 'package:image_picker/image_picker.dart' show ImagePicker, ImageSource, XFile;

import '../../../../../modules/auth/infrastructure/models/hive/user/user.model.dart' show UserModel;
import '../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../../../../../shared/presentation/widgets/bottomsheet/bottomsheet.pullbar.dart'
    show BottomSheetPullBar;
import '../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../shared/presentation/widgets/buttons/outline.button.dart' show OutlineButton;
import '../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../shared/presentation/widgets/header/header.title.dart' show HeaderTitle;
import '../../bloc/updateavatar/updateavatar.bloc.dart' show UpdateAvatarBloc;
import '../../bloc/updateavatar/updateavatar.event.dart' show UpdateAvatarSubmitted;
import '../../bloc/updateavatar/updateavatar.state.dart'
    show UpdateAvatarState, UpdateAvatarLoading, UpdateAvatarSuccess, UpdateAvatarFailure;

/// Dialog for updating user avatar.
///
/// Allows users to select an image from gallery or camera, crop it,
/// and upload it as their new avatar.
class UpdateAvatarDialog extends StatelessWidget {
  final UserModel? user;

  const UpdateAvatarDialog({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UpdateAvatarBloc>(
      create: (_) => sl<UpdateAvatarBloc>(),
      child: _UpdateAvatarDialogContent(user: user),
    );
  }
}

class _UpdateAvatarDialogContent extends StatefulWidget {
  final UserModel? user;

  const _UpdateAvatarDialogContent({this.user});

  @override
  State<_UpdateAvatarDialogContent> createState() => _UpdateAvatarDialogContentState();
}

class _UpdateAvatarDialogContentState extends State<_UpdateAvatarDialogContent> {
  File? previewFile;

  Future<File> _renameFile(String originalPath, String newFileName) async {
    final originalFile = File(originalPath);
    final directory = originalFile.parent.path;

    final newPath = '$directory/$newFileName';

    return originalFile.copy(newPath);
  }

  Future<void> _pickAndCropImage(BuildContext context, ImageSource source) async {
    try {
      final avatarBloc = context.read<UpdateAvatarBloc>();
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: source, maxHeight: 512, maxWidth: 512);

      if (image == null) return;

      final CroppedFile? croppedFile = await ImageCropper().cropImage(
        compressQuality: 70,
        sourcePath: image.path,
        compressFormat: ImageCompressFormat.jpg,
        uiSettings: [
          AndroidUiSettings(
            lockAspectRatio: true,
            toolbarTitle: 'Crop Avatar',
            cropStyle: CropStyle.circle,
            toolbarColor: ColorsUtil.primary,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.square,
            aspectRatioPresets: [CropAspectRatioPreset.square],
          ),
          IOSUiSettings(
            title: 'Crop Avatar',
            cropStyle: CropStyle.circle,
            aspectRatioLockEnabled: true,
            resetAspectRatioEnabled: false,
            aspectRatioPickerButtonHidden: true,
            aspectRatioPresets: [CropAspectRatioPreset.square],
          ),
        ],
      );

      if (!context.mounted || croppedFile == null) return;

      // rename the cropped file
      final userAvatarFile = await _renameFile(croppedFile.path, '${widget.user?.id}.jpg');

      // set preview file
      setState(() {
        previewFile = userAvatarFile;
      });

      // Upload the cropped image
      avatarBloc.add(UpdateAvatarSubmitted(userAvatarFile));
    } catch (e) {
      if (!context.mounted) return;
      DialogUtil.error(context, message: 'Failed to select image: ${e.toString()}');
    }
  }

  /// Handles UpdateAvatarBloc state changes for success and failure.
  void _updateAvatarStateListener(BuildContext ctx, UpdateAvatarState state) {
    if (state is UpdateAvatarSuccess) {
      final rootContext = Navigator.of(ctx, rootNavigator: true).context;
      Navigator.of(ctx).pop();

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (rootContext.mounted) {
          DialogUtil.success(rootContext, message: 'Avatar updated successfully!');
        }
      });
    } else if (state is UpdateAvatarFailure) {
      DialogUtil.error(context, message: state.failure.detail);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;
    final isLoading = context.select((UpdateAvatarBloc bloc) => bloc.state is UpdateAvatarLoading);

    return BlocListener<UpdateAvatarBloc, UpdateAvatarState>(
      listener: _updateAvatarStateListener,
      child: Dialog(
        backgroundColor: backgroundColor,
        alignment: Alignment.bottomCenter,
        insetPadding: EdgeInsets.symmetric(horizontal: context.sizing.s12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizing.s16)),
        child: Padding(
          padding: EdgeInsets.all(context.sizing.s24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: context.sizing.s32,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const BottomSheetPullBar(),
              const HeaderTitle(
                title: "Edit Avatar",
                subtitle: "Select an image from your camera or gallery to set as your new avatar.",
              ),

              if (previewFile != null)
                ClipOval(
                  child: Image.file(
                    previewFile!,
                    fit: BoxFit.cover,
                    width: screenWidth * context.sizing.s0_5,
                    height: screenWidth * context.sizing.s0_5,
                  ),
                ),

              Flex(
                direction: Axis.vertical,
                spacing: context.sizing.s12,
                children: [
                  FadeAnimation(
                    child: SolidButton(
                      isFull: true,
                      text: 'Camera',
                      size: ButtonSize.sm,
                      isLoading: isLoading,
                      isDisabled: isLoading,
                      onPressed: () => _pickAndCropImage(context, ImageSource.camera),
                    ),
                  ),
                  FadeAnimation(
                    delay: 0.65,
                    reverse: true,
                    child: SolidButton(
                      isFull: true,
                      text: 'Gallery',
                      size: ButtonSize.sm,
                      isLoading: isLoading,
                      isDisabled: isLoading,
                      onPressed: () => _pickAndCropImage(context, ImageSource.gallery),
                    ),
                  ),
                  Gap(context.sizing.s12),
                  OutlineButton(
                    text: 'Cancel',
                    size: ButtonSize.sm,
                    isDisabled: isLoading,
                    color: ColorsUtil.error,
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
