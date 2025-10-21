import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../../shared/utils/colors.util.dart' show ColorsUtil;
import '../../models/language.model.dart' show LanguageModel;

/// A selectable card widget representing a single language option.
///
/// This widget displays a language choice with its flag emoji, native name,
/// and English name. It provides visual feedback for selection state and
/// supports tap interactions.
class LanguageOption extends StatelessWidget {
  final bool isSelected;
  final bool isDarkMode;
  final VoidCallback onTap;
  final LanguageModel language;

  const LanguageOption({
    super.key,
    required this.onTap,
    required this.language,
    required this.isSelected,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    final selectedColor = isDarkMode ? ColorsUtil.slate700 : ColorsUtil.slate200;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.sizing.s8),
        color: isSelected ? selectedColor : context.backgroundColor,
        border: Border.all(
          width: isSelected ? context.sizing.s2 : context.sizing.s1,
          color: isSelected ? context.primaryColor : selectedColor,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(context.sizing.s8),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.sizing.s12,
              vertical: context.sizing.s6,
            ),
            child: Row(
              children: [
                Text(language.flagEmoji, style: TextStyle(fontSize: context.sizing.s48)),
                Gap(context.sizing.s20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        language.nativeName,
                        style: TextStyle(
                          fontSize: context.sizing.s16,
                          fontWeight: FontWeight.w600,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                      Text(
                        language.englishName,
                        style: TextStyle(
                          fontSize: context.sizing.s12,
                          color: context.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                if (isSelected)
                  Icon(
                    Icons.check_circle,
                    color: context.primaryColor,
                    size: context.sizing.s24,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
