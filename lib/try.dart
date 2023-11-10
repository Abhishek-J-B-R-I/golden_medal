import 'coin_data.dart';

int main(){
  List <String> l=[];
  for(int i=0;i<currency_list.length;i++){
    var newitem="hello this is ${currency_list[i]}";
    l.add(newitem);
  }

  for(int j=0;j<l.length;j++){
    print("this is l: ${l[j]}");
  }



  return 0;
}