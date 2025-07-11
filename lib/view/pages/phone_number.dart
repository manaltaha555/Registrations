import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:registration/view/components/app_color.dart';
import 'package:registration/view/components/elevated_button.dart';
import 'package:registration/view/components/sign_methods.dart';
import 'package:registration/view/pages/signup.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final formKey = GlobalKey<FormState>();

  TextEditingController phoneNumber = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.surface,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Iconsax.arrow_left, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200, bottom: 40),
                    child: TextFormField(
                      controller: phoneNumber,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your phone number";
                        } else if (value.length > 15 ||
                            value.length < 10) {
                          return "Please enter valid numner";
                        } else if (!isChecked) {
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
                        contentPadding: EdgeInsets.only(left: 35),
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
                  BuildElevatedButton(
                    color: AppColor.primary,
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
                    child: Text(
                      "Login Now",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: AppColor.title,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
            SignMethods(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
