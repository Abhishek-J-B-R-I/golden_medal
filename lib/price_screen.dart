import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';

class price_screen extends StatefulWidget {
  const price_screen({super.key});

  @override
  State<price_screen> createState() => _price_screenState();
}

class _price_screenState extends State<price_screen> {
  String drope_down_menu = "RUP";
  /*DropdownMenuItem ddmil(List<String> cl){

    for(String c in cl){

     return  DropdownMenuItem(child: Text("$c"),value:"$c" ,);
    }


  }*/
/*
  List<DropdownMenuItem> ddmil(){
    List<DropdownMenuItem<String>> dropmenuitem=[];

        for(int i=0;i<currency_list.length;i++){
          String c= currency_list[i];
         var currency= DropdownMenuItem(child: Text(c),value: c,);
        dropmenuitem.add(currency);
        }
        return dropmenuitem;
  }*/

  //List<DropdownMenuItem<String>> getDropdownItem(){
  //int i=0;
  /*List<DropdownMenuItem<String>> dropdownItems = [
      /*DropdownMenuItem(child:Text("${currency_list[i]}") ,value: "${currency_list[i]}",),
      //DropdownMenuItem(child:Text("${currency_list[1]}") ,value: "${currency_list[1]}",),
      //DropdownMenuItem(child:Text("${currency_list[1]}") ,value: "${currency_list[1]}",),
/*DropdownMenuItem(child: Text("${currency_list[i]}"
    ),value: "${currency_list[i]}");*/
      DropdownMenuItem(child:Text("${currency_list[1]}") ,value: "${currency_list[1]}",),

      DropdownMenuItem(child:Text("${currency_list[2]}") ,value: "${currency_list[2]}",),
      DropdownMenuItem(child: Text("AUD"),value: "AUD",),
      DropdownMenuItem(child: Text("RUP"), value: "RUP",)*/

    ];
  for(int i=0;i<currency_list.length;i++){



    dropdownItems.add(DropdownMenuItem(child:Text("$i") ,value: "$i"));
  }
  return dropdownItems;
  }*/

  /* List<DropdownMenuItem<String>> getDropdownItem(){
      int i=0;
      List<DropdownMenuItem<String>> dropdownItems = [
        DropdownMenuItem(child:Text("RUP") ,value: "RUP",),

       // DropdownMenuItem(child:Text("${currency_list[i]}") ,value: "${currency_list[i]}",),
      ];
      for(int i=0;i<currency_list.length;i++){
       // i=1;
        dropdownItems.add(DropdownMenuItem(
          child: Text("${currency_list[i]}"),
          value: "${currency_list[i]}_$i",
        )
        );}

      return dropdownItems;
      }*/
//c style for loop used here
  //  }

  List<DropdownMenuItem<String>> getDropdownItem() {
    int i = 0;
    List<DropdownMenuItem<String>> dropdownItems = [
      DropdownMenuItem(
        child: Text("RUP"),
        value: "RUP",
      ),

      // DropdownMenuItem(child:Text("${currency_list[i]}") ,value: "${currency_list[i]}",),
    ];
    for (String c in currency_list) {
      // i=1;
      dropdownItems.add(DropdownMenuItem(
        child: Text(c),
        value: "$c",
      ));
    }

    return dropdownItems;
  }

  List<Text> ios_style() {
    List<Text> l = [

    ];
    for (String i in currency_list) {
      l.add(Text('$i'));
    }
    return l;
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 28),
                child: Center(
                    child: Text(
                  "1 BTC = ? USD",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
          ),
          Container(
            height: 150,
            padding: EdgeInsets.only(bottom: 30),
            color: Colors.lightBlue,
            alignment: Alignment.center,
            child: CupertinoPicker(
                itemExtent: 32.0,
                onSelectedItemChanged: (int value) {
                  print(value);
                },
                children: ios_style()),
          )
        ],
      ),
    );
  }
}
//ios now
