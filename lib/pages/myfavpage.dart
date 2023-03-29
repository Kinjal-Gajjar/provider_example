import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/fav_page_provider.dart';

class MyFavPage extends StatefulWidget {
  const MyFavPage({super.key});

  @override
  State<MyFavPage> createState() => _MyFavPageState();
}

class _MyFavPageState extends State<MyFavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<FavPageProvider>(
            builder: (context, value, child) => ListView.builder(
                itemCount: value.selectItem.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      if (value.selectItem.contains(index)) {
                        value.removeItem(index);
                      } else {
                        value.addItem(index);
                      }
                    },
                    title: Text('Index $index'),
                    trailing: Icon(value.selectItem.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_border),
                  );
                })));
  }
}
