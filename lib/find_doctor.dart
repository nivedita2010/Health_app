import 'package:flutter/material.dart';
import 'package:health_app/containerwidget.dart';

import 'my_textfield.dart';

class FindDoctor extends StatelessWidget {
  TextEditingController serch = TextEditingController();
  FindDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Find Doctor",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff323232),
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 24,
            ),
            MyTextField(
                controller: serch,
                hintText: "Search",
                onChange: (text) {
                  //print("user name is -> $text");
                  //setState(() {});
                },
                obscureText: false),
            SizedBox(
              height: 24,
            ),
            Containerwidget(
                // SvgPicture: 'assets/dc_img1.svg',
                name: 'Dr. Sumitra',
                position: 'Cardiologist',
                location: 'Nishtha Clinic, Kolhapur, Maharashtra'),
          ],
        ),
      ),
    );
  }
}
