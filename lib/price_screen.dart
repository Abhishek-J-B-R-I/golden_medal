import 'package:flutter/material.dart';
import 'coin_data.dart';
class price_screen extends StatefulWidget {
  const price_screen({super.key});

  @override
  State<price_screen> createState() => _price_screenState();
}

class _price_screenState extends State<price_screen> {
  String
  drope_down_menu= "RUP";
  /*DropdownMenuItem ddmil(List<String> cl){

    for(String c in cl){

     return  DropdownMenuItem(child: Text("$c"),value:"$c" ,);
    }


  }*/

  List<DropdownMenuItem<String>> ddmil(){
    List<DropdownMenuItem<String>> dropmenuitem=[];

        for(int i=0;i<currency_list.length;i++){
          String c= currency_list[i];
         var currency= DropdownMenuItem(child: Text(c),value: c,);
        dropmenuitem.add(currency);
        }
        return dropmenuitem;
  }
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

            alignment: Alignment.center,

            child: DropdownButton<String>(
                value: drope_down_menu,
                items:ddmil()
                // [
/*
              DropdownMenuItem(child:Text("USD") ,value: "USD",),
              DropdownMenuItem(child: Text("AUD"),value: "AUD",),
              DropdownMenuItem(child: Text("RUP"), value: "RUP",)*/
                //ddmil(currency_list);
            //]
                ,onChanged:(value){
                  setState(() {
                    drope_down_menu=value!;
                  });

            }),
          )
        ],
      ),
    );
  }
}
