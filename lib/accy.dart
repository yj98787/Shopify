import 'package:flutter/material.dart';
import 'consts.dart';
import 'Login_page.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/man.png'),
            ),
          ),
          Padding(padding:EdgeInsets.only(top: 30.0)),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: ListTile(
              leading: Icon(Icons.account_box, color: theme),
              title: Text('Ela',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: ListTile(
              leading:Icon(Icons.mail,color:theme),
              title: Text('Ela56@gmail.com',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: ListTile(
              leading: Icon(Icons.call, color: theme),
              title: Text('+91 62651 75321',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: ListTile(
              leading: Icon(Icons.location_on, color: theme),
              title: Text('RGPV, Bhopal',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          OutlinedButton(onPressed: () {
          },
            child: Text('Edit Profile',
          style: TextStyle(
            color: logoColor,
          ),
          ),),
          Padding(padding: EdgeInsets.only(top: 40.0),),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_page()));
          }, child: Text('Log Out'),
          )
        ],
      ),
    );
  }
}
