import 'package:cent16/card.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../shared/layout/appbar/appbar.layout.dart' show AppBarLayout;
import '../../../shared/layout/bottombar/bottombar.layout.dart' show BottomBarLayout;
import 'core/presentation/preferences/screens/preference.screen.dart' show PreferenceScreen;
import 'modules/discover/presentation/screens/discover.screen.dart' show DiscoverScreen;
import 'modules/favorite/presentation/screens/favorite.screen.dart' show FavoriteScreen;
import 'modules/home/presentation/screens/home.screen.dart' show HomeScreen;
import 'modules/shows/presentation/screens/shows.screen.dart' show ShowsScreen;
import 'shared/providers/theme.provider.dart' show ThemeProvider;
import 'shared/themes/app.theme.dart' show AppTheme;

/// The main entry point of the application.
///
/// Initializes the app with [ThemeProvider] for theme management and launches
/// the [App] widget wrapped in a [ChangeNotifierProvider] for state management.
void main() {
  runApp(ChangeNotifierProvider(create: (_) => ThemeProvider(), child: const App()));
}

/// The root widget of the application.
///
/// This widget sets up the [MaterialApp] with theme configurations and
/// consumes the [ThemeProvider] to enable dynamic theme switching.
///
class App extends StatelessWidget {
  const App({super.key});

  /// Builds the root MaterialApp with theme provider integration.
  ///
  /// Uses [Consumer] to listen to theme changes and rebuild the app
  /// when the user switches between light and dark modes.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeProvider.themeMode,
          home: const PreferenceScreen(),
        );
      },
    );
  }
}

/// The main application screen with bottom navigation.
///
/// This screen provides the main navigation structure for the app with:
/// - Collapsible app bar with search functionality
/// - Bottom navigation bar with 4 sections
/// - Dynamic content area that changes based on navigation selection
///
/// **Navigation Sections:**
/// 1. Home - Main content feed
/// 2. Discover - Content discovery
/// 3. Shows - Shows/events listing
/// 4. Favorite - User's favorited content
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  /// The currently selected bottom navigation index (0-3).
  int _selectedIndex = 0;

  /// The list of widgets corresponding to each navigation section.
  final List<Widget> widgetOptions = const [
    HomeScreen(),
    DiscoverScreen(),
    ShowsScreen(),
    FavoriteScreen(),
  ];

  /// Handles bottom navigation item taps.
  ///
  /// Updates the selected index and triggers a rebuild to display
  /// the corresponding screen.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// Builds the main screen with app bar, content area, and bottom navigation.
  ///
  /// Uses a [CustomScrollView] with [SliverAppBar] for the collapsible header
  /// and search bar functionality.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarLayout(),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(padding: const EdgeInsets.all(18.0), child: Card4()),
              widgetOptions.elementAt(_selectedIndex),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomBarLayout(currentIndex: _selectedIndex, onTap: _onItemTapped),
    );
  }
}
