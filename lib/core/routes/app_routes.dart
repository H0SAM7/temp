import 'package:broker/features/Favorites/favo_view.dart';
import 'package:broker/features/home/views/home_view.dart';
import 'package:broker/features/settings/settings_view.dart';
import 'package:broker/features/splash/onboarding_view.dart';
import 'package:broker/navigation_bar.dart';
import 'package:broker/temp/test1.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  //     BottomNavigator
  static String? initialRoute = HomeView.id;
  static Map<String, Widget Function(BuildContext)> routes = {
    //navigation bar #########
    CustomNavigationBar.id: (context) => const CustomNavigationBar(),

    SettingsView.id: (context) => const SettingsView(),
    HomeView.id: (context) => const HomeView(),
    FavoritesView.id: (context) => const FavoritesView(),

    OnboardingView.id: (context) => const OnboardingView(),
        test.id: (context) =>  test(),

  };
}
