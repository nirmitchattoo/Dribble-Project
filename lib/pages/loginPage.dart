import 'package:finance_mobile_application_design/utils/colors.dart';
import 'package:finance_mobile_application_design/utils/routes.dart';
import 'package:finance_mobile_application_design/widgets/formField.dart';
import 'package:finance_mobile_application_design/widgets/loginButton.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                scale: 1.4,
              ),
              SizedBox(height: 32),
              CustomFormField(
                isPasswordField: false,
                fieldName: "Email Address",
              ),
              SizedBox(height: 16.0),
              CustomFormField(
                isPasswordField: true,
                fieldName: "Password",
              ),
              SizedBox(height: 16.0),
              LoginButton(
                text: "Login",
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.overviewPage);
                },
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle signup button press
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle forgot password button press
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}