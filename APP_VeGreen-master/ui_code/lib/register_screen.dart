import 'package:flutter/material.dart';

/// This screen will let the user to sign up into the system using name, username,
/// email and password.
/// It doesn't use BLoC pattern,
class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro"),
        backgroundColor: Colors.green[400],
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            child: Row(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 148, vertical: 20),
                    child: Image.asset('assets/icon/LogoAPP.png'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: RegisterForm(),
          ),
        ],
      ),
      backgroundColor: Colors.green[25],
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _edadController = TextEditingController();

  bool _passwordVisible = false;

  var _currencies = ['hombre', 'mujer', 'Otro'];
  var _currentItemSelected = 'hombre';
  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  String _validateName(String value) {
    if (value.isEmpty) {
      return "Nombre vacio";
    }
    return null;
  }

  String _validateEmail(String value) {
    if (value.isEmpty) {
      return "Email vacio";
    }
    return null;
  }

  String _validatePassword(String value) {
    if (value.isEmpty) {
      return "Contraseña vacio";
    }
    return null;
  }

  String _validateEdad(String value) {
    if (value.isEmpty) {
      return "Edad vacio";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    const spacing = 5.0;

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            validator: _validateName,
            decoration: InputDecoration(
              labelText: "Nombre",
              labelStyle: TextStyle(color: Colors.black87),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green[300])),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: spacing),
          TextFormField(
            controller: _usernameController,
            validator: _validateName,
            decoration: InputDecoration(
              labelText: "Usuario",
              labelStyle: TextStyle(color: Colors.black87),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green[300])),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: spacing),
          TextFormField(
            controller: _emailController,
            validator: _validateEmail,
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(color: Colors.black87),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green[300])),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: spacing),
          TextFormField(
            controller: _passwordController,
            validator: _validatePassword,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: _togglePasswordVisibility,
              ),
              labelText: "Ingrese Contraseña",
              labelStyle: TextStyle(color: Colors.black87),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green[300])),
              border: OutlineInputBorder(),
            ),
            obscureText: !_passwordVisible,
          ),
          SizedBox(height: spacing),
          TextFormField(
            controller: _confirmPasswordController,
            validator: _validatePassword,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: _togglePasswordVisibility,
              ),
              labelText: "Confirme la contraseña",
              labelStyle: TextStyle(color: Colors.black87),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green[300])),
              border: OutlineInputBorder(),
            ),
            obscureText: !_passwordVisible,
          ),
          SizedBox(height: spacing),
          TextFormField(
            controller: _edadController,
            validator: _validateEdad,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Edad",
              labelStyle: TextStyle(color: Colors.black87),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green[300])),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: spacing),
          Row(children: [
            Text(
              'Seleccione su sexo :',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
            SizedBox(width: spacing),
            SizedBox(width: spacing),
            SizedBox(width: spacing),
            DropdownButton<String>(
              items: _currencies.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Container(
                        width: 175.0, child: Text(dropDownStringItem)));
              }).toList(),
              onChanged: (String newValueSelected) {
                setState(() {
                  this._currentItemSelected = newValueSelected;
                });
              },
              value: _currentItemSelected,
            ),
          ]),
          SizedBox(height: spacing),
          Padding(
            padding: EdgeInsets.all(1),
            child: RaisedButton(
              color: Colors.green,
              child: Text("Registrar"),
              textColor: Colors.white,
              onPressed: () => _register(context),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(1),
            child: RaisedButton(
              color: Colors.green,
              child: Text("Login"),
              textColor: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            ),
          )
        ],
      ),
    );
  }

  void _register(BuildContext context) async {
    //final Register register = _register(
    //name: _nameController.text.trim(),
    // username: _usernameController.text.trim(),
    //email: _emailController.text.trim(),
    //password: _passwordController.text.trim(),

    //);
  }
}
