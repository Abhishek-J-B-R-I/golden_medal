import 'dart:convert';

import 'package:http/http.dart' as http;

class using_api{
  //using_api(this.change_currency);
var rate;
int? r;
String apiid1='BEB225B6-0ABA-455E-A430-09B0A682856B';
String apiid2='8497CCD2-039D-4462-A4FD-8166C65CDD1F';
//String change_currency='USD';
 Future<int> get_Data_api(String bitcoin,String change_currency)async{
    String uri='https://rest.coinapi.io/v1/exchangerate/$bitcoin/$change_currency?apikey=$apiid2';
    http.Response rs=await http.get(Uri.parse(uri));

    print(rs.statusCode);

    if(rs.statusCode==200){
      print(rs.body);
      rate= jsonDecode(rs.body)['rate'];
    print("$change_currency rate: ${rate}");
   //return rate.toInt();
r=rate.toInt();
return r!;
    }
    else {
      print(rs.statusCode);
      return 0;
    }
  }

}