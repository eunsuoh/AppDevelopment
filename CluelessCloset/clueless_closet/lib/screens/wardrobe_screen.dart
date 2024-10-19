import 'package:flutter/material.dart';

class WardrobeScreen extends StatefulWidget {
  @override
  _WardrobeScreenState createState() => _WardrobeScreenState();
}

class _WardrobeScreenState extends State<WardrobeScreen> {
  List<String> wardrobeItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('옷장 관리')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: wardrobeItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(wardrobeItems[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: (value) {
                setState(() {
                  wardrobeItems.add(value);
                });
              },
              decoration: InputDecoration(
                labelText: '옷 추가하기',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
