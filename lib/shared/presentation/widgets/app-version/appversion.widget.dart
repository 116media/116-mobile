import 'package:package_info_plus/package_info_plus.dart' show PackageInfo;

import '/shared/presentation/themes/extensions/build.context.extension.dart';
import 'package:flutter/material.dart';

class AppVersion extends StatefulWidget {
  const AppVersion({super.key});

  @override
  State<AppVersion> createState() => _AppVersionState();
}

class _AppVersionState extends State<AppVersion> {
  String _version = '';

  @override
  void initState() {
    super.initState();
    _loadVersion();
  }

  Future<void> _loadVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    if (mounted) {
      setState(() {
        _version = 'Version ${packageInfo.version}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.sizing.s32),
      child: Center(
        child: Text(
          _version.isEmpty ? 'Loading...' : _version,
          style: context.textTheme.bodySmall?.copyWith(
            color: Theme.of(
              context,
            ).textTheme.bodySmall?.color?.withValues(alpha: context.sizing.s0_5),
          ),
        ),
      ),
    );
  }
}
