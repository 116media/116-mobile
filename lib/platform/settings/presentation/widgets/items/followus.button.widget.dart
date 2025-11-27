import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart' show Iconify;
import 'package:url_launcher/url_launcher.dart' show launchUrl;

import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../enums/social.platform.enum.dart' show SocialPlatform;

/// A tappable button used to link to one of the app’s social media platforms.
///
/// Displays the platform’s icon with its brand color and opens the
/// associated external URL when tapped. Styled with consistent sizing,
/// rounded corners, and a subtle background tint based on the platform color.
///
/// The [platform] parameter determines the icon, URL, and colors shown.
class FollowUsButton extends StatelessWidget {
  final SocialPlatform platform;

  const FollowUsButton({super.key, required this.platform});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(platform.url)),
      borderRadius: BorderRadius.circular(context.sizing.s8),
      child: Container(
        width: context.sizing.s80,
        height: context.sizing.s80,
        padding: EdgeInsets.all(context.sizing.s20),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: platform.color.withValues(alpha: 0.1),
          border: Border.all(
            width: context.sizing.s2_5,
            color: platform.color.withValues(alpha: 0.1),
          ),
          borderRadius: BorderRadius.circular(context.sizing.s8),
        ),
        child: Iconify(platform.icon, size: context.sizing.s24, color: platform.color),
      ),
    );
  }
}
