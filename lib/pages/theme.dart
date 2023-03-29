import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/themechange.dart';

class CustomTheme extends StatefulWidget {
  const CustomTheme({super.key});

  @override
  State<CustomTheme> createState() => _CustomThemeState();
}

class _CustomThemeState extends State<CustomTheme> {
  @override
  Widget build(BuildContext context) {
    final themechnager = Provider.of<ThemeProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Subscribe'),
        ),
        body: Consumer<ThemeProvider>(
          builder: (context, value, child) => Column(
            children: [
              RadioListTile(
                  value: ThemeMode.light,
                  title: const Text('Light Mode'),
                  groupValue: themechnager.thememode,
                  onChanged: themechnager.setTheme),
              RadioListTile(
                  value: ThemeMode.dark,
                  title: const Text('Dark Mode'),
                  groupValue: themechnager.thememode,
                  onChanged: themechnager.setTheme),
              RadioListTile(
                  value: ThemeMode.system,
                  title: const Text('System Mode'),
                  groupValue: themechnager.thememode,
                  onChanged: themechnager.setTheme),
            ],
          ),
        ));
  }
}
