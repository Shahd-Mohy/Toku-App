import 'package:flutter/material.dart';
import 'package:lang_app/screens/home_page.dart';


void main() {
  runApp(TukoApp());
}

class TukoApp extends StatelessWidget {
  const TukoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(debugShowCheckedModeBanner: false, home: const HomePage()));
  }
}


  