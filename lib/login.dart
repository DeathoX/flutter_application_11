import 'package:flutter/material.dart';
import 'package:flutter_application_11/menu.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage>{
String username = "123456";
String password = "aaaaaa";
String alert = "";

final GlobalKey<FormState>_formKey = GlobalKey<FormState>();
TextEditingController usernameInput = new TextEditingController();
TextEditingController passwordInput = new TextEditingController();


void prosesLogin(){
  if(_formKey.currentState.validate()){
    if(usernameInput.text == username && passwordInput.text == password){
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder:  (context) => MenuPage()    
      ));
    }
    
    else {
      setState(() {
        alert = "Username atau Password anda salah";
      });
    }
  }
}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Page"),
        backgroundColor: Color.fromARGB(255, 151, 19, 10),
      ),

      body: Padding(
        padding: EdgeInsets.all(50.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(alert,
                    style: TextStyle(color: Colors.red,),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      validator: (value){
                        if(value.isEmpty){
                          return "Username harus di isi";
                        }
                        return null;
                      },
                      controller: usernameInput,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20,),
                        child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        validator: (value){
                          if(value.isEmpty){
                          return "Password harus di isi";
                          }
                          else if(value.length < 6){
                          return "Password tidak boleh kurang dari 6 digit";
                          }
                          return null;
                        },
                        obscureText: true,
                        controller: passwordInput,
                        decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.white)
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:25,),
                        child: RaisedButton(
                          color: Color.fromARGB(255, 25, 183, 30),
                          onPressed: ()=> prosesLogin(),
                          child: Text("Login"),
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