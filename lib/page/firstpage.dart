import 'package:flutter/material.dart';
import 'package:lab5_135/drik.dart';
class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {

  List <Drink> drinks= [];
  String groupDrink = "";
  String groupcheck = "เลือกสินค้าที่ต้องการ";
 
  @override
  void initState() {
    super.initState();
    drinks = Drink.getDrink();
    print(drinks.length);
    for (var i = 0; i < drinks.length; i++) {
      print(drinks[i].thname );
      print(drinks[i].enname );
      
    }
  }

  List<Widget> createDrinkRadiolist(){
    List<Widget> myWidgets = [];
    
    for (var dr in drinks) {
     myWidgets.add(

      RadioListTile(
            title: Text(dr.thname),
            subtitle: Text(dr.enname),
            secondary: Text(dr.price.toStringAsFixed(2)),
        value: dr.value, groupValue: groupDrink, onChanged:(value) {
        setState(() {
          groupDrink = value!;
          groupcheck = value;
        });
      })
     );
      
    }
    return myWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio_135"),
      ),
      body:  Column(
        children: [
          Text("Drink"),
          Column(
            children: createDrinkRadiolist(),
          ),

        
        ListTile(title: Text("คุณได้เลือก:  " + groupcheck),)
        ],
        
      ),
    );
  }
}