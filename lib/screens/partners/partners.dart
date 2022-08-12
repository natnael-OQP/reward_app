import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reward_app/components/separator.dart';
import 'package:reward_app/models/category.dart';
import 'package:reward_app/screens/partners/components/category_button.dart';
import 'package:reward_app/screens/partners/components/search_filed.dart';

class PartnerScreen extends StatefulWidget {
  const PartnerScreen({super.key});

  @override
  State<PartnerScreen> createState() => _PartnerScreenState();
}

class _PartnerScreenState extends State<PartnerScreen> {
  int checkedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          // category Preview
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: List.generate(
                  demo_categories.length,
                  (index) => CategoryButton(
                    checkedIndex: index == checkedIndex,
                    icon: demo_categories[index].icon,
                    onPressed: () {
                      setState(() => checkedIndex = index);
                    },
                    title: demo_categories[index].title,
                  ),
                ),
              ),
            ),
          ),
          const Gap(20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              "Top Offers",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
