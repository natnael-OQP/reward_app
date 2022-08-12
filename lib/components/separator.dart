import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Separator extends StatelessWidget {
  const Separator({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: HexColor("#F5F6F9"),
    );
  }
}
