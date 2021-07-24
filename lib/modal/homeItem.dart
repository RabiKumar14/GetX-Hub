import 'package:flutter/material.dart';

class HomeItem {
  final String title;
  final String subtitle;
  final VoidCallback action;

  HomeItem({required this.title, required this.subtitle, required this.action});
}
