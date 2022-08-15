import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reward_app/components/separator.dart';
import 'package:reward_app/models/event.dart';
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
                    children: List.generate(
                      demo_events.length,
                      (index) => EventsCard(
                        image: demo_events[index].image,
                        title: demo_events[index].title,
                        date: demo_events[index].date,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            const Separator(height: 30),
            const Gap(20),
            Column(
              children: List.generate(
                  demo_events.length,
                  (index) => EventsCardLarge(
                        image: demo_events[index].image,
                        title: demo_events[index].title,
                        date: demo_events[index].date,
                      )),
            )
          ],
        ),
      ),
    );
  }
}
