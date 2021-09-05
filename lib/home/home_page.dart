import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var grade = 2;

    String stream = 'Stream';
    String text1 = 'Sorry';
    String text2 = 'An error occured';
    String url1 = 'https://www.marvel.com/404';
    String url2 = 'https://www.marvel.com/404';

    if (grade == 0) {
      stream = 'Class XI';
      text1 = 'Apni Kaksha';
      text2 = 'Physics Wallah';
      url1 = 'https://www.youtube.com/channel/UCF7BExjT2zH_mmyqOB139Dg';
      url2 = 'https://www.youtube.com/channel/UCiGyWN6DEbnj2alu7iapuKQ';
    } else if (grade == 1) {
      stream = 'Class XII';
      text1 = 'Apni Kaksha';
      text2 = 'Physics Wallah';
      url1 = 'https://www.youtube.com/channel/UCF7BExjT2zH_mmyqOB139Dg';
      url2 = 'https://www.youtube.com/channel/UCiGyWN6DEbnj2alu7iapuKQ';
    } else if (grade == 2) {
      stream = 'B.Tech - CSE';
      text1 = 'Geek For Geeks';
      text2 = 'JavaTPoint';
      url1 = 'https://www.geeksforgeeks.org/';
      url2 = 'https://www.javatpoint.com/';
    } else if (grade == 3) {
      stream = 'B.Tech - ECE';
      text1 = 'Engineering Made Easy';
      text2 = 'ECE Notes';
      url1 =
          'https://www.youtube.com/playlist?list=PLDp9Jik5WjRtkw7q3aaVvMtLJiiw62V-H';
      url2 =
          'https://engineeringinterviewquestions.com/electronics-communication-engineering-ece-class-lecture-notes-pdf-free-download/';
    }

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
                  SizedBox(height: height * 0.04),
                  Text('Hello User',
                      style: TextStyle(
                          color: Colors.black, fontSize: height * 0.08)),
                  SizedBox(height: height * 0.04),
                  Text('Showing contents for $stream'),
                  SizedBox(height: height * 0.06),
                  Center(
                    child: Card(
                      child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () => _launchURL(url1),
                          child: Container(
                              height: height * 0.12,
                              width: width,
                              decoration: BoxDecoration(
                                  color: HexColor('#daae00'),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        offset: Offset(0, 15),
                                        color:
                                            HexColor('#0e5f3f').withOpacity(.6),
                                        spreadRadius: -8)
                                  ]),
                              child: Center(
                                child: Text(text1,
                                    style: TextStyle(
                                        fontSize: height * 0.03,
                                        color: HexColor('#ffffff'))),
                              ))),
                    ),
                  ),
                  SizedBox(height: height * 0.04),
                  Center(
                    child: Card(
                      child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () => _launchURL(url2),
                          child: Container(
                              height: height * 0.12,
                              width: width,
                              decoration: BoxDecoration(
                                  color: HexColor('#daae00'),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        offset: Offset(0, 15),
                                        color:
                                            HexColor('#0e5f3f').withOpacity(.6),
                                        spreadRadius: -8)
                                  ]),
                              child: Center(
                                child: Text(text2,
                                    style: TextStyle(
                                        fontSize: height * 0.03,
                                        color: HexColor('#ffffff'))),
                              ))),
                    ),
                  )
                ],
              ),
            )));
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
