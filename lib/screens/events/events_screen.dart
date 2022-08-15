import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reward_app/components/separator.dart';
import 'package:reward_app/screens/events/components/event_card.dart';
import 'package:reward_app/screens/events/components/events_card_large.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const Separator(height: 25),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 23),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Your Next Events",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            "View More",
                            style:
                                Theme.of(context).textTheme.subtitle2?.copyWith(
                                      color: Colors.black38,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: const [
                      EventsCard(
                        image:
                            "https://images.unsplash.com/photo-1557425493-6f90ae4659fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                        title: "Business Head Meeting",
                        date: "Mon Jui 18, 12:00 pm",
                      ),
                      EventsCard(
                        image:
                            "https://images.unsplash.com/photo-1521737604893-d14cc237f11d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=884&q=80",
                        title: "Business Head Meeting",
                        date: "Mon Jui 18, 12:00 pm",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(20),
            const Separator(height: 30),
            const Gap(20),
            const EventsCardLarge(
              image:
                  "https://images.unsplash.com/photo-1521737604893-d14cc237f11d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=884&q=80",
              title: "Business Head Meeting",
              date: "Mon Jui 18, 12:00 pm",
            ),
            const EventsCardLarge(
              image:
                  "https://images.unsplash.com/photo-1521737604893-d14cc237f11d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=884&q=80",
              title: "Business Head Meeting",
              date: "Mon Jui 18, 12:00 pm",
            ),
          ],
        ),
      ),
    );
  }
}
