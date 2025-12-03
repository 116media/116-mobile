import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;

import '../../../presentation/themes/extensions/build.context.extension.dart';
import '../../../../platform/preferences/presentation/bloc/preferences.bloc.dart'
    show PreferencesBloc;
import '../../../../platform/preferences/presentation/bloc/preferences.state.dart'
    show PreferencesSuccess;
import '../bottomsheet/bottomsheet.pullbar.dart' show BottomSheetPullBar;
import '../../../presentation/widgets/header/header.title.dart' show HeaderTitle;
import '../../utils/colors.util.dart' show ColorsUtil;
import '../inputfields/inputfield.widget.dart' show InputField;
import 'country.list.widget.dart' show CountryList;
import 'country.picker.provider.dart' show CountryPickerProvider;
import 'selected.country.widget.dart' show SelectedCountry;

/// Content widget for the country picker bottom sheet.
///
/// Displays a searchable list of all countries with flag, name, and dial code.
/// When a country is selected, updates the provider and dismisses the sheet.
///
/// Features:
/// - Pull bar for visual affordance
/// - Header with title and subtitle
/// - Search input field for filtering countries
/// - Scrollable list of country options
/// - Transparent background for unselected countries
/// - Auto-dismisses after selection
/// - Constrained to 70% of screen height
class CountryPickerContent extends StatefulWidget {
  const CountryPickerContent({super.key});

  @override
  State<CountryPickerContent> createState() => _CountryPickerContentState();
}

class _CountryPickerContentState extends State<CountryPickerContent> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Load countries on init
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CountryPickerProvider>().loadCountries();
    });

    // Add listener to search controller
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final preferencesState = context.read<PreferencesBloc>().state;
    final languageCode = preferencesState is PreferencesSuccess
        ? preferencesState.preferences.languageCode
        : 'en';
    context.read<CountryPickerProvider>().searchCountries(_searchController.text, languageCode);
  }

  void _selectCountry(CountryPickerProvider provider, country) {
    provider.selectCountry(country);
    Navigator.of(context).pop(country);
  }

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.7;
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    final preferencesState = context.read<PreferencesBloc>().state;
    final languageCode = preferencesState is PreferencesSuccess
        ? preferencesState.preferences.languageCode
        : 'en';

    final dividerColor = context.isDarkMode ? ColorsUtil.slate700 : ColorsUtil.slate200;

    return Padding(
      padding: EdgeInsets.only(bottom: keyboardHeight),
      child: Container(
        constraints: BoxConstraints(maxHeight: maxHeight),
        padding: EdgeInsets.only(
          top: context.sizing.s24,
          left: context.sizing.s16,
          right: context.sizing.s16,
          bottom: keyboardHeight > 0 ? 0 : context.sizing.s16,
        ),
        child: Column(
          spacing: context.sizing.s12,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BottomSheetPullBar(),

            Padding(
              padding: EdgeInsets.symmetric(vertical: context.sizing.s12),
              child: const HeaderTitle(
                title: 'Select Country',
                subtitle: 'Choose your country to get the correct dial code.',
              ),
            ),

            // Selected country section
            SelectedCountry(languageCode: languageCode, onSelectCountry: _selectCountry),

            // Country list
            CountryList(
              languageCode: languageCode,
              dividerColor: dividerColor,
              onSelectCountry: _selectCountry,
            ),

            // Search input field
            Container(
              padding: EdgeInsets.symmetric(vertical: context.sizing.s24),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: dividerColor, width: 1)),
              ),
              child: InputField(
                isFilled: true,
                label: 'Search',
                controller: _searchController,
                suffix: Icon(Icons.search, size: context.sizing.s20, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
