import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:registration/view/components/app_color.dart';
import 'package:registration/view/components/elevated_button.dart';
import 'package:registration/view/pages/phone_number.dart';
import 'package:registration/view/pages/signup.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

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
        backgroundColor: Colors.black.withValues(alpha: 0.1),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90, bottom: 16),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          gradient: LinearGradient(
                            colors: [Color(0XFF14B4E9), Color(0XFF30DDFE)],
                          ),
                        ),
                        child: Text(
                          "BALA",
                          style: TextStyle(
                            color: AppColor.title,
                            fontFamily: 'Inter',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Login to your account",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: AppColor.title,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Welcome back! Please enter your details.",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: AppColor.subtitle,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    BuildElevatedButton(
                      color: AppColor.primary,
                      horizontal: 120,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PhoneNumber()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: AppColor.title,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: BuildElevatedButton(
                        horizontal: 40,
                        onPressed: () {},
                        color: Color(0XFFBDE2EC).withValues(alpha: 0.12),
                        child: Row(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SvgPicture.asset('assets/icons/google.svg'),
                            ),
                            Text(
                              "Continue with Google",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColor.title,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: BuildElevatedButton(
                        horizontal: 40,
                        onPressed: () {},
                        color: Color(0XFFBDE2EC).withValues(alpha: 0.12),
                        child: Row(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SvgPicture.asset(
                                'assets/icons/apple.svg',
                                colorFilter: ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            Text(
                              "Continue with Apple",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                color: AppColor.title,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: "Inter",
                            color: AppColor.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
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
