import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;

import '../../../../../i18n/strings.g.dart' show t;
import '../../../../../platform/preferences/domain/value-objects/languages.dart' show Languages;
import '../../../../../platform/preferences/presentation/bloc/preferences.bloc.dart'
    show PreferencesBloc;
import '../../../../../platform/preferences/presentation/bloc/preferences.event.dart'
    show PreferencesThemeModeChanged;
import '../../../../../platform/preferences/presentation/bloc/preferences.state.dart'
    show PreferencesState, PreferencesSuccess;
import '../../../../../platform/preferences/domain/enums/thememode.enum.dart' show AppThemeMode;
import '../../../../../shared/presentation/providers/theme.provider.dart' show ThemeProvider;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../dialogs/language.picker.bottomsheet.dart' show showLanguagePickerBottomSheet;
import '../items/settings.tile.widget.dart' show SettingsTile;
import '../items/settings.toggle.widget.dart' show SettingsToggle;
import 'settings.section.header.widget.dart' show SettingsSectionHeader;

/// Settings section that allows users to customize their app experience,
/// including theme selection, language preferences, and notification options.
///
/// This widget listens to [PreferencesBloc] and renders only when valid
/// preference data is available through a [PreferencesSuccess] state.
///
/// Features:
/// - Toggle between light and dark themes.
/// - Select the app's display language via a bottom sheet.
/// - Manage notification preferences (placeholder until integrated).
///
/// Theme changes are forwarded to both the [PreferencesBloc] and the
/// [ThemeProvider] to ensure persistence and immediate UI updates.
class PreferencesSection extends StatelessWidget {
  const PreferencesSection({super.key});

  void _handleThemeChange(BuildContext context, bool isDarkMode) {
    final newThemeMode = isDarkMode ? AppThemeMode.dark : AppThemeMode.light;
    context.read<PreferencesBloc>().add(PreferencesThemeModeChanged(newThemeMode));
    context.read<ThemeProvider>().setThemeMode(newThemeMode);
  }

  void _showLanguagePicker(BuildContext context, String currentLanguageCode) {
    showLanguagePickerBottomSheet(context, currentLanguageCode);
  }

  String _getLanguageName(String code) {
    final languages = Languages.defaults();
    final language = languages.all.firstWhere(
      (l) => l.code == code,
      orElse: () => languages.all.first,
    );
    return language.englishName;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreferencesBloc, PreferencesState>(
      builder: (context, state) {
        if (state is! PreferencesSuccess) {
          return const SizedBox.shrink();
        }

        final preferences = state.preferences;
        final isDarkMode = context.isDarkMode;
        final languageName = _getLanguageName(preferences.languageCode);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingsSectionHeader(title: t.settings.preferences.title),
            Column(
              children: [
                SettingsToggle(
                  icon: Icons.dark_mode_outlined,
                  title: t.settings.preferences.darkMode,
                  subtitle: isDarkMode
                      ? t.settings.preferences.darkModeOn
                      : t.settings.preferences.darkModeOff,
                  value: isDarkMode,
                  iconBackgroundColor: ColorsUtil.yellow500,
                  onChanged: (value) => _handleThemeChange(context, value),
                ),
                SettingsTile(
                  icon: Icons.language_outlined,
                  title: t.settings.preferences.language,
                  subtitle: languageName,
                  iconBackgroundColor: ColorsUtil.blue500,
                  onTap: () => _showLanguagePicker(context, preferences.languageCode),
                ),
                SettingsToggle(
                  icon: Icons.notifications_outlined,
                  title: t.settings.preferences.notifications,
                  subtitle: t.settings.preferences.notificationsSubtitle,
                  value: true, // TODO: Connect to actual notification settings
                  iconBackgroundColor: ColorsUtil.purple500,
                  onChanged: (value) {
                    // TODO: Implement notification toggle
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
