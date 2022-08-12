import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:reward_app/screens/partners/partners.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currentIndex = 2;

  List<Widget> screens = [
    const Center(child: Text("Home")),
    const Center(child: Text("Services")),
    const PartnerScreen(),
    const Center(child: Text("Activity")),
    const Center(child: Text("profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.reactCircle,
          backgroundColor: Colors.white,
          height: 60,
          initialActiveIndex: currentIndex,
          color: Colors.black54,
          activeColor: Colors.blue,
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(
                icon: Icons.miscellaneous_services_outlined, title: 'Services'),
            TabItem(icon: Icons.handshake_outlined, title: 'Partners'),
            TabItem(icon: Icons.notifications_none, title: 'Activity'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          onTap: (int i) => setState(() {
            currentIndex = i;
          }),
        ));
  }
}

// -----------------------------------------------------  default navigationBar ----------------------------------------------------
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 10,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Colors.black45,
      //   onTap: (index) {
      //     return setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   currentIndex: currentIndex,
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(
      //       label: "home",
      //       icon: Icon(Icons.home_filled),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "home",
      //       icon: Icon(Icons.home_max),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "home",
      //       icon: Icon(Icons.donut_small_sharp),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "home",
      //       icon: Icon(Icons.notifications),
      //     ),
      //   ],
      // ),