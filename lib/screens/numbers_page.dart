import 'package:flutter/material.dart';
import 'package:lang_app/components/item.dart';
import 'package:lang_app/models/numbers.dart';


class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
        image: "assets/images/numbers/number_one.png", jpName: "Ichi", enName: "One"),
    Number(image: "assets/images/numbers/number_two.png", jpName: "Ni", enName: "Two"),
    Number(
        image: "assets/images/numbers/number_three.png",
        jpName: "San",
        enName: "Three"),
    Number(
        image: "assets/images/numbers/number_four.png", jpName: "Shi", enName: "Four"),
    Number(
        image: "assets/images/numbers/number_five.png", jpName: "Go", enName: "Five"),
    Number(
        image: "assets/images/numbers/number_six.png", jpName: "Roku", enName: "Six"),
    Number(
        image: "assets/images/numbers/number_seven.png",
        jpName: "Shichi",
        enName: "Seven"),
    Number(
        image: "assets/images/numbers/number_eight.png",
        jpName: "Hachi",
        enName: "Eight"),
    Number(
        image: "assets/images/numbers/number_nine.png", jpName: "Ku", enName: "Nine"),
    Number(image: "assets/images/numbers/number_ten.png", jpName: "Juu", enName: "Ten")
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
                  return Num_item(number: numbers[index]);
                },
              ),
            )));
  }
}
