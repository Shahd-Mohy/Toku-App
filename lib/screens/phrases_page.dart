import 'package:flutter/material.dart';
import 'package:lang_app/components/List_item.dart';
import 'package:lang_app/components/phrases_item.dart';
import 'package:lang_app/models/items.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Item_Model> numbers = const [
    Item_Model(
        jpName: "  Anata no namae wa nanidesu ka?",
        enName: "What is your Name?",
        sound: "sounds/phrases/what_is_your_name.wav"),
    Item_Model(
        jpName: "  puroguramingu ga daisukidesu",
        enName: "I love programming..",
        sound: "sounds/phrases/i_love_programming.wav"),
    Item_Model(
        jpName: " Watashi wa anime ga daisukidesu",
        enName: "I love anime",
        sound: "sounds/phrases/i_love_anime.wav"),
    Item_Model(
        jpName: "Kimasu ka ?",
        enName: "  Are you coming?",
        sound: "sounds/phrases/are_you_coming.wav"),
    Item_Model(
        jpName: "Hai, ikimasu",
        enName: "  Yes, I am coming",
        sound: "sounds/phrases/yes_im_coming.wav"),
    Item_Model(
        jpName: " Doko ni iku no?",
        enName: "  Where are you going?",
        sound: "sounds/phrases/where_are_you_going.wav"),
    Item_Model(
        jpName: "  Go kibun wa ikagadesu ka?",
        enName: "How are you feeling?",
        sound: "sounds/phrases/how_are_you_feeling.wav"),
    Item_Model(
        jpName: "Zehi go tōroku kudasai!",
        enName: "Don't forget to subscribe!",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Phrases..",
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
                  return PhrasesItem(item: numbers[index]);
                },
              ),
            )));
  }
}
