import 'dart:convert';

import 'package:http/http.dart' as http;

class using_api{
var rate;
  void get_Data_api()async{
    String uri='https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=BEB225B6-0ABA-455E-A430-09B0A682856B';
    http.Response rs=await http.get(Uri.parse(uri));

    print(rs.statusCode);

    if(rs.statusCode==200){
      print(rs.body);
      rate= jsonDecode(rs.body)['rate'];
    print("rate: ${rate.toInt()}");
    }
    else {
      print(rs.statusCode);
    }
  }

}