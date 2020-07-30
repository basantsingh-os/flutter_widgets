import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: new HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Utils App"),
        backgroundColor: Colors.black26,
      ),
      body: new MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  AlertDialog dialog = new AlertDialog(
    content:new Text(
      "Dialog is up"
      ,style:new TextStyle(
        fontSize: 30
        ),
        
        ),
        title:new Text(
          "Lol",
          style:new TextStyle(
            fontSize:40
          )
        )
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: new RaisedButton(
          child:
              new Text("click Me", style: new TextStyle(color: Colors.white)),
          color: Colors.black26,

          ///code for snackbar ////////////////
          // onPressed:()=>Scaffold.of(context).showSnackBar(
          //   new SnackBar(
          //     content:new Text("I am pressed"),
          //     duration:new Duration(seconds:2)
          //   )
          // )
          ///////////////////////////////////// .

          onPressed: () => showDialog(context: context, child: dialog)),
    ));
  }
}
