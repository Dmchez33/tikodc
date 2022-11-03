// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tikodc/Add.dart';
import 'package:tikodc/Now.dart';
import 'package:tikodc/Profil.dart';
import 'package:tikodc/Reception.dart';


import 'AccueilPage.dart';
import 'Inscription.dart';
import 'inscriptionEtape1.dart';

class MainSecondWidget extends StatefulWidget {
  const MainSecondWidget({Key? key}) : super(key: key);
  @override
  State<MainSecondWidget> createState() => _MainSecondWidget();
}

class _MainSecondWidget extends State<MainSecondWidget> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  //Cet attribut correspond à une liste de widget correspondant a nos pages
  final List<Widget> _pages = [
    AccueilPage(),
    Now(),
    Add(),
    Reception(),
    MyCustomForm()
    //InscriptionPage(),
  ];

  @override
  Widget build(BuildContext context) {
    //Scaffold widget va nous permet de créer tous les 
    //élements de base de notre application 
    return Scaffold(
      backgroundColor: const Color(0xFFFFFF),
      body: _pages[_selectedIndex],
      /*Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),*/

       //Container(color: Colors.red),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF141518),
        //showSelectedLabels: false,
        //showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/now.png',
              height: 25,
            ),
            label: 'Now',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/tiktok_add.png',
              height: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/message.png',
              height: 25,
            ),
            label: 'Boite de reception',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profil.png',
              height: 25,
            ),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}