import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:registration/view/components/app_color.dart';

Widget signMethods ({required VoidCallback onPressed, required bool isChecked}){
  return Column(children: [
    Padding(
                      padding: const EdgeInsets.only(bottom: 48),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: onPressed,
                            icon:
                                isChecked
                                    ? SvgPicture.asset(
                                      'assets/icons/checked.svg',
                                      width: 12,
                                      height: 12,
                                    )
                                    : SvgPicture.asset(
                                      'assets/icons/unchecked.svg',
                                      height: 12,
                                      width: 12,
                                    ),
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
                            indent: 0.0, // Start padding
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
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.only(right: 16),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.surface,
                              border: Border.all(color: AppColor.border),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/google.svg',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.surface,
                              border: Border.all(color: AppColor.border),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/apple.svg',
                              colorFilter: ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
  ],);
}