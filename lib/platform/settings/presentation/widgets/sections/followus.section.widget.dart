import 'package:flutter/material.dart';

import '../../enums/social.platform.enum.dart' show SocialPlatform;
import '../items/followus.button.widget.dart' show FollowUsButton;
import 'settings.section.header.widget.dart' show SettingsSectionHeader;

/// Settings section that displays quick-access buttons for the app’s
/// social media platforms.
///
/// This widget renders a horizontal row of [FollowButton] widgets,
/// one for each supported [SocialPlatform], allowing users to easily
/// navigate to and follow the app’s official social channels.
class FollowUsSection extends StatelessWidget {
  const FollowUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SettingsSectionHeader(title: 'Follow Us'),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: SocialPlatform.values
                  .map((platform) => FollowUsButton(platform: platform))
                  .toList(),
            ),
          ],
        ),
      ],
    );
  }
}
