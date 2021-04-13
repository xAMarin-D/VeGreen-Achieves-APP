import 'dart:ui';
import 'months.dart';
import 'package:best_flutter_ui_templates/hotel_booking/model/hotel_list_data.dart';
import 'package:flutter/material.dart';

import 'hotel_booking/hotel_app_theme.dart';

class VIPScreen extends StatefulWidget {
  @override
  _VIPScreenState createState() => _VIPScreenState();
}

class _VIPScreenState extends State<VIPScreen> with TickerProviderStateMixin {
  AnimationController animationController;
  String _mensaje;
  List<Months> months;
  Months selectedMonth;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<HotelListData> hotelList = HotelListData.hotelList;

  setSelectedMonth(Months months) {
    setState(() {
      selectedMonth = months;
    });
  }

  List<Widget> createRadioListMonths() {
    List<Widget> widgets = [];
    for (Months month in months) {
      widgets.add(RadioListTile(
        activeColor: Colors.green[200],
        value: month,
        groupValue: selectedMonth,
        title: Text(month.nombres),
        subtitle: Text(month.precio),
        onChanged: (currentMonth) {
          print("Current Month ${month.nombres}");
          setSelectedMonth(currentMonth);
        },
        selected: selectedMonth == month,
      ));
    }
    return widgets;
  }

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
    months = Months.getMes();
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
                              'Hazte VIP!\n',
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
                          child: Text('          '),
                        ),
                        Container(
                          child: Text('           '),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0),
                          child: Container(
                            height: 1.00,
                            width: 400.0,
                            color: Colors.black45,
                          ),
                        ),
                        Container(
                          child: Container(
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 60, vertical: 20),
                                    child: Text("Cantidad de Meses"),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Column(
                                        children: createRadioListMonths(),
                                      ),
                                    ],
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0),
                          child: Container(
                            height: 1.00,
                            width: 300.0,
                            color: Colors.black45,
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset('assets/hotel/web.png'),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          child: RaisedButton(
                            padding: EdgeInsets.symmetric(horizontal: 80),
                            color: Colors.green[300],
                            child: Text(
                              'Ir al medio de Pago',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            onPressed: () {
                              if (!_formKey.currentState.validate()) {
                                return;
                              }
                              _formKey.currentState.save();

                              print(_mensaje);
                            },
                          ),
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
                  'VIP',
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VIPScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
