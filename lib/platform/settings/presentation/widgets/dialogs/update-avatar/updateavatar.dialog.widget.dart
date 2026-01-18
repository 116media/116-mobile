import 'dart:io' show File;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart'
    show
        CropAspectRatioPreset,
        CropStyle,
        ImageCompressFormat,
        AndroidUiSettings,
        IOSUiSettings,
        ImageCropper;
import 'package:image_picker/image_picker.dart' show ImageSource, ImagePicker;

import '../../../../../../i18n/strings.g.dart' show t;
import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../modules/auth/infrastructure/models/hive/user/user.model.dart'
    show UserModel;
import '../../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../../../../../../shared/presentation/widgets/bottomsheet/bottomsheet.pullbar.dart'
    show BottomSheetPullBar;
import '../../../../../../shared/presentation/widgets/header/header.title.dart' show HeaderTitle;
import '../../../bloc/updateavatar/updateavatar.bloc.dart' show UpdateAvatarBloc;
import '../../../bloc/updateavatar/updateavatar.event.dart' show UpdateAvatarSubmitted;
import '../../../bloc/updateavatar/updateavatar.state.dart'
    show UpdateAvatarState, UpdateAvatarSuccess, UpdateAvatarFailure, UpdateAvatarLoading;
import '../../../constants/settings.constants.dart' show kAvatarMaxSize;
import 'updateavatar.actions.widget.dart' show ActionButtons;
import 'updateavatar.loading.widget.dart' show LoadingOverlay;
import 'updateavatar.preview.widget.dart' show AvatarPreview;

class UpdateAvatarDialog extends StatelessWidget {
  final UserModel? user;

  const UpdateAvatarDialog({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
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
  bool _isPicking = false;

  void _setPicking(bool value) {
    if (mounted) setState(() => _isPicking = value);
  }

  Future<File> _renameFile(String path, String newName) async {
    final original = File(path);
    final dir = original.parent.path;
    return original.copy('$dir/$newName');
  }

  /// Pick + crop + upload avatar file
  Future<void> _pickAndCropImage(ImageSource source) async {
    try {
      _setPicking(true);
      final picker = ImagePicker();
      final avatarBloc = context.read<UpdateAvatarBloc>();
      final image = await picker.pickImage(
        source: source,
        maxHeight: kAvatarMaxSize,
        maxWidth: kAvatarMaxSize,
      );
      _setPicking(false);

      if (image == null) return;

      final cropped = await ImageCropper().cropImage(
        sourcePath: image.path,
        compressQuality: 70,
        compressFormat: ImageCompressFormat.jpg,
        uiSettings: [_androidCropUi, _iosCropUi],
      );

      if (!mounted || cropped == null) return;

      final renamed = await _renameFile(cropped.path, '${widget.user?.id}.jpg');

      setState(() => previewFile = renamed);

      avatarBloc.add(UpdateAvatarSubmitted(renamed));
    } catch (e) {
      _setPicking(false);
      if (mounted) {
        DialogUtil.error(context, message: t.settings.avatar.selectError(error: e.toString()));
      }
    }
  }

  AndroidUiSettings get _androidCropUi => AndroidUiSettings(
    toolbarTitle: t.settings.avatar.cropTitle,
    toolbarColor: ColorsUtil.primary,
    toolbarWidgetColor: Colors.white,
    cropStyle: CropStyle.circle,
    lockAspectRatio: true,
    initAspectRatio: CropAspectRatioPreset.square,
    aspectRatioPresets: [CropAspectRatioPreset.square],
  );

  IOSUiSettings get _iosCropUi => IOSUiSettings(
    title: t.settings.avatar.cropTitle,
    cropStyle: CropStyle.circle,
    aspectRatioLockEnabled: true,
    resetAspectRatioEnabled: false,
    aspectRatioPickerButtonHidden: true,
    aspectRatioPresets: [CropAspectRatioPreset.square],
  );

  void _onBlocState(BuildContext ctx, UpdateAvatarState state) {
    if (state is UpdateAvatarSuccess) {
      Navigator.of(ctx).pop();
      final root = Navigator.of(ctx, rootNavigator: true).context;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (root.mounted) {
          DialogUtil.success(root, message: t.settings.profile.updateSuccess);
        }
      });
    } else if (state is UpdateAvatarFailure) {
      DialogUtil.error(context, failure: state.failure);
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;
    final isUploading = context.select(
      (UpdateAvatarBloc bloc) => bloc.state is UpdateAvatarLoading,
    );

    return BlocListener<UpdateAvatarBloc, UpdateAvatarState>(
      listener: _onBlocState,
      child: Stack(
        children: [
          Dialog(
            backgroundColor: backgroundColor,
            alignment: Alignment.bottomLeft,
            insetPadding: EdgeInsets.symmetric(horizontal: context.sizing.s12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizing.s16)),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: context.sizing.s12,
                horizontal: context.sizing.s24,
              ),
              child: Column(
                spacing: context.sizing.s32,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const BottomSheetPullBar(),
                  HeaderTitle(title: t.settings.avatar.title, subtitle: t.settings.avatar.subtitle),
                  if (previewFile != null) AvatarPreview(file: previewFile!),

                  ActionButtons(
                    isUploading: isUploading,
                    onCamera: () => _pickAndCropImage(ImageSource.camera),
                    onGallery: () => _pickAndCropImage(ImageSource.gallery),
                  ),
                ],
              ),
            ),
          ),

          if (_isPicking || isUploading) const LoadingOverlay(),
        ],
      ),
    );
  }
}
