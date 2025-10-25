import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../shared/providers/theme.provider.dart';
import '../../../../shared/utils/colors.util.dart' show ColorsUtil;
import '../../../../shared/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../shared/widgets/header/header.title.dart' show HeaderTitle;
import '../../../../shared/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../widgets/language/language.listview.widget.dart' show LanguageListView;
import '../widgets/theme/theme.toggle.widget.dart' show SlidingThemeToggle;

/// Onboarding screen for setting user preferences including theme and language.
///
/// This screen is typically shown during the initial app setup or first launch,
/// allowing users to customize their experience before entering the main application.
///
/// It uses [Provider] for theme state management and maintains
/// local state for user selections before they're confirmed.
class PreferenceScreen extends StatefulWidget {
  const PreferenceScreen({super.key});

  @override
  State<PreferenceScreen> createState() => _PreferenceScreenState();
}

class _PreferenceScreenState extends State<PreferenceScreen> {
  /// User's explicit theme preference (null means following system theme).
  ///
  /// When null, the theme follows the system setting via [context.isDarkMode].
  /// When set to true/false, the user has explicitly chosen dark/light mode.
  bool? _userThemePreference;

  String selectedLanguageCode = 'en';

  /// Computed property that determines the effective dark mode state.
  ///
  /// Returns [_userThemePreference] if the user has made an explicit choice,
  /// otherwise falls back to the system theme via [context.isDarkMode].
  bool get isDarkMode {
    return _userThemePreference ?? context.isDarkMode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: context.sizing.s24,
            horizontal: context.sizing.s24,
          ),
          child: Column(
            spacing: context.sizing.s36,
            children: [
              Expanded(
                child: Column(
                  spacing: context.sizing.s24,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Logo(type: LogoType.icon, isDarkTheme: context.isDarkMode),
                    HeaderTitle(
                      title: 'Set Your Preferences',
                      subtitle: 'Choose your preferred theme and language settings.',
                    ),
                  ],
                ),
              ),

              SlidingThemeToggle(
                isDarkMode: context.isDarkMode,
                onToggle: (bool darkMode) {
                  setState(() {
                    _userThemePreference = darkMode;
                  });
                  context.read<ThemeProvider>().toggleTheme(darkMode);
                },
              ),

              Divider(
                thickness: context.sizing.s0_5,
                color: context.isDarkMode ? ColorsUtil.slate600 : ColorsUtil.slate300,
              ),

              Expanded(
                child: LanguageListView(
                  selectedLanguageCode: selectedLanguageCode,
                  isDarkMode: context.isDarkMode,
                  onLanguageSelected: (String code) {
                    setState(() {
                      selectedLanguageCode = code;
                    });
                  },
                ),
              ),

              SolidButton(
                size: 'sm',
                text: 'Continue',
                onPressed: () {
                  // Handle continue action
                  // You can pass the selected language back or navigate to next screen
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
