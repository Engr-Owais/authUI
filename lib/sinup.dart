import 'dart:ui';
import 'package:authui/Widgets/labeltext.dart';
import 'package:ui_helper/ui_helper.dart';

import 'package:flutter/material.dart';

import 'Widgets/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sizebtn = 50.0;
    return Scaffold(
      bottomNavigationBar: _createBottomNavigationBar(),
      body: Container(
        height: screenHeight(context),
        width: screenWidth(context),
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0xFF3366FF).withOpacity(0.9),
                const Color(0xFF00CCFF).withOpacity(0.8),
              ],
              begin: const FractionalOffset(1.0, 2.0),
              end: const FractionalOffset(2.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpaceMedium,
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: sizebtn,
                        height: sizebtn,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: new Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpaceRegular,
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome To",
                    style: headlineStyle.copyWith(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              verticalSpaceTiny,
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Veritable Notary",
                    style: headlineStyle.copyWith(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Let's get started by setting up your account",
                    style: bodyStyle.copyWith(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Label(
                text: 'First Name *',
                label: 'John',
              ),
              Label(
                text: 'Last Name *',
                label: 'Doe',
              ),
              Label(
                text: 'Email *',
                label: 'Doe@abc.com',
              ),
              Label(
                text: 'Phone Number *',
                label: '9616161646',
              ),
              Label(
                text: 'Password *',
                label: '************',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createBottomNavigationBar() {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF00CCFF).withOpacity(0.6),
            const Color(0xFF3366FF).withOpacity(0.8),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
          stops: [0.0, 0.8],
          tileMode: TileMode.clamp,
        ),
      ),
      child: BottomAppBar(
        color: Color(0xFF3366FF).withOpacity(0.6),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
              child: Text(
                "SUBMIT",
                style: bodyStyle.copyWith(
                    fontSize: 25,
                    letterSpacing: 3.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orange[600]),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )))),
        ),
        elevation: 3.0,
      ),
    );
  }
}
