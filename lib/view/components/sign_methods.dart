import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:registration/view/components/app_color.dart';
import 'package:url_launcher/url_launcher.dart';

import 'method_card.dart';

class SignMethods extends StatefulWidget {
  const SignMethods({super.key});

  @override
  State<SignMethods> createState() => _SignMethodsState();
}

bool? isChecked = false;
final Uri _privacy = Uri.parse('https://youtu.be/WLxWvkR_ecQ?si=FTPavHfM8Xxdw5Ib');
final Uri _service = Uri.parse('https://pub.dev/packages/url_launcher');

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
    throw Exception('Could not launch $url');
  }
}

class _SignMethodsState extends State<SignMethods> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: isChecked,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                activeColor: AppColor.primary,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "I agree to the ",
                      style: TextStyle(
                        color: AppColor.subtitle,
                        fontFamily: 'Inter',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      _launchUrl(_privacy);
                    },
                      text: "Privacy Policy ",
                      style: TextStyle(
                        color: AppColor.primary,
                        fontFamily: 'Inter',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "and ",
                      style: TextStyle(
                        color: AppColor.subtitle,
                        fontFamily: 'Inter',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          _launchUrl(_service);
                        },
                      text: "Terms of Service",
                      style: TextStyle(
                        color: AppColor.primary,
                        fontFamily: 'Inter',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Divider(
                color: AppColor.border,
                thickness: 1,
                height: 1,
                indent: 0.0,
                endIndent: 20.0,
              ),
            ),
            Text(
              "OR",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColor.subtitle,
              ),
            ),
            Expanded(
              child: Divider(
                color: AppColor.border,
                thickness: 1,
                height: 1,
                indent: 21.0, // Start padding
                endIndent: 40.0,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MethodCard(onTap: () {}, image: 'assets/icons/google.svg'),
              MethodCard(
                onTap: () {},
                image: 'assets/icons/apple.svg',
                isApple: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
