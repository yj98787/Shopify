import 'package:flutter/material.dart';
import 'consts.dart';
import 'package:flutter/cupertino.dart';
import 'Signup_page.dart';
import 'Home_page.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [g1, g2]),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: 120.0, bottom: 10.0, left: 25.0, right: 25.0),
          child: Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/Logo.png'),
                  height: 100.0,
                  width: 100.0,
                ),
                Padding(padding: EdgeInsets.only(bottom: 20.0)),
                Text(
                  'Welcome Back!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: kWhiteColor.withOpacity(0.7),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 2.0)),
                Text(
                  'Please, Log In.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 34.0,
                    color: kWhiteColor,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 35.0)),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                      filled: true,
                      hintText: 'Email',
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage('images/email.png'),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      fillColor: kWhiteColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(37),
                      )),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                      filled: true,
                      hintText: 'Password',
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage('images/padlock.png'),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      fillColor: kWhiteColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(37),
                      )),
                ),
                Padding(padding: EdgeInsets.only(top: 5.0)),
                CupertinoButton(
                  child: Container(
                    alignment: Alignment.center,
                    height: 60.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF185A9D),
                      borderRadius: BorderRadius.circular(37),
                    ),
                    child: Text('Continue',
                        style: TextStyle(
                          color: kWhiteColor,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Home_page()));
                  },
                ),
                SizedBox(
                  height: 35,
                  width: double.infinity,
                ),
                Text('-------------------  OR  -------------------',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
          SizedBox(
            height: 30,
            width: double.infinity,
          ),
                CupertinoButton(
                  child: Container(
                    alignment: Alignment.center,
                    height: 60.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow:[
                        BoxShadow(
                          blurRadius: 45,
                          spreadRadius: 0,
                          color: Color.fromRGBO(120,37,139,0.25),
                        ),
                      ],
                      color: Color.fromRGBO(225, 225,225, 0.28),
                      borderRadius: BorderRadius.circular(37),
                    ),
                    child: Text('Create an Account',
                        style: TextStyle(
                          color: kWhiteColor,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder:(context) => Signup_page()
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
