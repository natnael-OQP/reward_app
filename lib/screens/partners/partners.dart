import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reward_app/components/separator.dart';
import 'package:reward_app/screens/partners/components/search_filed.dart';

class PartnerScreen extends StatelessWidget {
  const PartnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Partners",
                  style: Theme.of(context).textTheme.headline4,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "EcoWorld",
                        style: TextStyle(color: Colors.blue),
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Gap(25),
          const SearchFIled(),
          const Gap(25),
          const Separator(height: 25),
          // Icons.
        ],
      ),
    );
  }
}
