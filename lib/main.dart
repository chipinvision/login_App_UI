import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login App'),
      ),
      body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
             padding: EdgeInsets.only(top:9.0, bottom:9.0, right:5.0, left:5.0,),
              child: Center(
                 child: Text(
                   'LOGIN WITH YOUR ACCOUNT',
                   style: TextStyle(
                     fontSize: 18.0,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
              ),
            ),
            Padding(
             padding: EdgeInsets.only(top:5.0, bottom:5.0, right:5.0, left:5.0,),
              child: TextField(
                 decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                 ), 
              ),
            ),
             Padding(
             padding: EdgeInsets.only(top:5.0, bottom:5.0, right:5.0, left:5.0,),
              child: TextField(
                 obscureText: true,
                 decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                 ), 
              ),
            ),
            Padding(
            padding: EdgeInsets.only(top:5.0, bottom:5.0, right:5.0, left:5.0,),
              child: MaterialButton(
                 height: 50.0,
                 minWidth: 150.0,
                 color: Colors.teal,
                 shape: StadiumBorder(),
                 onPressed: (){},
                 child: Text(
                   'LOGIN',
                   style: TextStyle(
                     color: Colors.white,
                   ),
                 ),
              ),
            ),
            Container(
             alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: (){},
                padding: EdgeInsets.only(right: 15.0, top:15.0,),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            Container(
             alignment: Alignment.center,
              child: FlatButton(
                onPressed: (){},
                padding: EdgeInsets.only(right: 15.0, top:15.0,),
                child: Text(
                  'New User,Sign In',
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ],
        ),   
    );
  }
}