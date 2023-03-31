import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/google_button.dart';
import 'components/password_input_field.dart';
import 'components/custom_input_field.dart';
import 'components/custom_button.dart';
import 'components/custom_divider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  'Login',
                  style: kTitleTextStyle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 10.0),
                child: Text(
                  'Welcome back! Please enter details',
                  style: kSubTitleTextStyle,
                ),
              ),
              GoogleButton(),
              CustomDivider(),
              BuildCustomInputField(
                labelText: 'Email',
                inputType: TextInputType.emailAddress,
              ),
              BuildPasswordInputField(
                isPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                isPasswordVisible: isPasswordVisible,
                labelText: 'Password',
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
                        'Remember me for 30 days',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF191919),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 16.0,
                    ),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF007AFF),
                      ),
                    ),
                  ),
                ],
              ),
              CustomMainButton(
                buttonText: 'Log in',
                isPressed: () {

                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF727272),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF007AFF),
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


