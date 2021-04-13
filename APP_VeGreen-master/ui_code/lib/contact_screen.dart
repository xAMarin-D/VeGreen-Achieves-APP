import 'dart:ui';

import 'package:best_flutter_ui_templates/hotel_booking/model/hotel_list_data.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'hotel_booking/hotel_app_theme.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen>
    with TickerProviderStateMixin {
  AnimationController animationController;
  String _nombre;
  String _correo;
  String _asunto;
  String _descripcion;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<HotelListData> hotelList = HotelListData.hotelList;

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));

  Widget _buildNombreField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Nombre',
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Nombre es Obligatorio';
        }
      },
      onSaved: (String value) {
        _nombre = value;
      },
    );
  }

  Widget _buildCorreoField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Correo Electronico',
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Correo Electronico es Obligatorio';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return "Ingrese un Correo Valido";
        }
        return null;
      },
      onSaved: (String value) {
        _correo = value;
      },
    );
  }

  Widget _buildAsuntoField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Asunto del Contacto',
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Asunto es Obligatorio';
        }
      },
      onSaved: (String value) {
        _asunto = value;
      },
    );
  }

  Widget _buildDescripcionField() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(9.0),
        constraints: const BoxConstraints(minHeight: 150, maxHeight: 300),
        color: AppTheme.white,
        child: SingleChildScrollView(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
          child: TextField(
            maxLines: null,
            onChanged: (String txt) {},
            style: TextStyle(
              fontFamily: AppTheme.fontName,
              fontSize: 16,
              color: AppTheme.dark_grey,
            ),
            cursorColor: Colors.blue,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Ingrese su Mensaje de Contacto...'),
          ),
        ),
      ),
    );
  }

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
                            'Contacto con el Soporte\n',
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
                                _buildNombreField(),
                                Container(
                                  child: Text(''),
                                ),
                                _buildCorreoField(),
                                Container(
                                  child: Text(''),
                                ),
                                _buildAsuntoField(),
                                Container(
                                  child: Text(''),
                                ),
                                Container(
                                  child: Text(''),
                                ),
                                _buildDescripcionField(),
                                SizedBox(height: 20),
                                RaisedButton(
                                  color: Colors.white,
                                  child: Text(
                                    'Contactar',
                                    style: TextStyle(
                                        color: Colors.green[200], fontSize: 16),
                                  ),
                                  onPressed: () {
                                    if (!_formKey.currentState.validate()) {
                                      return;
                                    }
                                    _formKey.currentState.save();

                                    print(_nombre);
                                    print(_correo);
                                    print(_asunto);
                                    print(_descripcion);
                                  },
                                ),
                              ],
                            ),
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
                  'Contacto',
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
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.contacts),
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
