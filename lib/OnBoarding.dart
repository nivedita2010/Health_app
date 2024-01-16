
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/login.dart';
import 'package:health_app/login_emai.dart';

import 'button_widget.dart';


class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'poppins',
      ),
      home: onboarding(),
    );
  }
}
class onboarding extends StatefulWidget {
  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          PageView(
            controller: _pageController,
            children: [
              OnBoardPage('assets/1.svg', 'Now get health care on your fingertips', 'Lorem ipsum dolor sit amet consectetur. Diam risus adipiscing luctus montes senectus vitae.'
                  ' Amet et tristique sagittis viverra cursus volutpat.'),
              OnBoardPage('assets/2.svg', 'Book Appointments in easy steps',
                  'Lorem ipsum dolor sit amet consectetur. Diam risus adipiscing luctus montes senectus vitae. Amet et tristique sagittis viverra cursus volutpat.'),
              OnBoardPage('assets/3.svg', 'Upload prescription and order medicine online',
                  'Lorem ipsum dolor sit amet consectetur. Diam risus adipiscing luctus montes senectus vitae. Amet et tristique sagittis viverra cursus volutpat'),
            ],
            onPageChanged: (value)=>{setCurrentPage(value)},
            ),

          Container(
           margin: EdgeInsets.only(bottom: 80),
            child: Align(
             alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => getIndicator(index)),
              ),
            ),
          ),

      Positioned(
        bottom: 17.0,
        left: 100,

        child: Align(
          alignment:Alignment.bottomCenter ,
          child: ButtonWidget(
              onTap: openLoginPage,
          buttonText: (currentPage==3)?'Skip':'get started',
            buttonColor: Color(0xff1470FB),
            borderRadius: 100,
            textColor: Colors.white,

          ),
        ),
      )
          ],




      )
    );
  }
  AnimatedContainer getIndicator(int pageNo){
    return AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: 10,
        width: (currentPage == pageNo) ? 30 :null,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: (currentPage == pageNo) ? Colors.blue : Colors.grey
      ),
    );
  }
  Widget OnBoardPage(String img,String title,String subtitle){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20,),
        Container(
          child:
          SvgPicture.asset('$img'),
        ),
        SizedBox(height: 38),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(title,textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 24,
            color: Color(0xff323232),
            fontWeight: FontWeight.w600,
          ),),
        ),
        SizedBox(height: 16,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(subtitle,textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff767B81),
              fontWeight: FontWeight.w400,
            ),),
        ),
      ],
    );
  }
  setCurrentPage(int value){
    currentPage = value;
    setState(() {

    });
  }
  openLoginPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginEmail(),));
  }
}

