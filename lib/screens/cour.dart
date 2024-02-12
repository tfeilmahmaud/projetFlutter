import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importez le package flutter/services

class CoursePage extends StatelessWidget {
  final player = AudioPlayer();
  final List<String> frenchAlphabet = List.generate(
      26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cours'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildCategory('Lettres en Français', frenchAlphabet,
                'audio/alpha.mp3'), // Spécifiez le chemin vers votre fichier audio
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(String title, List<String> items, String audioPath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: items.map((item) {
            return _buildItem(item, audioPath);
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildItem(String title, String audioPath) {
    return ElevatedButton(
      onPressed: () {
        playSound(); // Jouez l'audio lorsque le bouton est pressé
      },
      child: Text(title),
    );
  }

  Future<void> playSound() async {
    String soundPath =
        'audio/alpha.mp3'; //You don't need to include assets/ because AssetSource assume that you have sound in your assets folder.
    await player.play(AssetSource(soundPath));
  }
}
