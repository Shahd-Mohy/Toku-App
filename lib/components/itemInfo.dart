import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lang_app/models/items.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});

  final Item_Model item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffF6EFDC),
            borderRadius: BorderRadius.all(Radius.circular(22))),
        width: 235,
        height: 100,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.jpName,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    item.enName,
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
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  icon: Icon(Icons.play_arrow_rounded),
                  color: Colors.black,
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(item.sound));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
