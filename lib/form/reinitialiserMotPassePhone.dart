import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class phoneInputRenitialisation extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<phoneInputRenitialisation> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //   return Scaffold(
    // resizeToAvoidBottomInset: mounted,
    // appBar: AppBar(
    //   iconTheme: const IconThemeData(
    //     color: Colors.black,
    //   ),
    //   backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    //   centerTitle: true,
    //   title: const Text(
    //     'Reinitialiser',
    //     style: TextStyle(color: Colors.black),
    //   ),
    // ),
    //     body: ListView(
    //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
    //         children: [
    //           Form(
    //             key: _formKey,
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: <Widget>[
    // const SizedBox(
    //   height: 30,
    // ),
    // const Text(
    //   "Mot de passe oublie",
    //   textAlign: TextAlign.left,
    //   style: TextStyle(
    //       fontSize: 20,
    //       color: Colors.black,
    //       fontWeight: FontWeight.bold),
    // ),
    // const SizedBox(
    //   height: 10,
    // ),
    // const Text(
    //   "Nous tenverrons par e-mail un code pour reinitialiser ton mot de passe",
    //   textAlign: TextAlign.left,
    //   style: TextStyle(fontSize: 10, color: Colors.black),
    // ),
    // const SizedBox(height: 20),
    //                 const TextField(
    //                   decoration: InputDecoration(
    //                     hintText: 'E-mail',
    //                   ),
    //                 ),
    //                 const SizedBox(
    //                   height: 40,
    //                 ),
    //                 MaterialButton(
    //                   minWidth: double.infinity,
    //                   height: 45,
    //                   color: const Color.fromARGB(255, 231, 13, 13),
    //                   textColor: const Color.fromARGB(255, 255, 255, 255),
    //                   onPressed: () {},
    //                   child: const Text('Envoyer un code'),
    //                 )
    //               ],
    //             ),
    //           ),
    //         ]),
    //   );
    // }

    return Scaffold(
        resizeToAvoidBottomInset: mounted,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          actions: const [Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.info),
          )],
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
        body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Saisis ton numéro de téléphone",
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
                "Nous enverrons un code sur ton téléphone",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              const SizedBox(height: 20),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                  //color: Colors.white,
                  //borderRadius: BorderRadius.circular(8),
                  //border: const Border(top: BorderSide(color: Color.fromARGB(255, 20, 19, 19)))
                  border: Border.all(color: Colors.black.withOpacity(0.53)),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Color(0xffeeeeee),
                  //     blurRadius: 10,
                  //     offset: Offset(0, 4),
                  //   ),
                  // ],
                ),
                child: Stack(
                  children: [
                    InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      ignoreBlank: false,
                      // autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      textFieldController: controller,
                      // formatInput: false,
                      initialValue: PhoneNumber(isoCode: "ML", dialCode: "223"),
                      maxLength: 9,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      cursorColor: Colors.black,
                      inputDecoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(bottom: 15, left: 0),
                        border: InputBorder.none,
                        hintText: 'Numéro de Téléphone',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade500, fontSize: 16),
                      ),
                      // onSaved: (PhoneNumber number) {
                      //   print('On Saved: $number');
                      // },
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),

              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                
                minWidth: double.maxFinite,
                height: 45,
                color: const Color.fromARGB(255, 235, 25, 25),
                textColor: const Color.fromARGB(255, 255, 255, 255),
                onPressed: () {},
                child: const Text('Envoyer un code'),
              )
            ],
          ),
        ));
  }
}
