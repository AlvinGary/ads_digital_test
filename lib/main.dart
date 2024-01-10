import 'package:apotech_test_frontend/views/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apotech',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Overpass',
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          displayLarge: TextStyle(
            fontFamily: 'Overpass-bold',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/walktrough1': (context) => WalktroughPage(),
        '/walktrough2': (context) => WalktroughPage2(),
        '/welcome': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/createaccount': (context) => CreateAccountPage(),
        '/verify': (context) => VerifyPage(),
        '/loginsuccess': (context) => LoginSuccessPage(),
        '/menu': (context) => MenuPage(),
        '/checkout': (context) => CheckoutPage(),
        '/cart': (context) => CartPage(),
        '/success': (context) => SuccessPage(),
        '/category': (context) => CategoryPage(),
        '/product': (context) => ProductPage(),
      },
    );
  }
}
