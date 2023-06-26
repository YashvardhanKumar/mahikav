import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mahikav/components/buttons/filled_buttons.dart';
import 'package:mahikav/constants.dart';

import 'components/text_form_field.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({Key? key}) : super(key: key);

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  final phoneCtrl = TextEditingController();
  final otpCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool resendOTP = false;
  String? code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField(
              label: 'Phone No.',
              controller: phoneCtrl,
              hint: '+91 00000 00000',
              keyboardType: TextInputType.phone,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Field is Required';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomFilledButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await auth.verifyPhoneNumber(
                      phoneNumber: '+91${phoneCtrl.text}',
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        code = verificationId;
                        setState(() {});
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  }
                },
                label: 'Send OTP')
          ],
        ),
      ),
    );
  }
}