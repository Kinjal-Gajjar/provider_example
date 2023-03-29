import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/example_provider_page.dart';

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
}

var value = 0.6;

class _Example1State extends State<Example1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<ExampleProvider>(
      builder: (context, val, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Slider(
              min: 0,
              max: 1.0,
              value: val.value,
              onChanged: (newVale) {
                val.updateValue(newVale);
              }),
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 100,
                color: Colors.green.withOpacity(val.value),
              )),
              Expanded(
                  child: Container(
                height: 100,
                color: Colors.red.withOpacity(val.value),
              )),
            ],
          )
        ],
      ),
    ));
  }
}
