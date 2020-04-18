import 'package:flutter/material.dart';
import 'package:mehendidesign/widgets/home_page_item.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent,
                image: DecorationImage(
                  image: AssetImage('images/med.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.36,
              width: MediaQuery.of(context).size.width * 1.0,
              child: Column(children: <Widget>[
                TopRow(
                  color: Colors.white,
                ),
                SearchBar(),
              ])),
          LeftText(text: 'Categories'),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CatagoryButton(text: 'Natural'),
                    SizedBox(width: 10),
                    CatagoryButton(text: 'Digital Art'),
                    SizedBox(width: 10),
                    CatagoryButton(text: 'Fansatics'),
                    SizedBox(width: 10),
                    CatagoryButton(text: 'Natural'),
                    SizedBox(width: 10),
                    CatagoryButton(text: 'Natural'),
                    SizedBox(width: 10),
                    CatagoryButton(text: 'Natural'),
                  ])),
          LeftText(text: 'Most Liked'),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    CardItemIst(
                      text: 'Tecno - Girl',
                      path: 'images/motor.PNG',
                      icon: Icons.favorite_border,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    CardItemIst(
                      text: 'Alone Girl',
                      path: 'images/alone.jpg',
                      icon: Icons.favorite,
                      color: Colors.red,
                    ),
                    SizedBox(width: 20),
                    CardItemIst(
                      text: 'Frontline Girl',
                      path: 'images/gem.jpg',
                      icon: Icons.favorite_border,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    CardItemIst(
                      text: 'Gemny Girl',
                      path: 'images/joker.jpg',
                      icon: Icons.favorite,
                      color: Colors.red,
                    ),
                    SizedBox(width: 20),
                    CardItemIst(
                      text: 'Tecno - Girl',
                      path: 'images/cart.jpg',
                      icon: Icons.favorite_border,
                      color: Colors.black,
                    ),
                  ]))),
          LeftText(text: 'Recommended For You'),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    CardItemIst(
                      text: 'Tecno - Girl',
                      path: 'images/cart.jpg',
                      icon: Icons.favorite_border,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    CardItemIst(
                      text: 'Gemny Girl',
                      path: 'images/joker.jpg',
                      icon: Icons.favorite,
                      color: Colors.red,
                    ),
                    SizedBox(width: 20),
                    CardItemIst(
                      text: 'Frontline Girl',
                      path: 'images/gem.jpg',
                      icon: Icons.favorite_border,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    CardItemIst(
                      text: 'Gemny Girl',
                      path: 'images/motor.PNG',
                      icon: Icons.favorite,
                      color: Colors.red,
                    ),
                    SizedBox(width: 20),
                    CardItemIst(
                      text: 'Tecno - Girl',
                      path: 'images/alone.jpg',
                      icon: Icons.favorite_border,
                      color: Colors.black,
                    ),
                  ]))),
        ]),
      )),
    );
  }
}
