import 'package:flutter/material.dart';
import 'package:islamiapp/providers/most_recent_provider.dart';
import 'package:islamiapp/ui/homescreen/home_screen.dart';
import 'package:islamiapp/ui/homescreen/tab/quran/sura_detailes_screen.dart';
import 'package:islamiapp/ui/homescreen/tab/quran/sura_detailes_screen1.dart';
import 'package:islamiapp/ui/onBroading_Screens.dart';
import 'package:islamiapp/utils/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MostRecentProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingScreens.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        OnboardingScreens.routeName: (context) => OnboardingScreens(),
        SuraDetailesScreen.routeName: (context) => SuraDetailesScreen(),
        SuraDetailesScreen1.routeName: (context) => SuraDetailesScreen1(),
      },
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
