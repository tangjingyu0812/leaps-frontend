import 'package:flutter/material.dart';
import 'package:leaps_frontend/screens/createlivestream_screen.dart';
import 'package:leaps_frontend/screens/userprofile_screen.dart';
import 'package:leaps_frontend/screens/createleague_screen.dart';
import 'package:leaps_frontend/screens/createteam_screen.dart';
import 'package:leaps_frontend/screens/editteam_screen.dart';
import 'package:leaps_frontend/screens/editleague_screen.dart';
import 'package:leaps_frontend/screens/editgame_screen.dart';
import 'package:leaps_frontend/screens/createcenter_screen.dart';
import 'package:leaps_frontend/screens/creategame_screen.dart';
import 'package:leaps_frontend/screens/homepage_screen.dart';

import '../widgets/custom_button.dart';

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
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomButton(
                text: 'User Profile',
                onTap: () {
                  Navigator.pushNamed(context, UserProfileScreen.routeName);
                },
              )),
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
          // Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 8.0),
          //     child: CustomButton(
          //       text: 'Create Game',
          //       onTap: () {
          //         Navigator.pushNamed(context, CreateGameScreen.routeName);
          //       },
          //     )),
          // Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 8.0),
          //     child: CustomButton(
          //       text: 'Edit Game',
          //       onTap: () {
          //         Navigator.pushNamed(context, EditGameScreen.routeName);
          //       },
          //     )),
          // Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 8.0),
          //     child: CustomButton(
          //       text: 'Create Live Steam',
          //       onTap: () {
          //         Navigator.pushNamed(
          //             context, CreateLiveStreamScreen.routeName);
          //       },
          //     )),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomButton(
                text: 'Home Page',
                onTap: () {
                  Navigator.pushNamed(context, HomePageScreen.routeName);
                },
              )),
        ],
      ),
    ));
  }
}
