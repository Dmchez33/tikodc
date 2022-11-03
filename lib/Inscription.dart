// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'inscriptionEtape1.dart';

// void main() {
//   runApp(const InscriptionPage());
// }

class InscriptionPage extends StatelessWidget {
  const InscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.black,
      // ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Profil',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.person_outline_outlined,
                color: Colors.grey,
                size: 100.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Inscris-toi pour créer un compte',
                style: TextStyle(color: Colors.black87),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 200.0,
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      _openPopup(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[400],
                        textStyle: const TextStyle(color: Colors.white)),
                    child: const Text('Inscription'),
                  ),
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _openPopup(context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    builder: (BuildContext bc) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * .90,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pop(
                        context,
                      ),
                      child: const Icon(
                        Icons.close,
                      ),
                    ),
                    const Icon(Icons.question_mark_rounded),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                const Text(
                  'Inscription à TikTok',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Crée un profil, abonne-toi à d\'autres comptes, crée tes propres vidéos et bien plus encore. ',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ButtonTheme(
                  minWidth: 20.0,
                  child: ElevatedButton(
                    onPressed: () => {

                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 0.8),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(FontAwesomeIcons.user,
                                color: Colors.black87),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text(
                              'Utilise un téléphone ou une adresse e-mail',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 0.8),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(
                              'Continuer avec Facebook',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 0.8),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(
                              'Continuer avec Google',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 0.8),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.lightBlue,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(
                              'Continuer avec Twitter',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                const Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Text(
                      'En continuant, tu acceptes les Condition d\'utilisation de TikTok et confirmes les avoir lu la Politique de confidentialité de TikTok.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                    color: const Color.fromARGB(255, 234, 231, 231),
                    child: Align(
                      child: MaterialButton(
                          onPressed: () => {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              
                              Padding(padding: EdgeInsets.only(right: 10.0),child:Text('Tu as dejà un compte?', style: TextStyle(fontSize: 16))),
                              Text(
                                'Connexion',
                                style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ))

                // Expanded(
                //   child: Align(
                //     alignment: FractionalOffset.bottomCenter,

                //     child: MaterialButton(
                //       onPressed: () => {},

                //       child: const Text('Tu as dejà un compte? Connexion'),
                //     ),
                //   ),
                // ),
                // Center(
                //     child: Align(
                //   alignment: Alignment.bottomRight,
                //   child: ElevatedButton(
                //     onPressed: () => {},
                //     child: const Text('Sample Button'),
                //     style: ElevatedButton.styleFrom(
                //       textStyle: const TextStyle(color: Colors.white),
                //       backgroundColor: Colors.green,
                //       padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                //     ),
                //   ),
                // ))
              ],
            ),
          ),
        ),
      );
    },
  );
}
