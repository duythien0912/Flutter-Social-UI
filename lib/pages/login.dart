import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String assetName = 'assets/back.svg';
    final Widget svgIcon = SvgPicture.asset(
      assetName,
      color: Colors.white,
      semanticsLabel: 'A white back arrow',
      height: 30,
    );

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      // ),
      body: Container(
        color: Color.fromRGBO(33, 33, 33, 1),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, 'home');
                        },
                        child: svgIcon),
                    Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: <Widget>[
                        Text(
                          "1",
                          style: TextStyle(
                            fontFamily: 'SS',
                            fontSize: 200,
                            color: Color.fromRGBO(117, 117, 117, 0.6),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontFamily: 'SS',
                                  fontSize: 34,
                                ),
                              ),
                              Container(
                                width: 180,
                                child: Text(
                                  "dark is not evil. login and go deep into the dark side.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(117, 117, 117, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      // color: Colors.transparent,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(199, 199, 199, 1)),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        controller: TextEditingController(text: "+84"),
                        style: new TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      width: 70,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: new TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.16),
                        offset: Offset(0.0, 3),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.only(
                      top: 12,
                      bottom: 12,
                    ),
                    textColor: Colors.black,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    onPressed: () {},
                    child: Text('Enter'.toUpperCase(),
                        style: TextStyle(
                          fontFamily: 'SS',
                          fontSize: 20,
                        )),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'still looks bright?',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(117, 117, 117, 1),
                        ),
                      ),
                      Text(
                        ' REGISTER',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.exit_to_app),
      //   onPressed: () {
      //     Navigator.pushReplacementNamed(context, 'home');
      //   },
      // ),
    );
  }
}
