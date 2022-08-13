import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class partnersCard extends StatelessWidget {
  const partnersCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.buttonText,
  }) : super(key: key);

  final String image, title, subTitle, buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 35),
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
            padding: const EdgeInsets.only(left: 25, top: 40),
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
                  subTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 120,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
            ),
            child: Center(
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
