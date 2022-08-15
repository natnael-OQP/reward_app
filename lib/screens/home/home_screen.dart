import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reward_app/screens/events/events_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 0,
              toolbarHeight: 100,
              leadingWidth: 80,
              backgroundColor: Colors.white,
              pinned: true,
              floating: true,

              // avatar
              leading: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/81810944?v=4"),
                ),
              ),

              /// title
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hello Ryan!",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const Gap(4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.black45,
                        size: 15,
                      ),
                      Text(
                        "EcoWorld",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              /// action
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
                )
              ],
              bottom: TabBar(
                labelColor: Colors.blue,
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.black54,
                onTap: (index) => {setState(() => currentIndex = index)},
                tabs: <Widget>[
                  Tab(
                    child: Row(
                      children: const [
                        Icon(Icons.local_post_office_outlined),
                        Gap(10),
                        Text("Posts"),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: const [
                        Icon(Icons.calendar_month),
                        Gap(10),
                        Text("Events"),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: const [
                        Icon(Icons.people_outline),
                        Gap(10),
                        Text("Contact "),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "Posts",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const EventsScreen(), // events screen
            Center(
              child: Text(
                "Connect",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
