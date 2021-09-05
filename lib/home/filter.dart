import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'home_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: HexColor('#ffffff'),
      body: Padding(
        padding: EdgeInsets.all(height * 0.02),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: height * 0.03),
                Center(
                  child: Text('Free Resources for everyone..',
                      style: TextStyle(
                          fontSize: height * 0.04, fontFamily: 'Poppins')),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: height * 0.03),
                      Row(children: <Widget>[
                        Card(
                          child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () => _launchURL(
                                  'https://www.desmos.com/calculator'),
                              child: Container(
                                  height: height * 0.2,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: HexColor('#daae00'),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 15),
                                            color: HexColor('#0e5f3f')
                                                .withOpacity(.6),
                                            spreadRadius: -8)
                                      ]),
                                  child: Center(
                                    child: Text('Graph Calc.',
                                        style: TextStyle(
                                            fontSize: height * 0.025,
                                            color: HexColor('#ffffff'))),
                                  ))),
                        ),
                        SizedBox(width: width * 0.05),
                        Card(
                          child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () =>
                                  _launchURL('https://www.khanacademy.org/'),
                              child: Container(
                                  height: height * 0.2,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: HexColor('#daae00'),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 15),
                                            color: HexColor('#0e5f3f')
                                                .withOpacity(.6),
                                            spreadRadius: -8)
                                      ]),
                                  child: Center(
                                    child: Text('Khan Academy',
                                        style: TextStyle(
                                            fontSize: height * 0.025,
                                            color: HexColor('#ffffff'))),
                                  ))),
                        )
                      ]),
                      SizedBox(height: height * 0.02),
                      Row(children: <Widget>[
                        Card(
                          child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () =>
                                  _launchURL('https://www.wikipedia.org/'),
                              child: Container(
                                  height: height * 0.2,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: HexColor('#daae00'),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 15),
                                            color: HexColor('#0e5f3f')
                                                .withOpacity(.6),
                                            spreadRadius: -8)
                                      ]),
                                  child: Center(
                                    child: Text('Wikipedia',
                                        style: TextStyle(
                                            fontSize: height * 0.025,
                                            color: HexColor('#ffffff'))),
                                  ))),
                        ),
                        SizedBox(width: width * 0.05),
                        Card(
                          child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () => _launchURL(
                                  'https://www.desmos.com/scientific'),
                              child: Container(
                                  height: height * 0.2,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: HexColor('#daae00'),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 15),
                                            color: HexColor('#0e5f3f')
                                                .withOpacity(.6),
                                            spreadRadius: -8)
                                      ]),
                                  child: Center(
                                    child: Text('Scientific Calc.',
                                        style: TextStyle(
                                            fontSize: height * 0.025,
                                            color: HexColor('#ffffff'))),
                                  ))),
                        )
                      ]),
                      SizedBox(height: height * 0.02),
                      Row(children: <Widget>[
                        Card(
                          child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () =>
                                  _launchURL('https://www.geeksforgeeks.org/'),
                              child: Container(
                                  height: height * 0.2,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: HexColor('#daae00'),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 15),
                                            color: HexColor('#0e5f3f')
                                                .withOpacity(.6),
                                            spreadRadius: -8)
                                      ]),
                                  child: Center(
                                    child: Text('Geek For Geeks',
                                        style: TextStyle(
                                            fontSize: height * 0.025,
                                            color: HexColor('#ffffff'))),
                                  ))),
                        ),
                        SizedBox(width: width * 0.05),
                        Card(
                          child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () =>
                                  _launchURL('https://www.resumemaker.online/'),
                              child: Container(
                                  height: height * 0.2,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: HexColor('#daae00'),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 15),
                                            color: HexColor('#0e5f3f')
                                                .withOpacity(.6),
                                            spreadRadius: -8)
                                      ]),
                                  child: Center(
                                    child: Text('Resume Maker',
                                        style: TextStyle(
                                            fontSize: height * 0.025,
                                            color: HexColor('#ffffff'))),
                                  ))),
                        )
                      ]),
                      SizedBox(height: height * 0.02),
                      Row(children: <Widget>[
                        Card(
                          child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () =>
                                  _launchURL('https://www.mentalfloss.com/'),
                              child: Container(
                                  height: height * 0.2,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: HexColor('#daae00'),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 15),
                                            color: HexColor('#0e5f3f')
                                                .withOpacity(.6),
                                            spreadRadius: -8)
                                      ]),
                                  child: Center(
                                    child: Text('Time Pass',
                                        style: TextStyle(
                                            fontSize: height * 0.025,
                                            color: HexColor('#ffffff'))),
                                  ))),
                        ),
                        SizedBox(width: width * 0.05),
                        Card(
                          child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () =>
                                  _launchURL('https://www.ted.com/talks'),
                              child: Container(
                                  height: height * 0.2,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: HexColor('#daae00'),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 15),
                                            color: HexColor('#0e5f3f')
                                                .withOpacity(.6),
                                            spreadRadius: -8)
                                      ]),
                                  child: Center(
                                    child: Text('Ted Talks',
                                        style: TextStyle(
                                            fontSize: height * 0.025,
                                            color: HexColor('#ffffff'))),
                                  ))),
                        )
                      ]),
                    ])
              ]),
        ),
      ),
    );
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
