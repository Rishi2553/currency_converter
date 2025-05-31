
import 'package:flutter/material.dart';

class CurrencyConvrerterMaterialAppPage extends StatefulWidget{
  const CurrencyConvrerterMaterialAppPage({super.key});
  @override
  State<CurrencyConvrerterMaterialAppPage> createState() => _CurrencyConvrerterMaterialAppPageState();

}
class _CurrencyConvrerterMaterialAppPageState extends State<CurrencyConvrerterMaterialAppPage>{
  double result=0;
  final TextEditingController textEditingController =TextEditingController();
  void convert(){
    
              setState(() {  
                result=double.parse(textEditingController.text)*85.5;   
              });
  }

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
            'INR $result',
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: textEditingController,
              
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
              onPressed: convert,
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


// class CurrencyConvrerterMaterialAppPagee extends StatelessWidget{
//   const CurrencyConvrerterMaterialAppPagee({super.key});
 