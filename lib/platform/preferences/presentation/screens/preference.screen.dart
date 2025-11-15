import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider, ReadContext;
import 'package:go_router/go_router.dart';

import '../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../shared/presentation/providers/theme.provider.dart';
import '../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../shared/presentation/widgets/header/header.title.dart' show HeaderTitle;
import '../../../../shared/presentation/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../../onboarding/presentation/constants/onboarding.constants.dart'
    show kOnboardingRoutePath;
import '../../../session/application/usecases/update.preferences.status.usecase.dart'
    show UpdatePreferencesStatusUseCase;
import '../../domain/enums/thememode.enum.dart' show AppThemeMode;
import '../bloc/preferences.bloc.dart' show PreferencesBloc;
import '../bloc/preferences.event.dart'
    show PreferencesLoadStarted, PreferencesLanguageChanged, PreferencesThemeModeChanged;
import '../bloc/preferences.state.dart' show PreferencesState, PreferencesSuccess;
import '../widgets/language/language.listview.widget.dart' show LanguageListView;
import '../widgets/theme/theme.toggle.widget.dart' show SlidingThemeToggle;

/// Onboarding screen for setting user preferences including theme and language.
///
/// This screen is typically shown during the initial app setup or first launch,
/// allowing users to customize their experience before entering the main application.
///
/// Uses [PreferencesBloc] for state management and persists preferences to Hive.
/// Updates session state when preferences are completed.
class PreferenceScreen extends StatelessWidget {
  const PreferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PreferencesBloc>()..add(const PreferencesLoadStarted()),
      child: const _PreferenceScreenContent(),
    );
  }
}

class _PreferenceScreenContent extends StatelessWidget {
  const _PreferenceScreenContent();

  /// Handles theme mode changes.
  /// Updates both preferences and theme provider for immediate UI update.
  void _handleThemeChange(BuildContext context, bool darkMode) {
    final newThemeMode = darkMode ? AppThemeMode.dark : AppThemeMode.light;

    // Update preferences in Hive
    context.read<PreferencesBloc>().add(PreferencesThemeModeChanged(newThemeMode));

    // Also update ThemeProvider for immediate UI update
    context.read<ThemeProvider>().setThemeMode(newThemeMode);
  }

  /// Handles the continue button press.
  /// Marks preferences as completed and navigates to onboarding.
  Future<void> _handleSavePreference(BuildContext context) async {
    final updatePreferencesStatusUseCase = sl<UpdatePreferencesStatusUseCase>();
    await updatePreferencesStatusUseCase.execute(true);

    if (context.mounted) {
      context.go(kOnboardingRoutePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: BlocBuilder<PreferencesBloc, PreferencesState>(
          builder: (context, state) {
            // Show loading indicator while preferences load
            if (state is! PreferencesSuccess) {
              return const Center(child: CircularProgressIndicator());
            }

            final preferences = state.preferences;
            final isDarkMode = context.isDarkMode;

            return Padding(
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
                        Logo(
                          type: LogoType.icon,
                          isDarkTheme: isDarkMode,
                          height: context.sizing.s96,
                        ),
                        const HeaderTitle(
                          title: 'Set Your Preferences',
                          subtitle: 'Choose your preferred theme and language settings.',
                        ),
                      ],
                    ),
                  ),

                  // Theme Toggle
                  SlidingThemeToggle(
                    isDarkMode: isDarkMode,
                    onToggle: (darkMode) => _handleThemeChange(context, darkMode),
                  ),

                  Divider(
                    thickness: context.sizing.s0_5,
                    color: isDarkMode ? ColorsUtil.slate600 : ColorsUtil.slate300,
                  ),

                  // Language Selection
                  Expanded(
                    child: LanguageListView(
                      selectedLanguageCode: preferences.languageCode,
                      onLanguageSelected: (String code) {
                        context.read<PreferencesBloc>().add(PreferencesLanguageChanged(code));
                      },
                    ),
                  ),

                  // Continue Button
                  SolidButton(
                    isFull: true,
                    text: 'Continue',
                    size: ButtonSize.sm,
                    onPressed: () => _handleSavePreference(context),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
