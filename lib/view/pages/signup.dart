import 'package:flutter/material.dart';
import 'package:registration/view/components/app_color.dart';
import 'package:registration/view/components/elevated_button.dart';
import 'package:registration/view/components/sign_methods.dart';
import 'package:registration/view/components/textFormField.dart'
    show buildTextFormField;
import 'package:registration/view/pages/login.dart';
import 'package:registration/view/pages/phone_number.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isObsecure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.surface,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 90),
                child: Text(
                  "Create an account",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: AppColor.title,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 48),
                child: Text(
                  "Join us and explore new possibilities!",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: AppColor.subtitle,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    buildTextFormField(
                      controller: email,
                      hint: "Enter your email",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter email';
                        } else if (!RegExp(
                          r'^[^@]+@[^@]+\.[^@]+',
                        ).hasMatch(value)) {
                          return 'Enter valid email';
                        } else if (!isChecked) {
                          return "Please check our terms of service";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: buildTextFormField(
                        controller: password,
                        hint: "Enter your password",
                        isObsecure: isObsecure,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          } else if (value.length <= 6) {
                            return 'Please enter password more than 6 characters';
                          }
                          return null;
                        },
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObsecure
                                ? Icons.visibility_off_outlined
                                : Icons.remove_red_eye_outlined,
                            color: Colors.white.withValues(alpha: 0.5),
                          ),
                          onPressed: () {
                            setState(() {
                              isObsecure = !isObsecure;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                color: AppColor.primary,
                                fontFamily: "Inter",
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: BuildElevatedButton(
                        color: AppColor.primary,
                        child: Text(
                          "Create account",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            color: AppColor.title,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LogIn()),
                            );
                          }
                        },
                      ),
                    ),
                    SignMethods(),

                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PhoneNumber(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: AppColor.subtitle,
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "  Log in",
                              style: TextStyle(
                                color: AppColor.primary,
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
