import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'api_file.dart';


String btccu="AUD";
class price_screen extends StatefulWidget {
 price_screen(this.rvalue,this.rvalue1,this.rvalue2);

 final int rvalue;
 final int rvalue1;
 final int rvalue2;

  @override
  State<price_screen> createState() => _price_screenState();
}

class _price_screenState extends State<price_screen> {

  int? vvalue;
  int? vvalue1;
  int? vvalue2;
  @override
  void initState(){
    super.initState();
    updateui(widget.rvalue,widget.rvalue1,widget.rvalue2);
  }
  void updateui(int vue,int vue1,int vue2){

    setState(() {
      vvalue=vue;
      vvalue1=vue1;
      vvalue2=vue2;
    });
  }

using_api usapi= new using_api();
/*void initState(){
  super.initState();
  usapi.get_Data_api();
}*/
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
  DropdownButton<String> android_Device(){
    int i = 0;
    List<DropdownMenuItem<String>> dropdownItems = [
      DropdownMenuItem(
        child: Text(" "),
        value: " ",
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

    return  DropdownButton<String>(
        value: drope_down_menu,
        items:dropdownItems

        ,onChanged:(value){
      setState(() {
        drope_down_menu=value!;
      });

    });
  }


  CupertinoPicker ios_device(){
    List<Text> l = [

    ];
    for (String i in currency_list) {
      l.add(Text('$i'));
    }

    return CupertinoPicker(
        itemExtent: 32.0,
        onSelectedItemChanged: (int value) {
          setState(() async{
            btccu=currency_list[value];
            int rv=await usapi.get_Data_api('BTC',btccu);
            int rv1=await usapi.get_Data_api('ETH',btccu);
            int rv2=await usapi.get_Data_api('LTC',btccu);
            updateui(rv,rv1,rv2);
            //using_api(btccu);
          });


          print(value);
        },
        children: l,
      backgroundColor: Colors.lightBlue,


    );
  }

  Widget find_device(){
    if(Platform.isAndroid){
      return android_Device();
    }
    else if(Platform.isIOS){
      return ios_device();
    }
    else{
      return ios_device();
    }
  }

Future<int> api_main()async{
    using_api uip= new using_api();
    int okay=await uip.get_Data_api('BTC',btccu);
    int okay1=await uip.get_Data_api('ETH',btccu);
    int okay2=await uip.get_Data_api('LTC',btccu);
    print("BTC apii vlaue: $okay");
    print("ETH apii vlaue: $okay1");
    print("LTC apii vlaue: $okay2");
    return okay;
  }


  @override
  Widget build(BuildContext context) {
api_main();
    usapi.get_Data_api('BTC',btccu);

usapi.get_Data_api('ETH',btccu);

usapi.get_Data_api('LTC',btccu);
    //updateui();
    return Scaffold(
      appBar: AppBar(
        title: Text("Coin Ticker "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 2, 18, 2),
            child: Card(
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 28),
                child: Center(
                    child: Text (
                  "1 BTC = ${ vvalue} $btccu",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 3, 18, 3),
            child: Card(
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 28),
                child: Center(
                    child: Text (
                      "1 ETH = ${ vvalue1} $btccu",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 3, 18, 3),
            child: Card(
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 28),
                child: Center(
                    child: Text (
                      "1 LTC = ${ vvalue2} $btccu",
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
            child:
            //easy way
            //(Platform.isAndroid)?android_Device():ios_device()
            ios_device()
            //find_device()
            ,
          )
        ],
      ),
    );
  }
}
//ios now
/*bronz level done !!

i am facing issue regarding null value in 1 BTC=NULL USD so fixed it to asign defaul value to var rate=1 or 0 */