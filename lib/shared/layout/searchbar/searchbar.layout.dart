import '../../../shared/themes/extensions/build.context.extension.dart';
import 'package:flutter/material.dart';

/// Search bar widget designed to be used as a bottom component in app bars.
///
/// Implements [PreferredSizeWidget] to allow usage in [AppBar.bottom] or
/// [SliverAppBar.bottom]. Provides a styled search input field with theme
/// integration.
class SearchBarLayout extends StatelessWidget implements PreferredSizeWidget {
  const SearchBarLayout({super.key, this.onTap});

  final VoidCallback? onTap;

  /// The preferred height for this widget when used in an app bar.
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: context.sizing.s16,
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: context.sizing.s12, top: context.sizing.s4),
          child: TextField(
            onTap: onTap,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search, size: context.sizing.s20),
              fillColor: Colors.black.withValues(alpha: context.sizing.s0_5),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(context.sizing.s8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
