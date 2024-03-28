import "dart:ui";
import 'package:flutter/material.dart';

class MaterialHomePage extends StatefulWidget{
  const MaterialHomePage({super.key});
  @override
  State<MaterialHomePage> createState() => _MaterialHomePage();
} 

class _MaterialHomePage extends State<MaterialHomePage>{
  double result=0;
    TextEditingController textEditingController =TextEditingController();
    @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
            color: Colors.black, width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10));
    return Scaffold(
      backgroundColor: const Color.fromARGB(66, 13, 232, 112),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(66, 13, 232, 112),
        title: const Text('Currency Converter',
        style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold),
        ),
        foregroundColor: Colors.black,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text(
              'INR ${result !=0 ?  result.toStringAsFixed(3): result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  
                  setState(() {
                  
                    result= double.parse(textEditingController.text)*83.36;
                  });
                  
                  
                  
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                        
                    foregroundColor:
                        Colors.white70,
                    minimumSize: 
                        const Size(double.infinity, 50),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    )),
                child: const Text('Convert',
                style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
}
}

