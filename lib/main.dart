import 'package:flutter/material.dart';
import 'package:iclothes/core/theme/app_colors.dart';
import 'package:iclothes/core/theme/app_theme.dart';

import 'features/home/home_screen.dart';
import 'features/profile/profile_screen.dart';
import 'features/search/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.white,
            selectedItemColor: AppColors.lightBlue,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "Início",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Descobrir"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Perfil"
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
