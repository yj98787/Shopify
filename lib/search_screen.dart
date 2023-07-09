import 'package:flutter/material.dart';
import 'consts.dart';

class SearchItems extends StatefulWidget {
  @override
  State<SearchItems> createState() => _SearchItemsState();
}

class _SearchItemsState extends State<SearchItems> {
  List<String> items = [
    'Laptop',
    'Dress',
    "men's Shirt",
    'iPhone 13 Pro max',
    'Rich Dad Poor Dad',
    'Shoes',
    'Television',
    'Smart Watch',
    'Duopods F30',
    'College Bag',
  ];

  List<String> filteredItems = [];

  void filterItems(String query) {
    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    filteredItems = items;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme,
        title: Text(
          'Shopify',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          TextFormField(
            onChanged: (query) => filterItems(query),
            decoration: InputDecoration(
              hintText: 'Search Here',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredItems[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
