import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' show launchUrl;

import '../../../infrastructure/constants/support.links.constants.dart' show SupportLinks;
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../items/settings.tile.widget.dart' show SettingsTile;
import 'settings.section.header.widget.dart' show SettingsSectionHeader;

/// Settings section providing quick access to support-related resources.
///
/// Includes tiles for:
/// - FAQ
/// - Contacting the team
/// - Terms & Conditions
/// - Copyright compliance
///
/// Each tile displays an icon, optional subtitle, and navigates to the
/// corresponding external URL when tapped.
class SupportSection extends StatelessWidget {
  const SupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SettingsSectionHeader(title: 'Support'),
        Column(
          children: [
            SettingsTile(
              icon: Icons.help_outline,
              title: 'FAQ',
              iconBackgroundColor: ColorsUtil.green500,
              onTap: () => launchUrl(Uri.parse(SupportLinks.faq)),
            ),
            SettingsTile(
              icon: Icons.mail_outline,
              title: 'Contact Us',
              subtitle: 'Business inquiries & support',
              iconBackgroundColor: ColorsUtil.orange500,
              onTap: () => launchUrl(Uri.parse(SupportLinks.contactEmail)),
            ),
            SettingsTile(
              icon: Icons.description_outlined,
              title: 'Terms & Conditions',
              iconBackgroundColor: ColorsUtil.blue500,
              onTap: () => launchUrl(Uri.parse(SupportLinks.termsAndConditions)),
            ),
            SettingsTile(
              icon: Icons.copyright_outlined,
              title: 'Copyright Compliance',
              iconBackgroundColor: ColorsUtil.purple500,
              onTap: () => launchUrl(Uri.parse(SupportLinks.copyrightCompliance)),
            ),
          ],
        ),
      ],
    );
  }
}
