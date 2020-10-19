import 'package:bouncing_card_example/animations/customshake.dart';
import 'package:bouncing_card_example/data/data.dart';
import 'package:bouncing_card_example/widget/card_widget.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pageController = PageController(viewportFraction: 0.8);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: PageView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: Data.cards.length,
          controller: pageController,
          itemBuilder: (context, index) {
            final cardData = Data.cards[index];

            final card = CardWidget(
              title: cardData.title,
              description: cardData.description,
              color: cardData.color,
              subtitle: cardData.subtitle,
              urlImage: cardData.imgUrl,
            );

            if (currentIndex == index) {
              return LeftRightShake(child: card);
            } else {
              return RightLeftShake(child: card);
            }
          },
          onPageChanged: (int index) => setState(() {
            currentIndex = index;
          }),
        ),
      ),
    );
  }
}
