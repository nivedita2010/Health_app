import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/button_widget.dart';
import 'package:health_app/pin_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
           padding: EdgeInsets.only(top: 63,left: 16),
          //alignment: Alignment.center,
           child: Text("Login",style: TextStyle(
             fontSize: 24,
             fontWeight: FontWeight.w600
           ),),
         ),
         SizedBox(height: 16,),
         Container(
           padding: EdgeInsets.only(left: 16),
           child: Text("Please login to your account",style: TextStyle(
             fontSize: 16,
             fontWeight: FontWeight.w400
           )),
         ),

         SizedBox(height: 30,),
         Container(
          // height: 55,
           margin: EdgeInsets.fromLTRB(16, 10, 16, 10),
           decoration: BoxDecoration(

               border: Border.all(width: 1, color:  Color(0xffD2D5DB),),

               borderRadius: BorderRadius.circular(10)),
           child: Row(
             children: [
               SizedBox(
                 width: 10,
               ),
               SizedBox(
                 width: 40,
                 child: TextField(
                   controller: countryController,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                   ),
                 ),
               ),
               Text(
                 "|",
                 style: TextStyle(fontSize: 33, color: Colors.grey),
               ),
               SizedBox(
                 width: 10,
               ),
               Expanded(
                   child: TextField(
                     keyboardType: TextInputType.phone,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: "Phone",
                     ),
                   ))


             ],
           ),

         ),
         SizedBox(height: 12,),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             TextButton(onPressed: (){},
                 child:Text("Login with Email",style: TextStyle(
                     fontSize: 14,
                     fontWeight: FontWeight.w500,
                     color: Color(0xff1470FB)
                 ),)),
           ],
         ),
         SizedBox(height: 30,),
         ButtonWidget(onTap: (){
           Navigator.push(context, MaterialPageRoute(builder:(context) => PinInput(), ));
         },
             buttonText: 'Login',
            buttonColor: Colors.blue,
           borderRadius: 10,

         ),
         SizedBox(height: 36,),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 25.0),
           child: Row(
             children: [
               Expanded(
                   child: Divider(
                     thickness: 1,
                   )),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 8.0),
                 child: Text(
                   "Or Sign in with",
                   style: TextStyle(color: Colors.grey),
                 ),
               ),
               Expanded(
                   child: Divider(
                     thickness: 1,
                   )),
             ],
           ),
         ),
         SizedBox(height: 27,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             CircleAvatar(
               radius: 20,
               child: SvgPicture.asset('assets/google.svg'),
             ),
             SizedBox(width: 24,),
             CircleAvatar(
               radius: 20,
               child: SvgPicture.asset('assets/facebook.svg'),
             ),
             SizedBox(width: 24,),
             CircleAvatar(
               radius: 20,
               child: SvgPicture.asset('assets/applelogo.svg'),
             ),
           ],
         ),
         SizedBox(
           height: 10,
         ),
Expanded(

  child: Container(
    padding: EdgeInsets.only(bottom: 34,left: 35),
      child:Column(
       mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do not have an account ?",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: (){},
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Text('By Clicking on login , i agree to '),
            GestureDetector(
              onTap: (){},
              child: const Text(
                "Teams & Conditions",
                style: TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),

        ],
      ),

      ),
)

        ],
      ),
    );
  }
}
