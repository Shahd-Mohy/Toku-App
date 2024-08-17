import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lang_app/components/itemInfo.dart';
import 'package:lang_app/models/items.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item});
  final Item_Model item;
  @override
  Widget build(BuildContext context) {
    return ItemInfo(item: item);
  }
}
