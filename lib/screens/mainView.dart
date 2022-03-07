import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'DetallesTarjeta.dart';
import 'EnviarDinero.dart';
import 'RecibirDinero.dart';
import 'ayuda.dart';


class MainView extends StatefulWidget {
  MainView({Key key}) : super(key: key);

  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Corima"),),
       body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              height: 250,
              width: 250,
              alignment: Alignment.center,
              child: Center(
                child: FadeInImage.memoryNetwork(
                          fadeInCurve: Curves.bounceIn,
                            placeholder: kTransparentImage,
                           image: 'http://www.cambio16.gob.mx/IMG/arton148.jpg?1485152474',
                           ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 12, right: 8),
              child: Text("Nombre: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 18, right: 8, bottom: 8),
              child: Text("Jesus Gerardo Saucedo Gonzalez ", style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: RawMaterialButton(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                fillColor: Colors.brown,
                elevation: 2.0,
                highlightElevation: 1.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => DetallesTarjeta()));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Tarjeta", style: TextStyle(color: Colors.white, fontSize: 22),),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.credit_card,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.record_voice_over,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    )
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: RawMaterialButton(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                fillColor: Colors.brown,
                elevation: 2.0,
                highlightElevation: 1.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => EnviarDinero()));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Enviar dinero", style: TextStyle(color: Colors.white, fontSize: 22),),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          ),
                        ),
                         Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.record_voice_over,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    )
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: RawMaterialButton(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                fillColor: Colors.brown,
                elevation: 2.0,
                highlightElevation: 1.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => RecibirDinero()));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Recibir dinero", style: TextStyle(color: Colors.white, fontSize: 22),),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.record_voice_over,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    )
                  ),
                ),
            ),

          Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: RawMaterialButton(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                fillColor: Colors.brown,
                elevation: 2.0,
                highlightElevation: 1.0,
                  onPressed: () {
                    
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Obtener mi ahorro", style: TextStyle(color: Colors.white, fontSize: 22),),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.attach_money,
                            color: Colors.white,
                          ),
                        ),
                         Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.record_voice_over,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    )
                  ),
                ),
            ),   

            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: RawMaterialButton(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                fillColor: Colors.brown,
                elevation: 2.0,
                highlightElevation: 1.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => ayuda()));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Ayuda", style: TextStyle(color: Colors.white, fontSize: 22),),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.help,
                            color: Colors.white,
                          ),
                        ),
                         Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.record_voice_over,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    )
                  ),
                ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: RawMaterialButton(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                fillColor: Colors.brown,
                elevation: 2.0,
                highlightElevation: 1.0,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Salir", style: TextStyle(color: Colors.white, fontSize: 22),),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.exit_to_app,
                            color: Colors.white,
                          ),
                        ),
                         Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.record_voice_over,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    )
                  ),
                ),
            ),   
         
          ],
       ),
    );
  }
}