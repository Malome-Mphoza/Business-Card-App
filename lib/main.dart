import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

//this the starting point of our app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/mphoza.jpg'),
                ),

                Text(
                  'Mpho Mosoeu',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize:20.0,
                    color: Colors.grey,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: (){
                      launch("sms+2git7712345678");
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.sms,
                          color: Colors.black,
                        ),
                        title: Text(
                          '+2771 234 5678',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black,
                              fontFamily: 'Source Sans Pro'
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Card(
                  child: InkWell(
                    onTap: (){
                      launch("mailto:mphomosoeu@email.com");
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.mail,
                          color:Colors.black,
                        ),
                        title:Text('mphomosoeu@email.com',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black,
                              fontFamily: 'Source Sans Pro'
                          ),

                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          child:Icon(
            Icons.add_call,
            color: Colors.black,
          ),
          onPressed:(){
            launch("tel://+27712345678");
          }
        ),
      ),
    );
  }
}
