import 'package:currency_converter/currency_convrerter_material_app.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const myapp());
}
class myapp extends StatelessWidget{
   const myapp({super.key});
  @override
  Widget build(BuildContext context) {
   
    // TODO: implement build
   return const MaterialApp(
    home: CurrencyConvrerterMaterialAppPage(),
   );
  }
}