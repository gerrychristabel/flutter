import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int itemIndex;

  DetailScreen({required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    String content = getContent(itemIndex);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Detail'),
            SizedBox(width: 5),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                content,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getContent(int index) {
    switch (index) {
      case 1:
        return 'Sebuah game petualangan aksi yang dikembangkan oleh Nintendo untuk konsol Nintendo Switch. Game ini dianggap sebagai salah satu game terbaik sepanjang masa karena dunia terbukanya yang luas, desain yang indah, dan gameplay yang mendalam.';
      case 2:
        return 'Game RPG yang dikembangkan oleh CD Projekt Red. Game ini dikenal karena cerita epiknya, dunia terbuka yang luas, grafis yang memukau, dan gameplay yang menarik.';
      case 3:
        return 'Sebuah game aksi-petualangan yang dikembangkan oleh Rockstar Games. Game ini terkenal karena dunia terbukanya yang sangat detail, cerita yang mendalam, dan grafis yang luar biasa.';
      case 4:
        return 'Game platformer aksi yang dikembangkan oleh Nintendo untuk konsol Nintendo Switch. Game ini dianggap sebagai salah satu game platformer terbaik yang pernah dibuat dengan desain level yang kreatif dan gameplay yang menyenangkan.';
      case 5:
        return 'Sebuah game RPG aksi yang dikembangkan oleh FromSoftware. Game ini terkenal karena tingkat kesulitannya yang tinggi, desain level yang rumit, dan pertempuran yang menantang. ';
      default:
        return 'Detail'; // Default case
    }
  }
}