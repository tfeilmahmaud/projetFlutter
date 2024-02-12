import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catégories',
      home: CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catégories'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryCard(
                  title: 'Lettres en Français',
                  subTitle: 'A, B, C, ...',
                  backgroundImage: 'assets/images/lett.jpeg',
                ),
                SizedBox(width: 20), // Espacement entre les catégories
                CategoryCard(
                  title: 'Chiffres en Français',
                  subTitle: '0, 1, 2, ...',
                  backgroundImage: 'assets/imagess/lettres.jpeg',
                ),
              ],
            ),
            SizedBox(height: 20), // Espacement entre les lignes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryCard(
                  title: 'Lettres en Arabe',
                  subTitle: 'ا, ب, ت, ...',
                  backgroundImage: 'assets/images/ttk.jpeg',
                ),
                SizedBox(width: 20), // Espacement entre les catégories
                CategoryCard(
                  title: 'Chiffres en Arabe',
                  subTitle: '٠, ١, ٢, ...',
                  backgroundImage: 'assets/images/lett.jpeg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String backgroundImage;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.backgroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: 150, // Largeur fixe pour chaque catégorie
            height: 150, // Hauteur fixe pour chaque catégorie
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10), // Espacement entre l'image et le titre
          Text(
            title,
            style: TextStyle(
              color: Colors.black, // Couleur du texte en noir
              fontWeight: FontWeight.bold,
              fontSize: 16, // Taille de la police
            ),
          ),
          SizedBox(height: 5), // Espacement entre le titre et le sous-titre
          Text(
            subTitle,
            style: TextStyle(color: Colors.black), // Couleur du texte en noir
          ),
        ],
      ),
    );
  }
}
