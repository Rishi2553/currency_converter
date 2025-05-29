import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConvrerterMaterialApp extends StatelessWidget{
  const CurrencyConvrerterMaterialApp({super.key});
  @override
  Widget build(BuildContext context) {
    final boder = OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(
                  5
                  ),
              );
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Currency Converter",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '0',
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration( 
                hintText: 'Plese Enter Amount in USD',
                hintStyle: const TextStyle(
                  color: Colors.black,
                ),
                prefixIcon: const Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
            
                focusedBorder: boder,
                enabledBorder: boder,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: (){
                if(kDebugMode){
                   print("button clicked");
                }
               
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: 
                  const Size(double.infinity, 50),
                 
                
                  shape:
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                
              ),
               child: const Text("Convert")
               ),
          ),
        ],
      ),
      ), 
    );
  }
}