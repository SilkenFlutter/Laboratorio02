import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[400],
        appBar: AppBar(
          title: Text('Bryan Mauricio Palma Flores'),
          backgroundColor: Colors.teal[900],
        ),
        body: MyApp(),
      ),
    ),
  );
}
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  String imagen="falso.png";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Laboratorio 2',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
          ),
              Image(
              image: AssetImage(imagen),
                height: 2000,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: (){
                  setState(() {
                    imagen='Images/False.png';
                  });
                },
                child: Text('Falso'),
                color: Colors.teal[100],
              ),
              FlatButton(
                onPressed: (){
                  setState(() {
                    imagen='Images/Verdadero.png';
                  });
                },
                child: Text('Verdadero'),
                color: Colors.teal[100],
              )
            ],
          )
        ],
      ),
    );
  }
}
