import 'package:flutter/material.dart';
import 'package:lang_app/components/List_item.dart';
import 'package:lang_app/models/items.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<Item_Model> Shown_items = const [
    Item_Model(
        image: "assets/images/colors/color_red.png",
        jpName: 'Aka',
        enName: 'Red',
        sound: "sounds/colors/red.wav"),
    Item_Model(
        image: "assets/images/colors/color_black.png",
        jpName: 'Burakku',
        enName: 'Black',
        sound: "sounds/colors/black.wav"),
    Item_Model(
        image: "assets/images/colors/color_brown.png",
        jpName: 'Chairo',
        enName: 'Brown',
        sound: "sounds/colors/brown.wav"),
    Item_Model(
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: 'Hokori ppoi kiiro',
        enName: 'Dusty yellow',
        sound: "sounds/colors/dusty yellow.wav"),
    Item_Model(
        image: "assets/images/colors/color_green.png",
        jpName: 'Midori',
        enName: 'Green',
        sound: "sounds/colors/green.wav"),
    Item_Model(
        image: "assets/images/colors/color_white.png",
        jpName: 'Shiro',
        enName: 'White',
        sound: "sounds/colors/white.wav"),
    Item_Model(
        image: "assets/images/colors/yellow.png",
        jpName: 'Ki',
        enName: 'Yellow',
        sound: "sounds/colors/yellow.wav"),
    Item_Model(
        image: "assets/images/colors/color_gray.png",
        jpName: 'Gurē',
        enName: 'Gray',
        sound: "sounds/colors/gray.wav")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Colors..",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          backgroundColor: Color.fromARGB(255, 220, 181, 235),
        ),
        backgroundColor: Color.fromARGB(255, 220, 181, 235),
        body: Padding(
            padding:
                const EdgeInsets.only(top: 0, bottom: 0, left: 20, right: 20),
            child: Container(
              width: 400,
              height: 900,
              decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: ListView.builder(
                itemCount: Shown_items.length,
                itemBuilder: (context, index) {
                  return ListItem(item: Shown_items[index]);
                },
              ),
            )));
  }
}
