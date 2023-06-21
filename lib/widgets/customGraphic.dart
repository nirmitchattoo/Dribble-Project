import 'package:finance_mobile_application_design/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomGraphicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 250.0,
      child: Stack(
        alignment: Alignment.center,
        children: [

          Container(
            width: 248.0,
            height: 248.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: PaletteColor.buttonColor,
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
              
            ),
          ),

           Container(
            width: 225.0,
            height: 225.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: Colors.blueAccent,
                width: 185.0,
              ),
              
            ),
          ),

         
          Container(
            width: 185.0,
            height: 185.0,
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
        ],
      ),
    );
  }
}
