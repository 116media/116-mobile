import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../shared/themes/extensions/build.context.extension.dart';
import '../../models/language.model.dart' show LanguageModel;
import 'language.options.widget.dart' show LanguageOption;

/// A scrollable list view displaying available language options for selection.
///
/// This widget creates a vertical list of [LanguageOption] widgets from the
/// available languages defined in [LanguageModel.languagesList]. Each
/// language option can be tapped to select it.
///
/// The list automatically displays all languages from [LanguageModel.languagesList]
/// and highlights the currently selected language based on [selectedLanguageCode].
class LanguageListView extends StatelessWidget {
  final bool isDarkMode;
  final String selectedLanguageCode;
  final Function(String) onLanguageSelected;

  const LanguageListView({
    super.key,
    required this.selectedLanguageCode,
    required this.isDarkMode,
    required this.onLanguageSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: LanguageModel.languagesList.length,
        separatorBuilder: (context, index) => Gap(context.sizing.s12),
        itemBuilder: (context, index) {
          final language = LanguageModel.languagesList[index];
          final isSelected = selectedLanguageCode == language.code;

          return LanguageOption(
            language: language,
            isSelected: isSelected,
            isDarkMode: isDarkMode,
            onTap: () {
              onLanguageSelected(language.code);
            },
          );
        },
      ),
    );
  }
}
