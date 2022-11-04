import 'package:flutter/material.dart';
import 'form/InputPhone.dart';
import 'form/InputPhoneConnect.dart';
import 'form/emailInput.dart';
import 'form/emailInputConnect.dart';



class Connexion extends StatelessWidget {
  const Connexion({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Connexion';
    return DefaultTabController(
      length: 3,
      
      child:  Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData( color: Colors.black, ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: const Text(appTitle, style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
        ),
        body: Column(
          children: [
            const TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Color.fromARGB(255, 112, 111, 111),
              tabs: [
                Tab(
                  child: Text('Téléphone'),
                ),
                Tab(
                  child: Text('E-mail'),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  InputPhoneConnect(),
                  emailInputConnect(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class MyCustomForm extends StatelessWidget {
//   const MyCustomForm({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(length: length, child: child) Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         // const Padding(
//         //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//         //   child: TextField(
//         //     decoration: InputDecoration(
//         //       border: OutlineInputBorder(),
//         //       hintText: 'Enter a search term',
//         //     ),
//         //   ),
//         // ),
//         const TabBar(
//               tabs: [
//                 Tab(
//                   icon: Icon(Icons.grid_3x3, color: Colors.black),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.favorite, color: Colors.black),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.lock_outline_rounded, color: Colors.black),
//                 ),
//               ],
//             ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextFormField(
//             decoration: const InputDecoration(
//               border: UnderlineInputBorder(),
//               labelText: 'Enter your username',
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }