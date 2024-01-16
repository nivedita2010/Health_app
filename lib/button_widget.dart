import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
   ButtonWidget({
     required this.onTap ,
     this.borderRadius,
     this.buttonColor,
     this.textColor,
     required this.buttonText,
     Key? key,
     }): super(key:key);
   VoidCallback onTap;
  Color? buttonColor;
   double? borderRadius;
  Color? textColor;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      //margin:EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.fromLTRB(16, 10, 16, 10),
      //width: ,
      decoration: BoxDecoration(
        color: buttonColor??Colors.white,
        borderRadius: BorderRadius.circular(borderRadius??0),),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
              child:  Center(
                child: Text(buttonText,
                  style:TextStyle(
                  color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),
                ),
              ),
            ),
          ),
        ),

    );
  }
}
