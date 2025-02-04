import 'package:broker/features/Favorites/favo_view.dart';
import 'package:broker/features/auth/views/create_new_pass.dart';
import 'package:broker/features/auth/views/email_via_view.dart';
import 'package:broker/features/auth/views/forget_view.dart';
import 'package:broker/features/auth/views/login_view.dart';
import 'package:broker/features/auth/views/phone_via_view.dart';
import 'package:broker/features/auth/views/register_view.dart';
import 'package:broker/features/auth/views/reset_pass_succ_view.dart';
import 'package:broker/features/home/home_view.dart';
import 'package:broker/features/settings/settings_view.dart';
import 'package:broker/features/splash/onboarding_view.dart';
import 'package:broker/navigation_bar.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  //     BottomNavigator
  static String? initialRoute = RegisterView.id;
  static Map<String, Widget Function(BuildContext)> routes = {

    //navigation bar #########
    CustomNavigationBar.id: (context) => const CustomNavigationBar(),




    SettingsView.id: (context) => const SettingsView(),
    HomeView.id: (context) => const HomeView(),
        FavoritesView.id: (context) => const FavoritesView(),

        OnboardingView.id: (context) => const OnboardingView(),
    RegisterView.id: (context) => const RegisterView(),
    LoginView.id: (context) => const LoginView(),
        ForgetView.id: (context) => const ForgetView(),

        EmailViaView.id: (context) => const EmailViaView(),

        PhoneViaView.id: (context) => const PhoneViaView(),

        CreateNewPass.id: (context) => const CreateNewPass(),
                ResetPassSuccView.id: (context) => const ResetPassSuccView(),


  };
}
