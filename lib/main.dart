import 'package:flutter/material.dart';
import 'package:movies/HomeScreen.dart';
import 'package:movies/movie/movie_details.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'home_tab/HomeTab.dart';

void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds:2));
  FlutterNativeSplash.remove();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        MovieDetails.routeName:(_)=>MovieDetails()
      },
      initialRoute: HomeScreen.routeName,


    theme: ThemeData(
      scaffoldBackgroundColor: Colors.black,

      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white12,
        iconTheme: IconThemeData(color: Colors.white)
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(

        selectedItemColor: Colors.amber,
        selectedLabelStyle: TextStyle(color: Colors.amber),
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.white),

      ),

      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.normal,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
        titleSmall: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.normal,),
        bodyMedium: TextStyle(
          color: Colors.white54,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        bodySmall: TextStyle(
          color: Colors.white54,
          fontSize: 12,
          fontWeight: FontWeight.normal,
          ),
    ),

    ));
  }
}
