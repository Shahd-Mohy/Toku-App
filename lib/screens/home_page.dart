import 'package:flutter/material.dart';
import 'package:lang_app/screens/colors_page.dart';
import 'package:lang_app/screens/family_page.dart';
import 'package:lang_app/screens/numbers_page.dart';
import 'package:lang_app/screens/phrases_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 181, 235),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        child: Container(
          width: 400,
          height: 900,
          decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 25, left: 10),
                child: Card(
                  elevation: 1.5,
                  child: ListTile(
                    leading: CircleAvatar(
                        radius: 25,
                        child: Image(
                          image: NetworkImage(
                              "https://www.pngmart.com/files/21/Japan-Transparent-PNG.png"),
                        )),
                    title: Text(
                      "  Toku App...",
                      style: TextStyle(
                          fontSize: 21.5, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xffF7F2FA),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70),
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70),
                      topLeft: Radius.circular(70),
                    )),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Category(
                          text: "Numbers",
                          color: Color.fromARGB(255, 165, 208, 204),
                          bottomLeft: 30,
                          topRight: 30,
                          image:
                              "https://th.bing.com/th/id/OIP.yfNmAwbaMN02POjQ6jF3kgHaHa?w=170&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7",
                          bottomRight: 0,
                          topLeft: 0,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return NumbersPage();
                            }));
                          },
                        ),
                        Category(
                          text: " Family  ",
                          color: Color.fromARGB(255, 220, 181, 235),
                          bottomLeft: 0,
                          topRight: 0,
                          image:
                              "https://t3.ftcdn.net/jpg/00/74/45/84/360_F_74458490_OQvTsYVcXO02Q5AFiWW4Ec4fbtXRSbxg.jpg",
                          bottomRight: 30,
                          topLeft: 30,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return FamilyPage();
                            }));
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Category(
                          text: " Colors  ",
                          color: Color.fromARGB(255, 220, 181, 235),
                          bottomLeft: 0,
                          topRight: 0,
                          image:
                              "https://th.bing.com/th/id/OIP.iZuX5pnfvOWhUsPie98ffAHaGL?rs=1&pid=ImgDetMain",
                          bottomRight: 30,
                          topLeft: 30,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ColorsPage();
                            }));
                          },
                        ),
                        Category(
                          text: "Phrase",
                          color: Color.fromARGB(255, 165, 208, 204),
                          bottomLeft: 30,
                          topRight: 30,
                          image:
                              "https://ih0.redbubble.net/image.652393791.4644/flat,1000x1000,075,f.jpg",
                          bottomRight: 0,
                          topLeft: 0,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PhrasesPage();
                            }));
                          },
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String? text;
  Color? color;
  String? image;
  double? bottomLeft;
  double? bottomRight;
  double? topLeft;
  double? topRight;
  Category(
      {this.text,
      this.color,
      this.image,
      this.bottomLeft,
      this.bottomRight,
      this.topLeft,
      this.topRight,
      this.onTap});
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        top: 20,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                text!,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 11,
              ),
              CircleAvatar(
                radius: 27,
                child: Image(image: NetworkImage("$image")),
              )
            ],
          ),
          padding: EdgeInsets.all(16),
          height: 170,
          width: 110,
          decoration: BoxDecoration(
              color: color!,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(bottomLeft!),
                topRight: Radius.circular(topRight!),
                bottomRight: Radius.circular(bottomRight!),
                topLeft: Radius.circular(topLeft!),
              )),
        ),
      ),
    );
  }
}
