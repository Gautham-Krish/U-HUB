import 'package:flutter/material.dart';

class edit extends StatefulWidget {
  const edit({Key? key}) : super(key: key);

  @override
  _editState createState() => _editState();
}

class _editState extends State<edit> {
  String dropdown = 'Class 11 - PCM';
  var items = [
    'Class 11 - PCM',
    'Class 12 - PCM',
    'BTech - CSE',
    'BTech - ECE'
  ];
  String select = 'Class 11 - PCM';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'EDIT YOUR PROFILE ',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.white70),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black54,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: height * 0.1,
                ),
                Center(
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'FULL NAME',

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
                  height: height * 0.05,
                ),
                Center(
                    child: Text(
                      'Select your Stream: ',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: DropdownButton(
                    value: dropdown,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdown = newValue!;
                        select = dropdown;
                      });
                    },
                  ),
                ),
                Center(
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text('SUBMIT'),
                      color: Colors.black54,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}