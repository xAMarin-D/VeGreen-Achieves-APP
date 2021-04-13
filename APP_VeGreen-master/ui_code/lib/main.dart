import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'FormCard.dart';
import 'SocialIcons.dart';
import 'CustomIcons.dart';
import 'navigation_home_screen.dart';
import 'register_screen.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
      home: MyApp(),
      routes: {
        'Login': (BuildContext context) => MyApp(),
        //'Registro': (BuildContext context) =>,
      },
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSelected = false;

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  String idUser = "";
  TextEditingController controlUsuario = new TextEditingController();
  TextEditingController controlContrasena = new TextEditingController();

  Future<List> login() async {
    var url = "http://100.25.164.188/VeGreen2-master/loginMovil.php";
    final response = await http.post(url, body: {
      "usuario": controlUsuario.text.trim(),
      "contrasena": controlContrasena.text.trim()
    });

    if (response.body.trim().length > 0) {
      idUser = response.body.trim();

      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => NavigationHomeScreen(),
      ));
    } else {
      Toast.show("LOGIN INCORRECTO", context,
          duration: Toast.LENGTH_LONG,
          gravity: Toast.CENTER,
          backgroundColor: Colors.green,
          textColor: Colors.white);
    }
  }

  Widget radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2.0, color: Colors.black)),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              )
            : Container(),
      );

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(50),
          height: 0.5,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1004, allowFontScaling: true);

    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Image.asset("assets/image_01.png"),
              ),
              Expanded(
                child: Container(),
              ),
              Expanded(child: Image.asset("assets/image_02.png"))
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 28.0, right: 28.0, top: 10.0, bottom: 50.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(180),
                  ),
                  FormCard.simple(
                    controlContrasena: this.controlContrasena,
                    controlUsuario: this.controlUsuario,
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 12.0,
                          ),
                          GestureDetector(
                            onTap: _radio,
                            child: radioButton(_isSelected),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text("Recordar datos",
                              style: TextStyle(
                                  fontSize: 12, fontFamily: "Poppins-Medium"))
                        ],
                      ),
                      InkWell(
                        child: Container(
                          width: ScreenUtil.getInstance().setWidth(330),
                          height: ScreenUtil.getInstance().setHeight(100),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.green[600],
                                Colors.green[200],
                              ]),
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.green[600].withOpacity(.3),
                                    offset: Offset(0.0, 8.0),
                                    blurRadius: 8.0)
                              ]),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                login();
                              },
                              child: Center(
                                child: Text("Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins-Bold",
                                        fontSize: 18,
                                        letterSpacing: 1.0)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      horizontalLine(),
                      Text("Visita Nuestra Web y Redes!",
                          style: TextStyle(
                              fontSize: 16.0, fontFamily: "Poppins-Medium")),
                      horizontalLine()
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          iconSize: 55,
                          icon: new Image.asset('assets/icon/feibun.png'),
                          onPressed: () async {
                            const url =
                                'https://www.facebook.com/VeGreen-APP-102830164856992';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'No se encontró la url $url';
                            }
                          }),
                      IconButton(
                          iconSize: 55,
                          icon: new Image.asset('assets/icon/LogoAPP.png'),
                          onPressed: () async {
                            const url =
                                'http://100.25.164.188/VeGreen2-master/index.html';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'No se encontró la url $url';
                            }
                          })
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Nuevo Usuario? ",
                        style: TextStyle(fontFamily: "Poppins-Medium"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ));
                        },
                        child: Text("Registrarse",
                            style: TextStyle(
                                color: Color(0xFF5d74e3),
                                fontFamily: "Poppins-Bold")),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
