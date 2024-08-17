import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lang_app/components/itemInfo.dart';
import 'package:lang_app/models/items.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item});

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
            Image(
              image: AssetImage(item.image!),
            ),
            ItemInfo(item: item)
          ],
        ),
      ),
    );
  }
}
