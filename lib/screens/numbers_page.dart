import 'package:flutter/material.dart';
import 'package:lang_app/components/List_item.dart';
import 'package:lang_app/models/items.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Item_Model> numbers = const [
    Item_Model(
        image: "assets/images/numbers/number_one.png",
        jpName: "Ichi",
        enName: "One",
        sound: "sounds/numbers/number_one_sound.mp3"),
    Item_Model(
        image: "assets/images/numbers/number_two.png",
        jpName: "Ni",
        enName: "Two",
        sound: "sounds/numbers/number_two_sound.mp3"),
    Item_Model(
        image: "assets/images/numbers/number_three.png",
        jpName: "San",
        enName: "Three",
        sound: "sounds/numbers/number_three_sound.mp3"),
    Item_Model(
        image: "assets/images/numbers/number_four.png",
        jpName: "Shi",
        enName: "Four",
        sound: "sounds/numbers/number_four_sound.mp3"),
    Item_Model(
        image: "assets/images/numbers/number_five.png",
        jpName: "Go",
        enName: "Five",
        sound: "sounds/numbers/number_five_sound.mp3"),
    Item_Model(
        image: "assets/images/numbers/number_six.png",
        jpName: "Roku",
        enName: "Six",
        sound: "sounds/numbers/number_six_sound.mp3"),
    Item_Model(
        image: "assets/images/numbers/number_seven.png",
        jpName: "Shichi",
        enName: "Seven",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    Item_Model(
        image: "assets/images/numbers/number_eight.png",
        jpName: "Hachi",
        enName: "Eight",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    Item_Model(
        image: "assets/images/numbers/number_nine.png",
        jpName: "Ku",
        enName: "Nine",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    Item_Model(
        image: "assets/images/numbers/number_ten.png",
        jpName: "Juu",
        enName: "Ten",
        sound: "sounds/numbers/number_ten_sound.mp3")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Numbers..",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          backgroundColor: Color.fromARGB(255, 165, 208, 204),
        ),
        backgroundColor: Color.fromARGB(255, 165, 208, 204),
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
                itemCount: numbers.length,
                itemBuilder: (context, index) {
                  return ListItem(item: numbers[index]);
                },
              ),
            )));
  }
}
