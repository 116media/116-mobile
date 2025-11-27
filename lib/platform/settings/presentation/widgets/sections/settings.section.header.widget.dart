import 'package:flutter/material.dart';

import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';

/// Simple header widget used to label sections within the settings page.
///
/// Displays the provided [title] with section-appropriate styling and spacing,
/// helping visually separate different groups of settings items.
class SettingsSectionHeader extends StatelessWidget {
  final String title;

  const SettingsSectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, context.sizing.s4),
      child: Text(
        title,
        style: context.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
