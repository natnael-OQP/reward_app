import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({
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
      margin: const EdgeInsets.symmetric(horizontal: 11),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  spreadRadius: 1,
                  offset: Offset(2, 5),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black38,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
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
                    fontWeight: FontWeight.w500,
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
