import 'package:flutter/material.dart';
import 'package:leaps_frontend/screens/team/teamPage/member.dart';
import 'package:leaps_frontend/screens/team/teamPage/schedule.dart';
import 'package:leaps_frontend/screens/team/teamPage/video.dart';

class tabBar extends StatefulWidget {
  const tabBar({super.key});

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "Videos"),
            Tab(text: "Schedules"),
            Tab(text: "Members"),
          ],
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          labelStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
        ),
        SizedBox(
          height: 400, // Adjust the height as needed
          child: TabBarView(
            controller: _tabController,
            children: const [
              video(),
              schedule(),
              member(),
            ],
          ),
        ),
      ],
    );
  }
}
