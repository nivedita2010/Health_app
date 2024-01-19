import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset('assets/logo.svg'),
        title: Text(
          "TrueWell",
          style: TextStyle(
              fontSize: 24,
              color: Color(0xff323232),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
