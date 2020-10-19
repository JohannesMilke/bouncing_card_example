import 'package:flutter/material.dart';

class CardData {
  final String title;
  final String description;
  final String imgUrl;
  final String subtitle;
  final Color color;

  const CardData({
    @required this.title,
    @required this.description,
    @required this.imgUrl,
    @required this.subtitle,
    @required this.color,
  });
}
