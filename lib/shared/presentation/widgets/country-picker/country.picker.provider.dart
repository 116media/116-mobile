import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:world_countries/world_countries.dart' show IddExtension, WorldCountry;

/// Provider for managing country picker state.
///
/// Handles country selection, search filtering, and provides access to
/// the selected country from anywhere in the widget tree. Uses Provider
/// pattern for simple state management.
class CountryPickerProvider extends ChangeNotifier {
  String _searchQuery = '';
  WorldCountry? _selectedCountry;
  List<WorldCountry> _filteredCountries = [];

  String get searchQuery => _searchQuery;
  WorldCountry? get selectedCountry => _selectedCountry;
  List<WorldCountry> get filteredCountries => _filteredCountries;

  /// Get dial code from selected country.
  ///
  /// Returns the country's phone code (e.g., "+1", "+234").
  /// Returns empty string if no country is selected.
  String get dialCode {
    if (_selectedCountry == null) return '';

    final root = _selectedCountry!.idd.root;
    final suffix = _selectedCountry!.idd.suffixes.first;
    return '$root$suffix';
  }

  /// Get country name in specified language.
  ///
  /// Returns the country name in English (international name).
  /// Translation support can be added later with TypedLocale.
  String getCountryName(WorldCountry country, String languageCode) {
    return country.internationalName;
  }

  /// Initialize countries with all available countries.
  void loadCountries() {
    _filteredCountries = WorldCountry.list;
    notifyListeners();
  }

  /// Filter countries by search query.
  ///
  /// Filters by country name (in specified language) and dial code.
  void searchCountries(String query, String languageCode) {
    _searchQuery = query.trim();

    if (_searchQuery.isEmpty) {
      _filteredCountries = WorldCountry.list;
    } else {
      final lowerQuery = _searchQuery.toLowerCase();

      _filteredCountries = WorldCountry.list.where((country) {
        final dialCode = country.idd.phoneCode();
        final name = getCountryName(country, languageCode).toLowerCase();

        return name.contains(lowerQuery) || dialCode.contains(lowerQuery);
      }).toList();
    }

    notifyListeners();
  }

  /// Select a country.
  void selectCountry(WorldCountry country) {
    _selectedCountry = country;
    notifyListeners();
  }

  /// Clear selected country.
  void clearSelection() {
    _selectedCountry = null;
    notifyListeners();
  }

  /// Reset search and show all countries.
  void resetSearch() {
    _searchQuery = '';
    _filteredCountries = WorldCountry.list;
    notifyListeners();
  }
}
