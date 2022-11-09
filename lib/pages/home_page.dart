import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/material.dart';
import 'package:listview_animation/transformers/transformers.dart';

import '../main.dart';
import '../texts.dart';
import '../widget/card_widget.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text(
          MyApp.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: TransformerPageView(
        scrollDirection: Axis.vertical,
        curve: Curves.easeInBack,
        transformer: transformers[4], // transformers[5],
        itemCount: Texts.urlImages.length,
        itemBuilder: (context, index) {
          final urlImage = Texts.urlImages[index];
          final title = Texts.titles[index];
          final subtitle = Texts.subtitles[index];

          return CardWidget(
            urlImage: urlImage,
            title: title,
            subtitle: subtitle,
          );
        },
      ),
    );
  }
}