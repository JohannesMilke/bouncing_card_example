import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String description;
  final String urlImage;
  final String subtitle;
  final Color color;

  const CardWidget({
    @required this.title,
    @required this.description,
    @required this.urlImage,
    @required this.subtitle,
    @required this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(8),
        child: Card(
          clipBehavior: Clip.hardEdge,
          shape: StadiumBorder(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: buildImage()),
              Expanded(child: buildText())
            ],
          ),
        ),
      );

  Widget buildImage() => Image.asset(
        urlImage,
        width: double.infinity,
        fit: BoxFit.cover,
      );

  Widget buildText() => Container(
        padding: EdgeInsets.all(16),
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      );
}
