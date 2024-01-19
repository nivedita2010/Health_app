import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:health_app/button_widget.dart';
import 'package:health_app/my_textfield.dart';

class CreatAccount extends StatefulWidget {
  const CreatAccount({super.key});

  @override
  State<CreatAccount> createState() => _CreatAccountState();
}

class _CreatAccountState extends State<CreatAccount> {
  final usernameController = TextEditingController();
  final user_Bod = TextEditingController();
  final usergender = TextEditingController();
  final useremail = TextEditingController();
  final userno = TextEditingController();
  final useraddress1 = TextEditingController();
  final useraddress2 = TextEditingController();
  final usercity = TextEditingController();
  final userpin = TextEditingController();
  final userpassword = TextEditingController();
  final usercpassword = TextEditingController();
  final othername = TextEditingController();
  final otherno = TextEditingController();
  final otherrelation = TextEditingController();
  final List<String> gender = [
    'Male',
    'Female',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      // extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Create Account",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text("Please enter your details to continue",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Personal Information",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 16,
                  ),
                  MyTextField(
                    controller: usernameController,
                    hintText: "Enter Full NAme",
                    obscureText: false,
                    onChange: (text) {
                      print("user name is -> $text");
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: user_Bod,
                    hintText: "Enter Date of Birth",
                    obscureText: false,
                    onChange: (text) {
                      print("user name is -> $text");
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Text('Gender'),
                    items: gender
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  color: Color(0xff767B81),
                                  fontSize: 16,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      // padding: const EdgeInsets.only(left: 14, right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade500),
                      ),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                      ),
                      iconSize: 14,

                      //iconEnabledColor: Colors.yellow,
                      //iconDisabledColor: Colors.grey,
                    ),
                  )),
                  SizedBox(
                    height: 24,
                  ),
                  Text("Contact Details",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 16,
                  ),
                  MyTextField(
                    controller: useremail,
                    hintText: "Enter Email",
                    obscureText: false,
                    onChange: (text) {
                      print("user name is -> $text");
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: userno,
                    hintText: "Enter Mobile Number",
                    obscureText: false,
                    onChange: (text) {
                      print("user name is -> $text");
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: useraddress1,
                    hintText: "Address 1",
                    obscureText: false,
                    onChange: (text) {
                      print("user name is -> $text");
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: useraddress2,
                    hintText: "Address 2",
                    obscureText: false,
                    onChange: (text) {
                      print("user name is -> $text");
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: usercity,
                    hintText: "Enter City",
                    obscureText: false,
                    onChange: (text) {
                      print("user name is -> $text");
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: userpin,
                    hintText: "Enter Pincode",
                    obscureText: false,
                    onChange: (text) {
                      print("user name is -> $text");
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text("Password",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 16,
                  ),
                  MyTextField(
                    controller: userpassword,
                    onChange: (text) {
                      setState(() {});
                    },
                    hintText: "Enter Password",
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  MyTextField(
                    controller: usercpassword,
                    onChange: (text) {
                      setState(() {});
                    },
                    hintText: "Confirm Password",
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text("Emergency Contact",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 16,
                  ),
                  MyTextField(
                    controller: othername,
                    hintText: "Name",
                    obscureText: false,
                    onChange: (text) {
                      print("user name is -> $text");
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: usercity,
                    hintText: "Enter City",
                    obscureText: false,
                    onChange: (text) {
                      print("user name is -> $text");
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: otherrelation,
                    hintText: "Enter Relation",
                    obscureText: false,
                    onChange: (text) {
                      print("user name is -> $text");
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ButtonWidget(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder:(context) => PinInput(), ));
              },
              buttonText: 'Login',
              buttonColor: (usernameController.text.isNotEmpty &&
                      user_Bod.text.isNotEmpty &&
                      user_Bod.text.isNotEmpty &&
                      usergender.text.isNotEmpty &&
                      useremail.text.isNotEmpty &&
                      userno.text.isNotEmpty &&
                      useraddress1.text.isNotEmpty &&
                      useraddress2.text.isNotEmpty &&
                      usercity.text.isNotEmpty &&
                      userpin.text.isNotEmpty &&
                      userpassword.text.isNotEmpty &&
                      othername.text.isNotEmpty &&
                      otherno.text.isNotEmpty &&
                      otherrelation.text.isNotEmpty)
                  ? Colors.blue
                  : Colors.grey,
              borderRadius: 10,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
