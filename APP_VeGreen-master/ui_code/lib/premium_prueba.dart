import 'dart:ui';

import 'package:best_flutter_ui_templates/dieta_VIP_user.dart';
import 'package:best_flutter_ui_templates/hotel_booking/model/hotel_list_data.dart';
import 'package:best_flutter_ui_templates/main.dart';
import 'package:flutter/material.dart';

import 'hotel_booking/hotel_app_theme.dart';

class PerfilScreen extends StatefulWidget {
  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen>
    with TickerProviderStateMixin {
  AnimationController animationController;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<HotelListData> hotelList = HotelListData.hotelList;

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Theme(
        data: HotelAppTheme.buildLightTheme(),
        child: Container(
          height: 900,
          child: Scaffold(
            body: Stack(
              children: <Widget>[
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        getAppBarUI(),
                        Container(
                            child: Container(
                          child: Text('            '),
                        )),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 4.0),
                          child: Container(
                              height: 2.0, width: 400.0, color: Colors.black45),
                        ),
                        Container(
                            margin: const EdgeInsets.all(0.3),
                            height: 30,
                            width: 450,
                            child: Text(
                              'Mis Datos\n',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0),
                          child: Container(
                            height: 2.00,
                            width: 400.0,
                            color: Colors.black45,
                          ),
                        ),
                        Container(
                          child: Text('        '),
                        ),
                        Container(
                          child: Text('         '),
                        ),
                        Container(
                          child: Container(
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Column(
                                        children: <Widget>[
                                          ListTile(
                                            leading: Icon(Icons.person),
                                            title: Text('Nombre'),
                                            subtitle: Text('Alejandro Marín'),
                                          ),
                                          Divider(
                                            height: 0,
                                          ),
                                          ListTile(
                                            leading: Icon(
                                                Icons.swap_vertical_circle),
                                            title: Text('Peso'),
                                            subtitle: Text('98.7'),
                                          ),
                                          Divider(
                                            height: 0,
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.arrow_upward),
                                            title: Text('Altura'),
                                            subtitle: Text('1.79'),
                                          ),
                                          Divider(
                                            height: 0,
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.group_add),
                                            title: Text('Sexo'),
                                            subtitle: Text(
                                                'Tanke Sovietico TR 911 Con Metralleta'),
                                          ),
                                          Divider(
                                            height: 0,
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.calendar_today),
                                            title: Text('Edad'),
                                            subtitle: Text('25'),
                                          ),
                                          Divider(
                                            height: 0,
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.smoke_free),
                                            title: Text('Habitos'),
                                            subtitle: Text('No papito no fumo'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(' '),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 4.0),
                                    child: Container(
                                        height: 2.0,
                                        width: 200.0,
                                        color: Colors.black45),
                                  ),
                                  Container(
                                    child: Text(' '),
                                  ),
                                  Container(
                                    child: Text(' '),
                                  ),
                                  Container(
                                    child: Text(' '),
                                  ),
                                  RaisedButton(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 100, vertical: 15),
                                    color: Colors.green[200],
                                    child: Text(
                                      'Ir a Mi Dieta',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VIPScreen()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(' '),
                        ),
                        Container(
                          child: Text(' '),
                        ),
                        Container(
                          child: Text(' '),
                        ),
                        Container(
                          child: Text(' '),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 4.0),
                          child: Container(
                              height: 2.0, width: 350.0, color: Colors.black45),
                        ),
                        Container(
                          child: Text('        '),
                        ),
                        Container(
                          child: Text(' '),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getAppBarUI() {
    return Container(
      decoration: BoxDecoration(
        color: HotelAppTheme.buildLightTheme().backgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 8.0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 8, right: 8),
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Perfil Usuario',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContestTabHeader extends SliverPersistentHeaderDelegate {
  ContestTabHeader(
    this.searchUI,
  );
  final Widget searchUI;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return searchUI;
  }

  @override
  double get maxExtent => 52.0;

  @override
  double get minExtent => 52.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
