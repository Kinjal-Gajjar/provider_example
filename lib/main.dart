import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/count_page_provider.dart';
import 'package:provider_example/provider/example_provider_page.dart';
import 'package:provider_example/provider/fav_page_provider.dart';
import 'package:provider_example/provider/home_page_provider.dart';
import 'package:provider_example/provider/themechange.dart';

import 'pages/value_notify_listen.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CountProvider>(
          create: (context) => CountProvider(),
        ),
        ChangeNotifierProvider(create: (context) => HomePageProvider()),
        ChangeNotifierProvider(create: (context) => ExampleProvider()),
        ChangeNotifierProvider(create: (context) => FavPageProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Builder(builder: (context) {
        final themechanger = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themechanger.thememode,
          theme: ThemeData(
            primarySwatch: Colors.pink,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          // home: CountPage(),
          home: const Valuenotify(),
        );
      }),
    );
  }
}
