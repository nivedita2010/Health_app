import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_app/OnBoarding.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'poppins',
       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: const MyHomePage( ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
   Timer(Duration(seconds: 3),openOnBoard);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
     Stack(

     children: [
       Align(
         alignment: Alignment.center,
           child:Container(
             margin: EdgeInsets.only(bottom: 150),
               child: SvgPicture.asset("assets/hearbeat.svg"))
       ),
       Center(
         child: ClipRect(
           child: new BackdropFilter(
             filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
             child: new Container(

               decoration: new BoxDecoration(
                   color: Colors.grey.shade200.withOpacity(0.5)
               ),

             ),
           ),),),
       Align(
         alignment: Alignment.center,

         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SvgPicture.asset("assets/vector.svg") ,

             SvgPicture.asset("assets/truWell.svg"),
           ],
         ),
       )


    ],),);

  }
  void openOnBoard(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoarding(),));
  }
}
