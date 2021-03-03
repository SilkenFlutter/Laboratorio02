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
  String imagen="Imagen/False.png";
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
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'
            ),
          ),
              Image(
              image: AssetImage(imagen),
                height: 200,
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
                child: Text(
                  'Falso',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
                color: Colors.red[400],
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              ),
              SizedBox(
                width: 50,
              ),
              FlatButton(
                onPressed: (){
                  setState(() {
                    imagen='Images/Verdadero.png';
                  });
                },
                child: Text(
                    'Verdadero',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                color: Colors.teal[900],
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              )
            ],
          )
        ],
      ),
    );
  }
}
