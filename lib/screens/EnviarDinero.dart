import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class EnviarDinero extends StatefulWidget {
  EnviarDinero({Key key}) : super(key: key);

  _EnviarDineroState createState() => _EnviarDineroState();
}

class _EnviarDineroState extends State<EnviarDinero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Envio de dinero"),),
       body: ListView(
         children: <Widget>[
          Form(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                 Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                            padding: EdgeInsets.all(8.0),
                            child: new TextFormField(
                            decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                      borderSide: new BorderSide(color: Colors.teal),
                                    ),
                                    suffixIcon: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Icon(Icons.record_voice_over),
                                    )
                                  ),
                        ),
                          ),
                          new Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: new Text("Nombre"),
                          ),
                      ],
                    ) ,
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                            padding: EdgeInsets.all(8.0),
                            child: new TextFormField(

                            decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                      borderSide: new BorderSide(color: Colors.teal),
                                    ),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsetsDirectional.only(start: 12.0, top: 5),
                                      child: Text("\$", style: TextStyle(fontSize: 35),), // myIcon is a 48px-wide widget.
                                    ),
                                     suffixIcon: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Icon(Icons.record_voice_over),
                                    )
                                  ),
                        ),
                          ),
                          new Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: new Text("Cantidad a mandar"),
                          ),
                      ],
                    ) ,
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                            padding: EdgeInsets.all(8.0),
                            child: new TextFormField(
                            decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                      borderSide: new BorderSide(color: Colors.teal),
                                    ),
                                     suffixIcon: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Icon(Icons.record_voice_over),
                                    )
                                  ),
                           ),
                          ),
                          new Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: new Text("Nombre a quien se lo manda"),
                          ),
                      ],
                    ) ,
                    Container(
                          padding: EdgeInsets.all(8),
                          height: 200,
                          width: 200,
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
                                      Text("Enviar dinero", style: TextStyle(color: Colors.white, fontSize: 22),),
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
              ],
            ),
          )
         ],
       ),
    );
  }
}