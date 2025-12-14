import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/mdi.dart' show Mdi;
import 'package:iconify_flutter/icons/ri.dart' show Ri;

import '../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../infrastructure/constants/social.links.constants.dart' show SocialLinks;

/// Supported social media platforms with their associated data.
///
/// Each entry defines:
/// - [color]: The platform's brand color
/// - [url]: The external profile or channel link
/// - [icon]: The icon identifier from the icon library
enum SocialPlatform {
  youtube(color: ColorsUtil.youtube, url: SocialLinks.youtube, icon: Mdi.youtube),
  facebook(color: ColorsUtil.facebook, url: SocialLinks.facebook, icon: Mdi.facebook),
  instagram(color: ColorsUtil.instagram, url: SocialLinks.instagram, icon: Ri.instagram_fill),
  twitter(color: ColorsUtil.twitter, url: SocialLinks.twitter, icon: Mdi.twitter);

  final String url;
  final String icon;
  final Color color;

  const SocialPlatform({required this.color, required this.url, required this.icon});
}
