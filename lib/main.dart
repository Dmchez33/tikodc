import 'package:flutter/material.dart';

import 'Accueil.dart';
//la methode main lancera le code de notre application
void main() {
//La methode runApp chargera la classe MyApp
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //La methode build permet de dessiner l'interface utilisateur avec le widget de MaterialApp
  //Il prend paramètre un titre en attribut home qui va nous 
  //permet definir le widget qui sera la page d'accueil
  //L'attribut debugShowCheckedModeBanner permet de supprimer 
  //la banniere debug qui se trouve sur notre app
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter TikTok',
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}