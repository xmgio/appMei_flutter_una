import 'package:flutter/material.dart';
import 'package:app_micro/login/home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
  
     final logo =  Container(
        height: 320,

        child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 50.0,
        child: Image.asset('assets/logo1.png'),
      ),
    );

    final cpfnj = TextFormField(
      
      keyboardType: TextInputType.number,
      autofocus: false,
      
      decoration: InputDecoration(
        icon: Icon(Icons.account_box),
        hintText: 'CPF ou CNPJ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.lock),
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      
    );

    final telefone = TextFormField(
      autofocus: true,
      
     
      decoration: InputDecoration(
        icon: Icon(Icons.phone),
        hintText: 'Telefone',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(15),
        color: Colors.purple[300],
        child: Text('Cadastrar como MEI', style: TextStyle(color: Colors.white)),
      ),
    );
 final loginButton1 = Padding(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(15),
        color: Colors.purple[300],
        child: Text('Cadastrar como consultor', style: TextStyle(color: Colors.white)),
      ),
    );
  

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[ 
            logo,
            SizedBox(),
            telefone,
            SizedBox(height: 8.0),
            cpfnj,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            SizedBox(height: 24.0),
            loginButton1,
            
          ],
        ),
      ),
    );
  }
}