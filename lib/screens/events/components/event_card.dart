import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class eventsCard extends StatelessWidget {
  const eventsCard({
    Key? key,
    required this.image,
    required this.title,
    required this.date,
  }) : super(key: key);

  final String image, title, date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 280,
      margin: const EdgeInsets.only(left: 23),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
                const Gap(5),
                Text(
                  date,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
