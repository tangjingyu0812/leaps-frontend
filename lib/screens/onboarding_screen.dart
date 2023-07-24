import 'package:flutter/material.dart';
import 'package:leaps_frontend/screens/user/userprofile_screen.dart';
import 'package:leaps_frontend/screens/creator/createcenter_screen.dart';
import 'package:leaps_frontend/screens/home/homepage_screen.dart';
import 'package:leaps_frontend/screens/register_screen.dart';

import '../widgets/custom_button.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = '/onboarding';
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome to \nLeaps',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          // Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 8.0),
          //     child: CustomButton(
          //       text: 'Create League',
          //       onTap: () {
          //         Navigator.pushNamed(context, CreateLeagueScreen.routeName);
          //       },
          //     )),
          // Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 8.0),
          //     child: CustomButton(
          //       text: 'Create Team',
          //       onTap: () {
          //         Navigator.pushNamed(context, CreateTeamScreen.routeName);
          //       },
          //     )),
          // Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 8.0),
          //     child: CustomButton(
          //       text: 'Edit Team',
          //       onTap: () {
          //         Navigator.pushNamed(context, EditTeamScreen.routeName);
          //       },
          //     )),
          // Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 8.0),
          //     child: CustomButton(
          //       text: 'Edit League',
          //       onTap: () {
          //         Navigator.pushNamed(context, EditLeagueScreen.routeName);
          //       },
          //     )),

          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomButton(
                text: 'Creator Center',
                onTap: () {
                  Navigator.pushNamed(context, CreateCenterScreen.routeName);
                },
              )),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomButton(
                text: 'Home Page',
                onTap: () {
                  Navigator.pushNamed(context, HomePageScreen.routeName);
                },
              )),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomButton(
                text: 'Register',
                onTap: () {
                  Navigator.pushNamed(context, RegisterScreen.routeName);
                },
              )),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomButton(
                text: 'Login',
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
              ))
        ],
      ),
    ));
  }
}
