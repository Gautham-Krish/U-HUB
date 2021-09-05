// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'edit.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    String name = 'Vikram';
    String std = '10th';
    String img = 'assets/images/profile.png';
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(img),
                    radius: 100.0,
                  ),
                ),
                SizedBox(
                  height: height * 0.12,
                ),
                Center(
                  child: Text(
                    'NAME:$name',
                    style: TextStyle(
                        letterSpacing: 1.5,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Center(
                  child: Text(
                    'EDUCATION:$std',
                    style: TextStyle(
                        letterSpacing: 1.5,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Center(
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.add),
                    label: Text('EDIT YOUR DETAILS   '),
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => edit()));
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
