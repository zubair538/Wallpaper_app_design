import 'package:flutter/material.dart';
import 'package:mehendidesign/widgets/detail_page_items.dart';
import 'package:mehendidesign/widgets/home_page_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mehendidesign/widgets/wallpaper_item.dart';

class DetailDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 10),
              child: TopRow(color: Colors.black)),
          LikedButton(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                ImageFront(path: 'images/gem.jpg'),
                LikedRow(name: 'Tecno - Gril', isLiked: true),
                SizedBox(height: 20),
                ImageFront(path: 'images/alone.jpg'),
                LikedRow(name: 'Alone Girl', isLiked: false),
                SizedBox(height: 20),
                ImageFront(path: 'images/gem.jpg'),
                LikedRow(name: 'Gemny Girl', isLiked: true),
                SizedBox(height: 20),
                ImageFront(path: 'images/largm.jpg'),
                LikedRow(name: 'Tecno - Gril', isLiked: true),
                SizedBox(height: 20),
                ImageFront(path: 'images/alone.jpg'),
                LikedRow(name: 'Alone Girl', isLiked: false),
                SizedBox(height: 20),
                ImageFront(path: 'images/gem.jpg'),
                LikedRow(name: 'Gemny Girl', isLiked: true),
                SizedBox(height: 20),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
