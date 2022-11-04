import 'package:flutter/material.dart';
import 'form/InputPhone.dart';
import 'form/emailInput.dart';



class InscriptionEtape extends StatelessWidget {
  const InscriptionEtape({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Inscription';
    return DefaultTabController(
      length: 3,
      
      child:  Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData( color: Colors.black, ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          centerTitle: true,
          title: const Text(appTitle, style: TextStyle(color: Colors.black),textAlign: TextAlign.center),
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
                  const RegisterWithPhoneNumber(),
                  emailInput(),
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