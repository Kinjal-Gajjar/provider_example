import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/fav_page_provider.dart';
import 'myfavpage.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FavoritePage'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyFavPage(),
                      ));
                },
                icon: const Icon(Icons.favorite))
          ],
        ),
        body: Consumer<FavPageProvider>(
          builder: (context, value, child) => ListView.builder(
            itemCount: 100,
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
            },
          ),
        ));
  }
}
