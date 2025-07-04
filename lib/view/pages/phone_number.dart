import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:registration/view/components/app_color.dart';
import 'package:registration/view/components/elevated_button.dart';
import 'package:registration/view/components/sign_methods.dart';
import 'package:registration/view/pages/signup.dart';

class PhoneNumber extends StatefulWidget {
  PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final formKey = GlobalKey<FormState>();

  TextEditingController phoneNumber = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.7),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 160, left: 32, right: 32),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Form(
                      key: formKey,
                      child: Center(
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: phoneNumber,
                                keyboardType: TextInputType.phone,
                                validator: (value){
                                  if(value!.isEmpty){
                                    return "Please enter your phone number";
                                  }else if(value.length > 15 || value.length < 10){
                                    return"Please enter valid numner";
                                  }
                                  else if(!isChecked){
                                    return "Please check our terms of service";
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.title,
                                ),
                                decoration: InputDecoration(
                                  suffix: Container(
                                    padding: EdgeInsets.all(8),
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.surface,
                                      border: Border.all(
                                        color: AppColor.border,
                                      ),
                                    ),
                                    child: SvgPicture.asset(
                                      "assets/icons/switch.svg",
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.only(left: 20),
                                  hintText: "Enter your Phone number",
                                  hintStyle: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.subtitle,
                                  ),
                                  errorStyle: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: buildElevatedButton(
                        text: "Login now",
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                              Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                          }
                        
                        },
                        borderRadius: 32,
                        horizontal: 100,
                      ),
                    ),
                    signMethods(
                      isChecked: isChecked,
                      onPressed: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
