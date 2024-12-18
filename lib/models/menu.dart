import 'package:flutter/material.dart';

class Menu {
  final int id;
  final String title;
  final String image;
  final Color color;
  final int type;

  Menu(this.id, this.title, this.image, this.color) : type = id;
}