import 'package:flutter/material.dart';
import '../models/item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: "Sugar", price: 5000),
    Item(name: "Salt", price: 2000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shopping List")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Navigasi ke halaman detail
              Navigator.pushNamed(context, '/item', arguments: Item);
            },
            child: Card(
              child: ListTile(
                title: Text(items[index].name),
                subtitle: Text(items[index].price.toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}