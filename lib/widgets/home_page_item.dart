import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mehendidesign/detail_design_page.dart';

class TopRow extends StatelessWidget {
  final Color color;

  TopRow({this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.format_list_numbered_rtl, color: color),
              ClipOval(
                child: Image.asset(
                  "images/pro.jpeg",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ]));
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(top: 70),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white70,
        ),
        height: 60,
        width: MediaQuery.of(context).size.width * 1.0,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search a Wallpaper",
                hintStyle: TextStyle(fontSize: 25.0),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class CatagoryButton extends StatelessWidget {
  String text;
  CatagoryButton({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 2.0,
              offset: Offset(
                1.0, // horizontal, move right 10
                2.0, // vertical, move down 10
              ),
            )
          ],
        ),
        width: 120,
        height: 50,
        child: Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )),
      ),
    );
  }
}

class LeftText extends StatelessWidget {
  String text;
  LeftText({this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      )),
    );
  }
}

class CardItemIst extends StatelessWidget {
  String text;
  IconData icon;
  String path;
  final Color color;

  CardItemIst({this.text, this.icon, this.path, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailDesign()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: Offset(
                0.0, // horizontal, move right 10
                2.0, // vertical, move down 10
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height * 0.46,
        width: MediaQuery.of(context).size.width * 0.55,
        child: Column(children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(path), fit: BoxFit.fill),
                  ),
                  height: MediaQuery.of(context).size.height * 0.38,
                  width: MediaQuery.of(context).size.width * 0.55),
              Positioned(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(50)),
                  width: 70,
                  height: 35,
                  child: Row(children: <Widget>[
                    SizedBox(width: 10),
                    Icon(
                      FontAwesomeIcons.thumbsUp,
                      color: Colors.white,
                      size: 17,
                    ),
                    Text(
                      '968',
                      style: TextStyle(color: Colors.black),
                    )
                  ]),
                ),
              ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(icon, color: color),
                Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Icon(
                  Icons.shuffle,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
