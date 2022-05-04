import 'package:dealer_sheep/features/auth/presentation/pages/register.page.dart';
import 'package:dealer_sheep/features/car/presentation/pages/car_services.page.dart';
import 'package:flutter/material.dart';

import 'features/about/presentation/pages/about.page.dart';
import 'features/auth/presentation/pages/login.page.dart';
import 'features/car/presentation/pages/car_details.page.dart';
import 'features/car/presentation/pages/car_list.page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        cardTheme: CardTheme(
          color: Colors.black.withOpacity(0.6),
          elevation: 0,
          margin: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      routes: {
        '/about': (BuildContext context) => const AboutPage(),
        '/login': (BuildContext context) => const LoginPage(),
        '/home': (BuildContext context) => const CarListPage(),
        '/details': (BuildContext context) => const CarDetailsPage(),
        '/register': (BuildContext context) => const RegisterPage(),
        '/services' : (BuildContext context) => const CarServicesPage(),
      },
    );
  }
}
