import 'package:flutter/material.dart';
import 'package:simpleinterest/app/model/area_of_circle_model.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  int? radius;
  double? result;
  var gap = const SizedBox(
    height: 8,
  );

  AreaOfCircleModel? areaOfCircleModel;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: const Text(
          'Area of Circle',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  radius = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  hintText: 'Enter radius',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter radius';
                  }
                  return null;
                },
              ),
              gap,
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      areaOfCircleModel = AreaOfCircleModel(radius: radius!);
                      result = areaOfCircleModel!.areaOfCircle();
                    });
                  }
                },
                child: const Text('Calculate'),
              ),
              gap,
            
              Container(
                color: Colors.amber,
                width: double.infinity,
                child: RichText(
                  text: TextSpan(
                      text: 'A',
                      style: const TextStyle(
                        backgroundColor: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.amber,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'rea Of Circle is: $result',
                          style: const TextStyle(color: Colors.white),
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
