import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}
class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  double result = 0;
  double? principle;
  double? rate;
  double? time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                onChanged: (value){
                  principle = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter principle', border: OutlineInputBorder())
            ),
            SizedBox(height: 10,),
            TextField(
              onChanged: (value){
                rate= double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter rate', border: OutlineInputBorder()),
            ),
            SizedBox(height: 10,),
            TextField(
              onChanged: (value){
                time = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter time', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    result = (principle! * rate! * time!)/100;
                  });
                },
                child: Text('Calculate', style: TextStyle(fontSize: 30),),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}