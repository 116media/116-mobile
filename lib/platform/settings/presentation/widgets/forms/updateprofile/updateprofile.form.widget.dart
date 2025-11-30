import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext, SelectContext;
import 'package:gap/gap.dart' show Gap;
import 'package:world_countries/world_countries.dart' show IddExtension, WorldCountry;

import '../../../../../../modules/auth/infrastructure/models/hive/user/user.model.dart'
    show UserModel;
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
import '../../../../../../shared/presentation/widgets/inputfields/phone.inputfield.widget.dart'
    show PhoneInputField;
import '../../../bloc/updateprofile/updateprofile.bloc.dart' show UpdateProfileBloc;
import '../../../bloc/updateprofile/updateprofile.event.dart' show UpdateProfileSubmitted;
import '../../../bloc/updateprofile/updateprofile.state.dart' show UpdateProfileLoading;
import '../../../models/profile.model.dart' show ProfileModel;

/// Form widget for updating user profile information.
///
/// Allows users to update their username, email, and phone number.
/// Integrates with UpdateProfileBloc for state management.
class UpdateProfileForm extends StatefulWidget {
  final UserModel? user;

  const UpdateProfileForm({super.key, this.user});

  @override
  State<UpdateProfileForm> createState() => _UpdateProfileFormState();
}

class _UpdateProfileFormState extends State<UpdateProfileForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _userNameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  WorldCountry? _selectedCountry;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController(text: widget.user?.userName ?? '');
    _emailController = TextEditingController(text: widget.user?.email ?? '');
    _phoneController = TextEditingController(text: widget.user?.partialPhoneNumber ?? '');

    // Set initial country if user has country data
    if (widget.user?.countryIsoCode != null) {
      try {
        _selectedCountry = WorldCountry.fromCode(widget.user!.countryIsoCode!);
      } catch (_) {
        // If country code is invalid, leave as null
      }
    }
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _onCountrySelected(WorldCountry country) {
    setState(() {
      _selectedCountry = country;
    });
  }

  void _handleUpdateProfile() {
    if (_formKey.currentState?.validate() ?? false) {
      FocusScope.of(context).unfocus();

      final profile = ProfileModel(
        email: _emailController.text.trim().isEmpty ? null : _emailController.text.trim(),
        userName: _userNameController.text.trim().isEmpty ? null : _userNameController.text.trim(),
        countryName: _selectedCountry?.internationalName,
        countryIsoCode: _selectedCountry?.code,
        countryDialCode: _selectedCountry?.idd.phoneCode(),
        partialPhoneNumber: _phoneController.text.trim().isEmpty
            ? null
            : _phoneController.text.trim(),
      );

      context.read<UpdateProfileBloc>().add(UpdateProfileSubmitted(profile));
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select(
      (UpdateProfileBloc bloc) => bloc.state is UpdateProfileLoading,
    );

    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.sizing.s32),
        child: Column(
          spacing: context.sizing.s12,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderTitle(
              title: 'Edit Profile',
              subtitle: 'Update profile details, especially your username and telephone number.',
            ),

            Gap(context.sizing.s12),

            InputField(
              isFilled: true,
              label: 'Email',
              isDisabled: true,
              controller: _emailController,
            ),

            Divider(
              height: context.sizing.s24,
              thickness: context.sizing.s0_5,
              color: context.isDarkMode ? ColorsUtil.slate600 : ColorsUtil.slate300,
            ),

            Wrap(
              spacing: context.sizing.s12,
              runSpacing: context.sizing.s12,
              alignment: WrapAlignment.center,
              children: [
                InputField(
                  isFilled: true,
                  label: 'Username',
                  isDisabled: isLoading,
                  controller: _userNameController,
                ),
                PhoneInputField(
                  isFilled: true,
                  label: 'Telephone',
                  isDisabled: isLoading,
                  controller: _phoneController,
                  initialCountry: _selectedCountry,
                  onCountryChanged: _onCountrySelected,
                ),
              ],
            ),

            Gap(context.sizing.s12),

            FadeAnimation(
              delay: 0.65,
              child: SolidButton(
                isFull: true,
                text: "Save Changes",
                size: ButtonSize.sm,
                isLoading: isLoading,
                isDisabled: isLoading,
                onPressed: _handleUpdateProfile,
              ),
            ),

            OutlineButton(
              text: "Cancel",
              size: ButtonSize.sm,
              isDisabled: isLoading,
              color: ColorsUtil.error,
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
