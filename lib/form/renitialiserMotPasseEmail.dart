import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class emailInputRenitialisation extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<emailInputRenitialisation> {
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: mounted,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: const Text(
          'Reinitialiser',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Mot de passe oublie",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Nous tenverrons par e-mail un code pour reinitialiser ton mot de passe",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 45,
                    color: const Color.fromARGB(255, 231, 13, 13),
                    textColor: const Color.fromARGB(255, 255, 255, 255),
                    onPressed: () {},
                    child: const Text('Envoyer un code'),
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
