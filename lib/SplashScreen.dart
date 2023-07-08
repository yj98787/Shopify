import 'package:flutter/material.dart';
import 'Signup_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF02AAB0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Image(image: AssetImage('images/Logo.png'),
                height: 200.0,
                width: 200.0,
                alignment: Alignment.center,
              ),
              Padding(padding: EdgeInsets.only(top: 5.0)),
              Text('Shopify',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 36.0,
                ),
              )
            ],
          ),
        )
    );
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds:3),(){
      Navigator.of(context,rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context){
        return Signup_page();
      }));

    },);
  }
}

