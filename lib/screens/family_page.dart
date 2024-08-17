import 'package:flutter/material.dart';
import 'package:lang_app/components/List_item.dart';
import 'package:lang_app/models/items.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final List<Item_Model> Shown_items = const [
    Item_Model(
        image: "assets/images/family/family_father.png",
        jpName: "Chichioya",
        enName: "Father",
        sound: "sounds/family/father.wav"),
    Item_Model(
        image: "assets/images/family/family_mother.png",
        jpName: "Hahaoya",
        enName: "Mother",
        sound: "sounds/family/mother.wav"),
    Item_Model(
        image: "assets/images/family/family_older_brother.png",
        jpName: "Onīsan",
        enName: "Older brother",
        sound: "sounds/family/older bother.wav"),
    Item_Model(
        image: "assets/images/family/family_older_sister.png",
        jpName: "Ani",
        enName: "Older brother",
        sound: "sounds/family/older sister.wav"),
    Item_Model(
        image: "assets/images/family/family_daughter.png",
        jpName: "Musume",
        enName: "Daughter",
        sound: "sounds/family/daughter.wav"),
    Item_Model(
        image: "assets/images/family/family_son.png",
        jpName: "Musuko",
        enName: "Son",
        sound: "sounds/family/son.wav"),
    Item_Model(
        image: "assets/images/family/family_younger_sister.png",
        jpName: "Imōto",
        enName: "Younger sister",
        sound: "sounds/family/younger sister.wav"),
    Item_Model(
        image: "assets/images/family/family_younger_brother.png",
        jpName: "Otōto",
        enName: "Younger brother",
        sound: "sounds/family/younger brohter.wav"),
    Item_Model(
        image: "assets/images/family/family_grandfather.png",
        jpName: "ojīsan",
        enName: "Grand Father",
        sound: "sounds/family/grand father.wav"),
    Item_Model(
        image: "assets/images/family/family_grandmother.png",
        jpName: "sobo",
        enName: "Grand Mother",
        sound: "sounds/family/grand mother.wav")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Family Members..",
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
