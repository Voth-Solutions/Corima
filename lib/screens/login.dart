import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './mainView.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = new GlobalKey<FormState>();

  String _email;
  String _password;
  bool press = false;
  

  

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  

  

  Widget putBox() {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return new SizedBox(height: 120.0);
    } else {
      return new SizedBox(height: 10.0);
    }
  }





  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Olvide mi contraseña"),
          content: new Text("Contacte con el administrador del sistema"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
    Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays([]);
    var size = MediaQuery.of(context).size.width;
    var portsize = MediaQuery.of(context).size.height;
    final Orientation orient = MediaQuery.of(context).orientation;
    final bool isLandscape = orient == Orientation.landscape;
    final double pdingsize = isLandscape ? size / 6 : size / 6;
    var iportsize = size / 6;
    var ilandsize = size / 4;
    final iconize = isLandscape ? iportsize : ilandsize;
    final boxSize = portsize / 18;
    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: iconize / 2,
      child: new IconTheme(
        data: new IconThemeData(color: Colors.brown),
        child: new Icon(
          Icons.account_circle,
          size: iconize,
        ),
      ),
    );

     Alert _showAlert =  Alert(context: context,title: "Usuario o contraseña no validos", type: AlertType.info);
     Alert _showAlert2 =  Alert(context: context,title: "no hay conexion a internet", type: AlertType.info);

    void validateAndSubmit() async {
    setState(() {
     press = true; 
    });
    if (validateAndSave()) {
      try {
        FirebaseUser user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        print(_email);
        print(_password);

        Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => MainView()));
        
         } catch (e) {
           setState(() {
           press = false; 
          });
           print("error: "+e.toString());
           if( e.toString() == "PlatformException(ERROR_NETWORK_REQUEST_FAILED, A network error (such as timeout, interrupted connection or unreachable host) has occurred., null)")
           {_showAlert2.show();

           }else{
             
             _showAlert.show();
           }
           
         }
        }
        
      }

                  Widget buildButtonLogin(){
                  if(false)
                  {
                  return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                  Center(child: CircularProgressIndicator(strokeWidth: 6,),),
                  Center(child: Text(("Cargando...")),)
                ],) );
                  }
                else{

                  return Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    onPressed: () {
                        validateAndSubmit();          
                    },
                    padding: EdgeInsets.all(15),
                    color: Colors.brown,
                    child:
                        Text('Entrar', style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                );

                }
              }
    

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'a@corima.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        /*
        icon: new Icon(
            Icons.mail,
            color: Colors.grey,
          )
          */
      ),
      validator: (value) =>
          value.isEmpty ? "No puede ir vacio este campo " : null,
      onSaved: (value) => _email = value,
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'abc123',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        /*
        icon: new Icon(
            Icons.lock,
            color: Colors.grey,
          )
          */
      ),
      validator: (value) =>
          value.isEmpty ? "No puede ir vacio este campo " : null,
      onSaved: (value) => _password = value,
    );

    bool enable = false;

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        onPressed: () {
          if(enable==false){
            enable = true;
            validateAndSubmit();          
          }
        },
        padding: EdgeInsets.all(15),
        color: Colors.brown,
        child:
            Text('Entrar', style: TextStyle(color: Colors.brown, fontSize: 18)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'No recuerdo mi contraseña',
        style: TextStyle(color: Colors.brown),
      ),
      onPressed: () {
        _showDialog();
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: Form(
          key: _formKey,
          child: new ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.only(left: pdingsize, right: pdingsize),
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  putBox(),
                  logo,
                  SizedBox(height: boxSize),
                  email,
                  SizedBox(height: 25.0),
                  password,
                  SizedBox(height: 25.0),
                  buildButtonLogin(),
                  SizedBox(height: 10.0),
                  forgotLabel,
                  SizedBox(height: boxSize * 2),
                ],
              )
            ],
            //    ),
          ),
        ),
      ),
    );
  }
}
