import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'app_color.dart';

class MethodCard extends StatelessWidget{
  VoidCallback onTap;
  String image;
  bool isApple;
  MethodCard({super.key, required this.onTap, required this.image, this.isApple = false});

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTap: onTap,
     child: Container(
       padding: EdgeInsets.all(8),
       margin: !isApple? EdgeInsets.only(right: 16) : null,
       decoration: BoxDecoration(
         shape: BoxShape.circle,
         color: AppColor.surface,
         border: Border.all(color: AppColor.border),
       ),
       child: SvgPicture.asset(height: 20,width: 20,image, colorFilter: isApple ? ColorFilter.mode(Colors.white, BlendMode.srcIn): null,),
     ),
   );
  }

}