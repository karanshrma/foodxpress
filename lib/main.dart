import 'package:flutter/material.dart';
import 'core/widgets/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodXpress',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Color(0xFFFF5722),
        scaffoldBackgroundColor: Color(0xFFFFF8F5),
        colorScheme: ColorScheme.light(
          primary: Color(0xFFFF5722),
          secondary: Color(0xFFFFC107),
          background: Color(0xFFFFF8F5),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFF5722),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFFF5722),
          foregroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFFFF5722),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF333333), fontSize: 16),
          bodyMedium: TextStyle(color: Color(0xFF333333), fontSize: 14),
          titleLarge: TextStyle(
            color: Color(0xFF333333),
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFF5722),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          ),
        ),
      ),
      themeMode: ThemeMode.light,
      home: BottomBar(),
    );
  }
}
