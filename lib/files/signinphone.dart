import 'package:flutter/material.dart';
import 'package:uhubs/home/home_widget.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sawo/sawo.dart';

class SignInPhone extends StatefulWidget {
  @override
  _SignInPhoneState createState() => _SignInPhoneState();
}

class _SignInPhoneState extends State<SignInPhone> {
  Sawo sawo = new Sawo(
    apiKey: "b2149d9f-7378-435e-a31c-98c4551aa09e",
    secretKey: "613330e978546627b1375df2ZIadSrMafdPrd4O1sk2R6Vhd",
  );

  // user payload
  String user = "";

  void payloadCallback(context, payload) {
    if (payload == null || (payload is String && payload.length == 0)) {
      payload = "Login Failed :(";
    }
    setState(() {
      user = payload;
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 40.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/uhub.jpeg'),
                    radius: 80.0,
                  ),
                ),
                SizedBox(
                  height: height * 0.25,
                ),
                Center(
                  child: Text(
                    'SIGN IN WITH PHONE',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Center(
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    )),
                SizedBox(
                  height: height * 0.025,
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
                      sawo.signIn(
                        context: context,
                        identifierType: 'phone_number_sms',
                        callback: payloadCallback,
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