import 'package:flutter/material.dart';

class BuilderListView extends StatefulWidget {
  const BuilderListView({Key? key}) : super(key: key);

  @override
  State<BuilderListView> createState() => _BuilderListViewState();
}

class _BuilderListViewState extends State<BuilderListView> {
  final items = List.generate(30, (index) {
    return "Item $index";
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView builder'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              items[index],
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          );
        },
      ),
    );
  }
}
