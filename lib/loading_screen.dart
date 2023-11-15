import 'package:flutter/material.dart';
import 'api_file.dart';
import 'price_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class loading_screen extends StatefulWidget {
  const loading_screen({super.key});

  @override
  State<loading_screen> createState() => _loading_screenState();
}

class _loading_screenState extends State<loading_screen> {


  void main_api()async{
    using_api i= new using_api();
    var currency_data_value=await i.get_Data_api('AUD');
    print("currency: -------> $currency_data_value");
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return price_screen(currency_data_value);
    }));
  }
  @override
  void initState(){
    super.initState();
    main_api();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitThreeInOut(
        size: 50,
        color: Colors.blue,
      ),
    );
  }
}
