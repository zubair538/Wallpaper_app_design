import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LikedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 5.0,
              offset: Offset(
                0.0, // horizontal, move right 10
                2.0, // vertical, move down 10
              ),
            )
          ],
          color: Colors.black),
      child: Center(
          child: Text(
        'Most Liked',
        style: TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 1.5),
      )),
    );
  }
}

class ImageFront extends StatelessWidget {
  String path;
  ImageFront({this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.42,
        width: MediaQuery.of(context).size.width * 1.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black38,
          image: DecorationImage(image: AssetImage(path), fit: BoxFit.fill),
        ));
  }
}

class LikedRow extends StatelessWidget {
  String name;
  bool isLiked = false;
  LikedRow({this.name, this.isLiked});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        TwoItemRow(),
        Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ThreeIconRow(
          isLiked: isLiked,
        ),
      ],
    );
  }
}

class TwoItemRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        width: 90,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(FontAwesomeIcons.thumbsUp),
                Text('968'),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}

class ThreeIconRow extends StatelessWidget {
  bool isLiked = false;

  ThreeIconRow({this.isLiked});

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        width: 120,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : Colors.black,
                ),
                Icon(Icons.share),
                Icon(Icons.file_download),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
