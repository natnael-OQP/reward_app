import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    required this.checkedIndex,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool checkedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          primary: checkedIndex ? Colors.blue : Colors.black45,
        ),
        child: Column(
          children: [
            Icon(icon),
            const Gap(10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
