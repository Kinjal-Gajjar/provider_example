import 'package:flutter/material.dart';

class Valuenotify extends StatelessWidget {
  const Valuenotify({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> counter = ValueNotifier(0);
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: counter,
        builder: (context, value, child) =>
            Center(child: Text(counter.value.toString())),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
