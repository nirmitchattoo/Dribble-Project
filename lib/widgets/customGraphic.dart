import 'package:finance_mobile_application_design/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomGraphicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      child: Stack(
        alignment: Alignment.center,
        children: [

          Container(
            width: 258.0,
            height: 258.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: PaletteColor.scaffoldBackgroundColor,
              border: Border.all(
                color: Colors.grey,
                //width: 1.0,
              ),
              
            ),
          ),

           Container(
            width: 205.0,
            height: 205.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: PaletteColor.scaffoldBackgroundColor,
              border: Border.all(
                color: PaletteColor.CircleColor,
                width: 15.0,
              ),
              
            ),
          ),

         
          Container(
            width: 148.0,
            height: 148.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: Colors.white,
                width: 25.0,
              ),
              
            ),
          ),
          // Violet Circle
          Container(
            width: 148.0,
            height: 148.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple,
              
            ),
          ),
          // Transparent Circle
          Container(
            width: 140.0,
            height: 140.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 28.0,
              ),
            ),
          ),
          // Inner Circle Avatar
          CircleAvatar(
            radius: 66.0,
            backgroundImage: AssetImage("assets/images/profile_picture.png"),
          ),

          Positioned(
            top: -0.4,
            child: CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
          ),

          Positioned(
            top: 95.0,
            right: 0.0,
            child: CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
          ),

           Positioned(
            top: 95.0,
            left: 0.0,
            child: CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
          ),

          Positioned(
            bottom: 25.0,
            left: 35.0,
            child: CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
          ),

          Positioned(
            bottom: 25.0,
            right: 35.0,
            child: CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
          ),


        ],
      ),
    );
  }
}
