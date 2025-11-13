import 'dart:async' show Timer;

import 'package:cent16/shared/presentation/themes/extensions/build.context.extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener;

import '../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../bloc/connectivity.bloc.dart' show ConnectivityBloc;
import '../bloc/connectivity.state.dart'
    show ConnectivityState, ConnectivityDisconnected, ConnectivityRestored, ConnectivityConnected;

/// Widget that displays a banner when connectivity status changes.
///
/// Shows a **persistent** red banner when connection is lost (stays visible
/// until connection is restored). Shows a temporary green banner when
/// connection is restored (auto-dismisses after 3 seconds).
class ConnectivityBanner extends StatefulWidget {
  final Widget child;

  const ConnectivityBanner({required this.child, super.key});

  @override
  State<ConnectivityBanner> createState() => _ConnectivityBannerState();
}

class _ConnectivityBannerState extends State<ConnectivityBanner> {
  Timer? _dismissTimer;

  @override
  void dispose() {
    _dismissTimer?.cancel();
    super.dispose();
  }

  void _showDisconnectedBanner(BuildContext context) {
    _dismissTimer?.cancel();
    ScaffoldMessenger.of(context).clearMaterialBanners();

    // Show persistent banner (no auto-dismiss)
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        elevation: 0,
        dividerColor: Colors.transparent,
        backgroundColor: ColorsUtil.error,
        minActionBarHeight: context.sizing.s24,
        content: const Text(
          'No internet connection',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        actions: const [SizedBox.shrink()],
      ),
    );
  }

  void _showRestoredBanner(BuildContext context) {
    _dismissTimer?.cancel();
    ScaffoldMessenger.of(context).clearMaterialBanners();

    // Show temporary success banner
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        elevation: 0,
        dividerColor: Colors.transparent,
        backgroundColor: ColorsUtil.success,
        minActionBarHeight: context.sizing.s24,
        content: const Text(
          'Connection restored',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        actions: const [SizedBox.shrink()],
      ),
    );

    // Auto-dismiss after 3 seconds
    _dismissTimer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        ScaffoldMessenger.of(context).clearMaterialBanners();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityBloc, ConnectivityState>(
      listener: (context, state) => switch (state) {
        ConnectivityDisconnected() => _showDisconnectedBanner(context),
        ConnectivityRestored() => _showRestoredBanner(context),
        ConnectivityConnected() => ScaffoldMessenger.of(context).clearMaterialBanners(),
        _ => null,
      },
      child: widget.child,
    );
  }
}
