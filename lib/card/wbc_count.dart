import 'package:flutter/material.dart';

class WBCcount extends StatefulWidget {
  const WBCcount({Key? key}) : super(key: key);

  @override
  State<WBCcount> createState() => _WBCcountState();
}

class _WBCcountState extends State<WBCcount> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  
  int? result = 0, num1 = 0, num2 = 0;
  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = ((num1! * num2!) ~/ 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Absolute count ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25.0),
            TextField(
                controller: controller1,
                decoration: InputDecoration(
                    labelText: "Relative cell count",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
            SizedBox(height: 25.0),
            TextField(
                controller: controller2,
                decoration: InputDecoration(
                    labelText: "Total WBC count ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
            SizedBox(height: 25.0),
            Text(
              "Result of Absulute-cell count: $result cell/mm^3",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      add();
                      controller1.clear();
                      controller2.clear();
                      
                    },
                    child: Text("calculate"))
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
