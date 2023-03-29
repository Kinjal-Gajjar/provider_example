import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/home_page_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ChangeNotifierProvider<HomePageProvider>(
            create: (context) => HomePageProvider(),
            child: Consumer<HomePageProvider>(
              builder: (context, provider, child) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    provider.eligibleMeassage,
                    style: TextStyle(
                        color: (provider.eligible == true)
                            ? Colors.green
                            : Colors.red),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(hintText: 'Enter the your age'),
                    onChanged: (val) {
                      provider.checkeligiblelity(int.parse(val));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
