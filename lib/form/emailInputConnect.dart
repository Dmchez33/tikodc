import 'package:flutter/material.dart';

class emailInputConnect extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<emailInputConnect> {
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Phone Field Example'),
      // ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Nom d\'utilisateur ou E-mail',
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Mot de passe',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _buildPopupDialog(context),
                      );
                    },
                    child: const Text(
                      "Mot de passe oublier ?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
          ]),
    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  // ignore: unnecessary_new
  return new AlertDialog(
    // title: const Text('Popup example'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => _buildPopupDialog(context),
            );
          },
          child: const Text(
            "Numéro de téléphone",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => _buildPopupDialog(context),
            );
          },
          child: const Text(
            "E-mail",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    // actions: <Widget>[
    //   TextButton(
    //     onPressed: () {
    //       Navigator.of(context).pop();
    //     },
    //     child: const Text('Close'),
    //   ),
    // ],
  );
}
