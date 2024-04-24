import 'package:flutter/material.dart';
 
class Classwork extends StatefulWidget {
  const Classwork({Key? key});
 
  @override
  State<Classwork> createState() => _RadioScreenState();
}
 
class _RadioScreenState extends State<Classwork> {
  double? first;
  double? second;
  double? output;
  double? _result;
 
  final myKey = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: const Text("Nayan_Prajapati"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Form(
        key: myKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a Number";
                  }
                  if (double.tryParse(value) == null) {
                    return "Invalid number format";
                  }
                  return null;
                },
                onChanged: (value) {
                  first = double.tryParse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter a number",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a Number";
                  }
                  if (double.tryParse(value) == null) {
                    return "Invalid number format";
                  }
                  return null;
                },
                onChanged: (value) {
                  second = double.tryParse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter a number",
                  border: OutlineInputBorder(),
                ),
              ),
              RadioListTile(
                title: const Text('Add'),
                value: 1.0,
                groupValue: _result,
                onChanged: (_) {
                  setState(() {
                    _result = 1.0;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Subtract'),
                value: 2.0,
                groupValue: _result,
                onChanged: (_) {
                  setState(() {
                    _result = 2.0;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Multiply'),
                value: 3.0,
                groupValue: _result,
                onChanged: (_) {
                  setState(() {
                    _result = 3.0;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Divide'),
                value: 4.0,
                groupValue: _result,
                onChanged: (_) {
                  setState(() {
                    _result = 4.0;
                  });
                },
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (first != null && second != null && _result != null) {
                      setState(() {
                        switch (_result) {
                          case 1.0:
                            output = first! + second!;
                            break;
                          case 2.0:
                            output = first! - second!;
                            break;
                          case 3.0:
                            output = first! * second!;
                            break;
                          case 4.0:
                            if (second != 0) {
                              output = first! / second!;
                            } else {
                              output = null; // Handle division by zero
                            }
                            break;
                        }
                      });
                    }
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Text('Result: ${output ?? "Result: "}')
            ],
          ),
        ),
      ),
    );
  }
}
 