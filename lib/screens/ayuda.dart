import 'package:flutter/material.dart';

class ayuda extends StatefulWidget {
  ayuda({Key key}) : super(key: key);

  _ayudaState createState() => _ayudaState();
}

class _ayudaState extends State<ayuda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Corima"),),
       body: ListView(
          children: <Widget>[
           
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
                   
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Consular saldo", style: TextStyle(color: Colors.white, fontSize: 22),),
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
                   
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Cuanto dinero recibí", style: TextStyle(color: Colors.white, fontSize: 22),),
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
                   
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Cuanto tiene tu ahorro", style: TextStyle(color: Colors.white, fontSize: 22),),
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
                        Text("Cuando puedo sacar \n mi ahorro", textAlign: TextAlign.center ,style: TextStyle(color: Colors.white, fontSize: 22),),
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
                   
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Como veo mi codigo QR", style: TextStyle(color: Colors.white, fontSize: 22),),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.border_outer,
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