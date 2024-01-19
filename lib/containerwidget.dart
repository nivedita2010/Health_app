import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Containerwidget extends StatelessWidget {
  //final SvgPicture;
  final String name;
  final String position;
  final String location;
  Containerwidget(
      {super.key,
      //required this.SvgPicture,
      required this.name,
      required this.position,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffD2D5DB)),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(top: 6),
            color: Colors.black,
            child: SvgPicture.asset('assets/dc_img3.svg'),
            //  child: SvgPicture.asset(SvgPicture),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Color(0xff1470FB),
                  ),
                  Text(position,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff323232),
                          fontWeight: FontWeight.w400)),
                ],
              ),
              Text(position,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff323232),
                      fontWeight: FontWeight.w400)),
              Text(position,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff323232),
                      fontWeight: FontWeight.w400)),
            ],
          )
        ],
      ),
    );
  }
}
