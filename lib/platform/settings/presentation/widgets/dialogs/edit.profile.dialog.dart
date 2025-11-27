import 'package:flutter/material.dart';

import '../../../../../modules/auth/infrastructure/models/hive/user/user.model.dart' show UserModel;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';

/// Dialog for editing user profile information.
///
/// Allows authenticated users to update their username and email.
class EditProfileDialog extends StatefulWidget {
  final UserModel? user;

  const EditProfileDialog({super.key, this.user});

  @override
  State<EditProfileDialog> createState() => _EditProfileDialogState();
}

class _EditProfileDialogState extends State<EditProfileDialog> {
  late final TextEditingController _userNameController;
  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController(text: widget.user?.userName ?? '');
    _emailController = TextEditingController(text: widget.user?.email ?? '');
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _handleSave() {
    // TODO: Implement profile update logic
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizing.s16)),
      child: Padding(
        padding: EdgeInsets.all(context.sizing.s24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Edit Profile',
              style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: context.sizing.s24),
            TextField(
              controller: _userNameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(context.sizing.s8)),
              ),
            ),
            SizedBox(height: context.sizing.s16),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(context.sizing.s8)),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: context.sizing.s24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancel'),
                ),
                SizedBox(width: context.sizing.s8),
                FilledButton(onPressed: _handleSave, child: const Text('Save')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
