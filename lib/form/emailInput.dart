import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class emailInput extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<emailInput> {
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Phone Field Example'),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'E-mail',
                  
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "En continuant, tu acceptes les Conditions d'utilisation de TikTok et comfirme avoir lu les Politique de confidentialité de TikTok",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 45,
                color: const Color.fromARGB(255, 225, 225, 225),
                textColor: const Color.fromARGB(255, 19, 19, 19),
                onPressed: () {},
                child: const Text('Suivant'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
