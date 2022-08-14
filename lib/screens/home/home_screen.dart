import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          leadingWidth: 80,
          backgroundColor: Colors.white,

          /// avatar
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
              // search
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.local_post_office_outlined,
                      color: currentIndex == 0 ? Colors.blue : Colors.black54,
                    ),
                    const Gap(10),
                    const Text("Posts")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: currentIndex == 1 ? Colors.blue : Colors.black54,
                    ),
                    const Gap(10),
                    const Text("Events")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Icon(
                      Icons.people_outline,
                      color: currentIndex == 2 ? Colors.blue : Colors.black54,
                    ),
                    const Gap(10),
                    const Text("Connect")
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "Posts",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Center(
              child: Text(
                "Events",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Center(
              child: Text(
                "Connect",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
