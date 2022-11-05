import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterWithPhoneNumber extends StatefulWidget {
  const RegisterWithPhoneNumber({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegisterWithPhoneNumberState createState() =>
      _RegisterWithPhoneNumberState();
}

class _RegisterWithPhoneNumberState extends State<RegisterWithPhoneNumber> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        resizeToAvoidBottomInset: mounted,
        backgroundColor: Colors.white,
        body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                child: const Text('Envoyer un code'),
              )
            ],
          ),
        ));
  }
}
