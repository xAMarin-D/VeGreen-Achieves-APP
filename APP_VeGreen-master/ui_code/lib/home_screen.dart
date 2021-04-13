import 'package:best_flutter_ui_templates/app_theme.dart';

import 'package:best_flutter_ui_templates/premium_prueba.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'model/homelist.dart';
import 'package:best_flutter_ui_templates/fitness_app/models/meals_list_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {Key key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController mainScreenAnimationController;
  final Animation<dynamic> mainScreenAnimation;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  List<HomeList> homeList = HomeList.homeList;
  AnimationController animationController;
  bool multiple = true;

  List<MealsListData> mealsListData = MealsListData.tabIconsList;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: FutureBuilder<bool>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          } else {
            return SingleChildScrollView(
              child: Container(
                  child: Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    appBar(),
                    Container(
                      child: Container(
                        height: 200.0,
                        child: Carousel(
                          boxFit: BoxFit.fill,
                          images: [
                            AssetImage('assets/carrusel/cr7.jpg'),
                            AssetImage('assets/carrusel/cr4.jpg'),
                            AssetImage('assets/carrusel/cr3.jpg'),
                            AssetImage('assets/carrusel/cr8.jpg'),
                          ],
                          autoplay: true,
                          indicatorBgPadding: 1.0,
                          dotColor: Colors.grey,
                          dotSize: 4.0,
                        ),
                      ),
                    ),
                    Container(child: Text('            ')),
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
                          'Dietas Predefinidas\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.0),
                      child: Container(
                          height: 2.0, width: 400.0, color: Colors.black45),
                    ),
                    Container(
                      child: Text('               '),
                    ),
                    Container(
                      width: 450,
                      child: DefaultTabController(
                        length: 2,
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
                                  text: "Dieta Uno",
                                ),
                                Tab(
                                  text: "Dieta Dos",
                                ),
                              ],
                            ),
                            Container(
                                height: 340,
                                width: double.infinity,
                                child: TabBarView(
                                  children: [
                                    Container(
                                        color: AppTheme.white,
                                        child: Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 0.0),
                                            child: Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    14.0,
                                                                vertical: 10.0),
                                                        child: Container(
                                                          width: 180,
                                                          height: 150,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .grey[300]
                                                                      .withOpacity(
                                                                          0.4),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                            .green[
                                                                        200],
                                                                    width: 6,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15),
                                                                  )),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    10.0,
                                                                vertical: 10.0),
                                                        child: Container(
                                                          width: 180,
                                                          height: 150,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .grey[300]
                                                                      .withOpacity(
                                                                          0.4),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                            .green[
                                                                        200],
                                                                    width: 6,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15),
                                                                  )),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    14.0,
                                                                vertical: 10.0),
                                                        child: Container(
                                                          width: 180,
                                                          height: 150,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .grey[300]
                                                                      .withOpacity(
                                                                          0.4),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                            .green[
                                                                        200],
                                                                    width: 6,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15),
                                                                  )),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    10.0,
                                                                vertical: 10.0),
                                                        child: Container(
                                                          width: 180,
                                                          height: 150,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .grey[300]
                                                                      .withOpacity(
                                                                          0.4),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                            .green[
                                                                        200],
                                                                    width: 6,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15),
                                                                  )),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ))),
                                    Container(
                                        color: AppTheme.white,
                                        child: Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 0.0),
                                            child: Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    14.0,
                                                                vertical: 10.0),
                                                        child: Container(
                                                          width: 180,
                                                          height: 150,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .grey[300]
                                                                      .withOpacity(
                                                                          0.4),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                            .green[
                                                                        200],
                                                                    width: 6,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15),
                                                                  )),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    10.0,
                                                                vertical: 10.0),
                                                        child: Container(
                                                          width: 180,
                                                          height: 150,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .grey[300]
                                                                      .withOpacity(
                                                                          0.4),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                            .green[
                                                                        200],
                                                                    width: 6,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15),
                                                                  )),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    14.0,
                                                                vertical: 10.0),
                                                        child: Container(
                                                          width: 180,
                                                          height: 150,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .grey[300]
                                                                      .withOpacity(
                                                                          0.4),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                            .green[
                                                                        200],
                                                                    width: 6,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15),
                                                                  )),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    10.0,
                                                                vertical: 10.0),
                                                        child: Container(
                                                          width: 180,
                                                          height: 150,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: Colors
                                                                      .grey[300]
                                                                      .withOpacity(
                                                                          0.4),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                            .green[
                                                                        200],
                                                                    width: 6,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            15),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            15),
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
                          ],
                        ),
                      ),
                    ),
                    Container(child: Text('            ')),
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
                          'Tips Recomendados\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.0),
                      child: Container(
                          height: 2.0, width: 400.0, color: Colors.black45),
                    ),
                    Container(
                      child: Text('               '),
                    ),
                    SingleChildScrollView(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14.0, vertical: 10.0),
                            child: Container(
                              width: 380,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300].withOpacity(0.4),
                                  border: Border.all(
                                    color: Colors.green[200],
                                    width: 4,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text('              '),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14.0, vertical: 10.0),
                          child: Container(
                            width: 380,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[300].withOpacity(0.4),
                                border: Border.all(
                                  color: Colors.grey[350],
                                  width: 4,
                                ),
                                borderRadius: BorderRadius.only()),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            );
          }
        },
      ),
    );
  }

  Widget appBar() {
    return SizedBox(
      height: AppBar().preferredSize.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Container(
              width: AppBar().preferredSize.height - 8,
              height: AppBar().preferredSize.height - 8,
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'VeGreen',
                  style: TextStyle(
                    fontSize: 22,
                    color: AppTheme.darkText,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, right: 8),
            child: Container(
              width: AppBar().preferredSize.height - 8,
              height: AppBar().preferredSize.height - 8,
              color: Colors.white,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius:
                      BorderRadius.circular(AppBar().preferredSize.height),
                  child: IconButton(
                    icon: Icon(Icons.account_circle),
                    color: AppTheme.dark_grey,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PerfilScreen()));
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
