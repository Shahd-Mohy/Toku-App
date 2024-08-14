import 'package:flutter/material.dart';
import 'package:lang_app/models/numbers.dart';


class Num_item extends StatelessWidget {
  const Num_item({super.key, required this.number});

  final Number number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffF6EFDC),
            borderRadius: BorderRadius.all(Radius.circular(22))),
        width: 350,
        height: 100,
        child: Row(
          children: [
            Image(
              image: AssetImage(number.image),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number.jpName,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    number.enName,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: IconButton(
                  icon: Icon(Icons.play_arrow_rounded),
                  color: Colors.black,
                  onPressed: () {
                    
                  }),
            )
          ],
        ),
      ),
    );
  }
}
