import 'package:flutter/material.dart';
import 'package:simpleinterest/app/model/simple_interest_model.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  int? principal;
  int? rate;
  int? time;
  double? result;

//relationship
//loosely coupled
  SimpleInterestModel? simpleInterestModel;

//Creatte global key for form
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            ' Calculate Simple Interest',
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    principal = int.parse(value);
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Principal',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Principal";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    rate = int.parse(value);
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Rate',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Rate";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    time = int.parse(value);
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Time',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Rate";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      setState(() {
                        // result = (principal! * rate !* time!)/100;
                        simpleInterestModel = SimpleInterestModel(
                            principal: principal!, rate: rate!, time: time!);
                        result = simpleInterestModel!.simpleInterest();
                      });
                    }
                  },
                  child: const Text('Calculate'),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'SI is: $result',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
