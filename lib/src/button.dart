import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {



  @override
  _MyButtonSate createState() => _MyButtonSate();
}

class _MyButtonSate extends State<MyButton> {

String flutterText = "";
int index =0;
List<String> collections = ['Monterrosa','Carlos','Flutter'];

void onPressButton(){
  setState(() {
    flutterText = collections[index];
    index = index < 2 ? index +1 : 0;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
         backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(fontSize: 40.0) 
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              RaisedButton(
                child: Text("Update", style: TextStyle(color: Colors.white)),
                color: Colors.blueAccent,
                onPressed: onPressButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
