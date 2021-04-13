import 'dart:ui';

import 'package:best_flutter_ui_templates/hotel_booking/model/hotel_list_data.dart';
import 'package:best_flutter_ui_templates/main.dart';
import 'package:best_flutter_ui_templates/mensajeria.dart';

import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'hotel_booking/hotel_app_theme.dart';

class VIPScreen extends StatefulWidget {
  @override
  _VIPScreenState createState() => _VIPScreenState();
}

class _VIPScreenState extends State<VIPScreen> with TickerProviderStateMixin {
  AnimationController animationController;

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
    return Theme(
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
                child: Column(
                  children: <Widget>[
                    getAppBarUI(),
                    Container(
                        child: Container(
                      child: Text('            '),
                    )),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                      child: Container(
                          height: 2.0, width: 400.0, color: Colors.black45),
                    ),
                    Container(
                        margin: const EdgeInsets.all(0.3),
                        height: 30,
                        width: 450,
                        child: Text(
                          '   Bienvenido:        ' + 'Nombre del Usuario',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        )),
                    Container(
                        margin: const EdgeInsets.all(0.3),
                        height: 30,
                        width: 450,
                        child: Text(
                          '   Tu Nutricionista: ' + 'Nombre Nutricionista',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        )),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                      child: Container(
                          height: 2.0, width: 400.0, color: Colors.black45),
                    ),
                    Container(
                      child: Text('        '),
                    ),
                    Container(
                      child: Container(
                        child: Form(
                          child: Container(
                              width: 450,
                              child: DefaultTabController(
                                length: 1,
                                child: Column(
                                  children: <Widget>[
                                    TabBar(
                                      unselectedLabelColor: Colors.black54,
                                      indicator: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.green[200],
                                      ),
                                      tabs: [
                                        Tab(
                                          text: "Dieta Personalizada",
                                        ),
                                      ],
                                    ),
                                    SingleChildScrollView(
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                                height: 380,
                                                width: double.infinity,
                                                child: TabBarView(
                                                  children: [
                                                    Container(
                                                        color: AppTheme.white,
                                                        child: Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom:
                                                                        0.0),
                                                            child: Container(
                                                              child: Column(
                                                                children: <
                                                                    Widget>[
                                                                  Row(
                                                                    children: <
                                                                        Widget>[
                                                                      Padding(
                                                                        padding: const EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                14.0,
                                                                            vertical:
                                                                                10.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              180,
                                                                          height:
                                                                              170,
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.grey[300].withOpacity(0.4),
                                                                              border: Border.all(
                                                                                color: Colors.green[200],
                                                                                width: 6,
                                                                              ),
                                                                              borderRadius: BorderRadius.only(
                                                                                topRight: Radius.circular(15),
                                                                                bottomLeft: Radius.circular(15),
                                                                              )),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                10.0,
                                                                            vertical:
                                                                                10.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              180,
                                                                          height:
                                                                              170,
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.grey[300].withOpacity(0.4),
                                                                              border: Border.all(
                                                                                color: Colors.green[200],
                                                                                width: 6,
                                                                              ),
                                                                              borderRadius: BorderRadius.only(
                                                                                topRight: Radius.circular(15),
                                                                                bottomLeft: Radius.circular(15),
                                                                              )),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: <
                                                                        Widget>[
                                                                      Padding(
                                                                        padding: const EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                14.0,
                                                                            vertical:
                                                                                10.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              180,
                                                                          height:
                                                                              170,
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.grey[300].withOpacity(0.4),
                                                                              border: Border.all(
                                                                                color: Colors.green[200],
                                                                                width: 6,
                                                                              ),
                                                                              borderRadius: BorderRadius.only(
                                                                                topRight: Radius.circular(15),
                                                                                bottomLeft: Radius.circular(15),
                                                                              )),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                10.0,
                                                                            vertical:
                                                                                10.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              180,
                                                                          height:
                                                                              170,
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.grey[300].withOpacity(0.4),
                                                                              border: Border.all(
                                                                                color: Colors.green[200],
                                                                                width: 6,
                                                                              ),
                                                                              borderRadius: BorderRadius.only(
                                                                                topRight: Radius.circular(15),
                                                                                bottomLeft: Radius.circular(15),
                                                                              )),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ))),
                                                  ],
                                                )),
                                            Container(
                                                child: Text('            ')),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                  vertical: 4.0),
                                              child: Container(
                                                  height: 2.0,
                                                  width: 400.0,
                                                  color: Colors.black45),
                                            ),
                                            Container(
                                                margin:
                                                    const EdgeInsets.all(0.3),
                                                height: 30,
                                                width: 450,
                                                child: Text(
                                                  'Tips Recomendados\n',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 50.0),
                                              child: Container(
                                                  height: 2.0,
                                                  width: 400.0,
                                                  color: Colors.black45),
                                            ),
                                            Container(
                                              child: Text('               '),
                                            ),
                                            SingleChildScrollView(
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 14.0,
                                                        vertical: 15.0),
                                                    child: Container(
                                                      width: 380,
                                                      height: 130,
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .grey[300]
                                                              .withOpacity(0.4),
                                                          border: Border.all(
                                                            color: Colors
                                                                .green[200],
                                                            width: 4,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    20),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    20),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20),
                                                          )),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: IconButton(
                icon: Icon(Icons.message),
                color: AppTheme.dark_grey,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MensajeriaScreen()));
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: AppBar().preferredSize.height + 12,
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
                  'Dieta VIP',
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
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Icon(Icons.home),
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
