import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/count_page_provider.dart';

class CountPage extends StatefulWidget {
  const CountPage({super.key});

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  @override
  Widget build(BuildContext context) {
    // CountProvider countProvider = CountProvider();
    final countProvider = Provider.of<CountProvider>(context, listen: false);

    return Scaffold(
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) => Text(value.counter.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
