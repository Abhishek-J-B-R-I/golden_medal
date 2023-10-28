import 'package:flutter/material.dart';
import 'price_screen.dart';
void main(){
  runApp(bitcoin());
}
class bitcoin extends StatelessWidget {
  const bitcoin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
theme: ThemeData.dark().copyWith(
  primaryColor: Colors.lightBlue,
  scaffoldBackgroundColor: Colors.white,

),
      home: price_screen(),
    );
  }
}

