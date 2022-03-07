import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RecibirDinero extends StatefulWidget {
  RecibirDinero({Key key}) : super(key: key);

  _RecibirDineroState createState() => _RecibirDineroState();
}

class _RecibirDineroState extends State<RecibirDinero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Recibir dinero"),),
       body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
                  child: Padding(
                  padding: EdgeInsets.all(28),
                  child: QrImage(//Imagen de QR
                            data: "Corima App",
                            size: 250,
                            onError: (ex) {
                              print("[QR] ERROR - $ex");
                            },
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
                                      Text("Regresar", style: TextStyle(color: Colors.white, fontSize: 22),),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Icon(
                                          Icons.arrow_back,
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