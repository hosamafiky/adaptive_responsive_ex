import 'package:flutter/material.dart';

class DrawerItemModel {
  final String title, icon;
  final VoidCallback? onTap;

  const DrawerItemModel({
    required this.title,
    required this.icon,
    this.onTap,
  });
}
