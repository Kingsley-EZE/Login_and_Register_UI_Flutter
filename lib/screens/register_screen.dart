import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/google_button.dart';
import '../components/password_input_field.dart';
import '../components/custom_input_field.dart';
import '../components/custom_button.dart';
import '../components/custom_divider.dart';
import 'login_screen.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool isPasswordVisible = false;
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SvgPicture.asset(
                'assets/Illustrasi.svg',
                fit: BoxFit.fitWidth,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0, left: 16.0),
                child: Text(
                  'Create your account',
                  style: kTitleTextStyle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 10.0),
                child: Text(
                  'Registration is fast and free',
                  style: kSubTitleTextStyle,
                ),
              ),
              GoogleButton(
                buttonText: 'Register with Google',
              ),
              CustomDivider(),
              BuildCustomInputField(
                labelText: 'Enter full name',
                inputType: TextInputType.name,
                marginTop: 42.0,
                marginLeft: 16.0,
                marginRight: 16.0,
                marginBottom: 20.0,
              ),
              BuildCustomInputField(
                labelText: 'Email',
                inputType: TextInputType.emailAddress,
                marginTop: 0.0,
                marginLeft: 16.0,
                marginRight: 16.0,
                marginBottom: 20.0,
              ),
              BuildPasswordInputField(
                isPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                isPasswordVisible: isPasswordVisible,
                labelText: 'Create a password',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Text(
                        'By registering, I have read and agree to the Terms\nand Privacy Policy',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF191919),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              CustomMainButton(
                buttonText: 'Register',
                isPressed: () {

                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF727272),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF007AFF),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
