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
import '../../../bloc/updateprofile/updateprofile.bloc.dart' show UpdateProfileBloc;
import '../../../bloc/updateprofile/updateprofile.event.dart' show UpdateProfileSubmitted;
import '../../../bloc/updateprofile/updateprofile.state.dart' show UpdateProfileLoading;
import '../../../models/profile.model.dart' show ProfileModel;
import 'editable.fields.widget.dart' show EditableFormFields;

/// Form widget for updating user profile information.
///
/// Allows users to update their username, email, and phone number.
/// Integrates with UpdateProfileBloc for state management.
class UpdateProfileForm extends StatefulWidget {
  final UserModel? user;
  final WorldCountry? initialCountry;

  const UpdateProfileForm({super.key, this.user, this.initialCountry});

  @override
  State<UpdateProfileForm> createState() => _UpdateProfileFormState();
}

class _UpdateProfileFormState extends State<UpdateProfileForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  late final TextEditingController _userNameController;
  WorldCountry? _selectedCountry;

  // Store initial values to detect changes
  late final String _initialPhone;
  late final String _initialUserName;
  late final String? _initialCountryCode;

  @override
  void initState() {
    super.initState();

    // Store initial values
    final initialEmail = widget.user?.email ?? '';
    _initialUserName = widget.user?.userName ?? '';
    _initialPhone = widget.user?.partialPhoneNumber ?? '';
    _initialCountryCode = widget.initialCountry?.code;

    // Initialize controllers with initial values
    _emailController = TextEditingController(text: initialEmail);
    _userNameController = TextEditingController(text: _initialUserName);
    _phoneController = TextEditingController(text: _initialPhone);
    _selectedCountry = widget.initialCountry;

    // Add listeners to text controllers to rebuild on change
    _userNameController.addListener(_onFormFieldChanged);
    _phoneController.addListener(_onFormFieldChanged);
  }

  @override
  void dispose() {
    /// Remove listeners
    _userNameController.removeListener(_onFormFieldChanged);
    _phoneController.removeListener(_onFormFieldChanged);

    /// Dispose controllers
    _emailController.dispose();
    _phoneController.dispose();
    _userNameController.dispose();
    super.dispose();
  }

  /// Checks if any form field has been modified from its initial value.
  bool get _hasFormChanged {
    final userNameChanged = _userNameController.text != _initialUserName;
    final phoneChanged = _phoneController.text != _initialPhone;
    final countryChanged = _selectedCountry?.code != _initialCountryCode;

    return userNameChanged || phoneChanged || countryChanged;
  }

  /// Triggers rebuild when text field values change.
  void _onFormFieldChanged() {
    setState(() {});
  }

  void _onCountrySelected(WorldCountry country) {
    setState(() {
      _selectedCountry = country;
    });
  }

  void _handleUpdateProfile() {
    final form = _formKey.currentState;
    if (form == null || !form.validate()) return;

    FocusScope.of(context).unfocus();

    final country = _selectedCountry;
    final phone = _phoneController.text.trim();
    final email = _emailController.text.trim();
    final username = _userNameController.text.trim();

    final profile = ProfileModel(
      email: email.isEmpty ? null : email,
      userName: username.isEmpty ? null : username,
      countryName: country?.internationalName,
      countryIsoCode: country?.code,
      countryDialCode: country?.idd.phoneCode(),
      partialPhoneNumber: phone.isEmpty ? null : phone,
    );

    context.read<UpdateProfileBloc>().add(UpdateProfileSubmitted(profile));
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

            EditableFormFields(
              isDisabled: isLoading,
              userNameController: _userNameController,
              phoneController: _phoneController,
              selectedCountry: _selectedCountry,
              onCountryChanged: _onCountrySelected,
            ),

            Gap(context.sizing.s12),

            FadeAnimation(
              delay: 0.65,
              child: SolidButton(
                isFull: true,
                text: "Save Changes",
                size: ButtonSize.sm,
                isLoading: isLoading,
                isDisabled: isLoading || !_hasFormChanged,
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
