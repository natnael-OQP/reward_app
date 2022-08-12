import 'package:flutter/material.dart';

class Category {
  final String title;
  final IconData icon;

  Category({required this.title, required this.icon});
}

List<Category> demo_categories = [
  Category(icon: Icons.format_list_bulleted_sharp, title: "All"),
  Category(icon: Icons.drive_eta_sharp, title: "Car"),
  Category(icon: Icons.computer_outlined, title: "Tech"),
  Category(icon: Icons.airplane_ticket_outlined, title: "Travel"),
  Category(icon: Icons.phone_android_rounded, title: "Phone"),
  Category(icon: Icons.map_outlined, title: "Location"),
  Category(icon: Icons.sports_basketball, title: "Sport"),
];
