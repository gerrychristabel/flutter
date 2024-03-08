import 'package:flutter/material.dart';
import 'detail_screen.dart'; // Import DetailScreen widget

class HomeScreen extends StatelessWidget {
  final List<String> itemTitles = [
    'The Legend of Zelda: Breath of the Wild',
    'The Witcher 3: Wild Hunt',
    'Red Dead Redemption 2',
    'Super Mario Odyssey',
    'Dark Souls III',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Top 5 game populer pada tahun 2023')),
      body: ListView.builder(
        itemCount: itemTitles.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.grey[200], // Optional background color
            child: Card(
              elevation: 3.0,
              margin: EdgeInsets.all(8.0),
              child: ListTile( // Optional leading icon
                title: Text(itemTitles[index]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        itemIndex: index + 1,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}