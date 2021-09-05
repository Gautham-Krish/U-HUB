import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:uhubs/files/signingmail.dart';
import 'package:uhubs/files/signinphone.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Loading extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = new PageController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Container(
          padding: new EdgeInsets.only(
            top: 16.0,
          ),
          decoration: new BoxDecoration(color: Colors.black),
          child: new Stack(alignment: FractionalOffset.bottomCenter, children: <
              Widget>[
            new PageView(
              children: <Widget>[
                Scaffold(
                  backgroundColor: HexColor('#ffffff'),
                  body: Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Form(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage('assets/images/define.png'),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              Center(
                                child: Text(
                                  'DEFINE YOUR LIMITS',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: HexColor('#ffffff'),
                  body: Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Form(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage('assets/images/goals.png'),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              Center(
                                child: Text(
                                  'SET YOUR GOALS',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Scaffold(
                    backgroundColor: HexColor('#ffffff'),
                    body: Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
                      child: Form(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Center(
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/uhub.jpeg'),
                                  radius: 100.0,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.15,
                              ),
                              Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0),
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Center(
                                  child: SignInButtonBuilder(
                                text: 'SIGN IN WITH EMAIL',
                                icon: Icons.email,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) => signingmail()));
                                },
                                backgroundColor: Colors.blueGrey[700]!,
                              )),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Center(
                                child: ElevatedButton.icon(
                                  icon: Icon(Icons.call),
                                  label: Text('  SIGN IN WITH PHONE     '),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                SignInPhone()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ],

              // You can have different Layouts/ Widgets in your app.

              controller: controller,
            ),
            new Container(
              margin: new EdgeInsets.only(
                top: 16.0,
                bottom: 16.0,
              ),
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thin,
                  // strokeWidth: 5,
                ),
              ),
            )
          ]),
        ));
  }
}
