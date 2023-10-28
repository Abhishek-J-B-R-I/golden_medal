import 'package:flutter/material.dart';

class price_screen extends StatefulWidget {
  const price_screen({super.key});

  @override
  State<price_screen> createState() => _price_screenState();
}

class _price_screenState extends State<price_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coin Ticker "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(

            padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
            child: Card(
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15 , horizontal: 28),
                child: Center(child: Text("1 BTC = ? USD", style: TextStyle(fontSize: 20, color: Colors.white),)),
              ),

            ),
          ),
          Container(
            height: 150,
            padding: EdgeInsets.only(bottom: 30),
            color: Colors.lightBlue,
            child: null,
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
