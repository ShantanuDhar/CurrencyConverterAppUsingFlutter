import 'package:flutter/cupertino.dart';

class CupertinoHomePage extends StatefulWidget {
  const CupertinoHomePage({super.key});

  @override
  State<CupertinoHomePage> createState() => _CupertinoHomePage();
}

class _CupertinoHomePage extends State<CupertinoHomePage> {
   double result=0;
    TextEditingController textEditingController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final border = OutlineInputBorder(
    //     borderSide: const BorderSide(
    //         color: CupertinoColors.black, width: 2.0, style: BorderStyle.solid),
    //     borderRadius: BorderRadius.circular(10));
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(66, 13, 232, 112),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(66, 13, 232, 112),
        middle: Text('Currency Converter',
        style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold,
        color: CupertinoColors.black),
       
        ),
        // foregroundColor: Colors.black,
        
      ),
      child: Center(
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
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder:"Please enter the amount in USD", 
                prefix: const Icon(CupertinoIcons.money_dollar),
               
                
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                color:CupertinoColors.black,
                
                onPressed: () {
                  
                  setState(() {
                  
                    result= double.parse(textEditingController.text)*83.36;
                  });
                  
                  
                  
                },
                // style: TextButton.styleFrom(
                //     backgroundColor: CupertinoColors.black,
                        
                //     foregroundColor:
                //         CupertinoColors.white,
                //     minimumSize: 
                //         const Size(double.infinity, 50),
                //     shape:RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(7),
                //     )),
                child: const Text('Convert',
                style: TextStyle(fontWeight: FontWeight.bold,
                color: CupertinoColors.white,
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