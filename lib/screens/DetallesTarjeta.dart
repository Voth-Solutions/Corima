import 'package:flutter/material.dart';

class DetallesTarjeta extends StatefulWidget {
  DetallesTarjeta({Key key}) : super(key: key);

  _DetallesTarjetaState createState() => _DetallesTarjetaState();
}

class _DetallesTarjetaState extends State<DetallesTarjeta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("detalles de la tarjeta"),),
       body: ListView(
         
       ),
    );
  }
}