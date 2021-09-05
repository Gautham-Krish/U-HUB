import 'package:flutter/material.dart';
import 'package:uhubs/files/Loading.dart';
import 'package:uhubs/home/home_widget.dart';

class signingmail extends StatelessWidget {
  const signingmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 40.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/uhub.jpeg'),
                    radius: 100.0,
                  ),
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                Center(
                  child: Text(
                    'SIGN IN WITH GMAIL',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Center(
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'GMAIL',

                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                      // filled: true,
                      // fillColor:
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.black38, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Center(
                  child: FlatButton(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Poppins'),
                    ),
                    color: Colors.black54,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
