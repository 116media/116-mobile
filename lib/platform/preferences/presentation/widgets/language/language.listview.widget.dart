import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../domain/value-objects/languages.dart' show Languages;
import 'language.options.widget.dart' show LanguageOption;

/// A scrollable list view displaying available language options for selection.
///
/// This widget creates a vertical list of [LanguageOption] widgets from the
/// available languages defined in [SupportedLanguages]. Each
/// language option can be tapped to select it.
///
/// The list automatically displays all languages from [SupportedLanguages.defaults()]
/// and highlights the currently selected language based on [selectedLanguageCode].
class LanguageListView extends StatelessWidget {
  final String selectedLanguageCode;
  final Function(String) onLanguageSelected;

  const LanguageListView({
    super.key,
    required this.selectedLanguageCode,
    required this.onLanguageSelected,
  });

  @override
  Widget build(BuildContext context) {
    final supportedLanguages = Languages.defaults();

    return Expanded(
      child: ListView.separated(
        itemCount: supportedLanguages.count,
        separatorBuilder: (context, index) => Gap(context.sizing.s12),
        itemBuilder: (context, index) {
          final language = supportedLanguages.all[index];
          final isSelected = selectedLanguageCode == language.code;

          return LanguageOption(
            language: language,
            isSelected: isSelected,
            onTap: () => onLanguageSelected(language.code),
          );
        },
      ),
    );
  }
}
