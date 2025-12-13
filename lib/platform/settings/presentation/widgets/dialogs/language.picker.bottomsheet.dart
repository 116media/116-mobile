import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:gap/gap.dart' show Gap;

import '../../../../../i18n/strings.g.dart' show t;
import '../../../../../platform/preferences/domain/value-objects/languages.dart' show Languages;
import '../../../../../platform/preferences/presentation/bloc/preferences.bloc.dart'
    show PreferencesBloc;
import '../../../../../platform/preferences/presentation/bloc/preferences.event.dart'
    show PreferencesLanguageChanged;
import '../../../../../platform/preferences/presentation/widgets/language/language.options.widget.dart'
    show LanguageOption;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/widgets/bottomsheet/bottomsheet.pullbar.dart'
    show BottomSheetPullBar;
import '../../../../../shared/presentation/widgets/header/header.title.dart' show HeaderTitle;

/// Shows a bottom sheet for selecting the app language.
///
/// Displays a modal bottom sheet containing [LanguagePickerContent] with all
/// supported languages. The sheet is scroll-controlled and features rounded
/// top corners.
///
/// Parameters:
/// - [context]: BuildContext for showing the modal bottom sheet
/// - [currentLanguageCode]: The currently selected language code to highlight
void showLanguagePickerBottomSheet(BuildContext context, String currentLanguageCode) async {
  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(context.sizing.s16)),
    ),
    builder: (context) => LanguagePickerContent(currentLanguageCode: currentLanguageCode),
  );
}

/// Content widget for the language picker bottom sheet.
///
/// Displays a scrollable list of all supported languages from [Languages.defaults()],
/// allowing users to select their preferred language. When a language is selected,
/// updates the preferences via [PreferencesBloc] and dismisses the bottom sheet.
///
/// The selected language is persisted through [PreferencesLanguageChanged] event.
class LanguagePickerContent extends StatelessWidget {
  final String currentLanguageCode;

  const LanguagePickerContent({super.key, required this.currentLanguageCode});

  void _selectLanguage(BuildContext context, String code) {
    context.read<PreferencesBloc>().add(PreferencesLanguageChanged(code));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final supportedLanguages = Languages.defaults();
    final maxHeight = MediaQuery.of(context).size.height * 0.6;

    return Container(
      constraints: BoxConstraints(maxHeight: maxHeight),
      padding: EdgeInsets.symmetric(horizontal: context.sizing.s16, vertical: context.sizing.s24),
      child: Column(
        spacing: context.sizing.s48,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BottomSheetPullBar(),
          HeaderTitle(
            title: t.preferences.language.title,
            subtitle: t.preferences.language.subtitle,
          ),
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: supportedLanguages.count,
              separatorBuilder: (context, index) => Gap(context.sizing.s12),
              itemBuilder: (context, index) {
                final language = supportedLanguages.all[index];
                final isSelected = currentLanguageCode == language.code;

                return LanguageOption(
                  language: language,
                  isSelected: isSelected,
                  unselectedColor: Colors.transparent,
                  onTap: () => _selectLanguage(context, language.code),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
