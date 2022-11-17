import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Alert Dialog Box",
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyhomePageState();
}

class MyhomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "Alert Dialog box",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Colors.blueAccent,
              elevation: 0,
              child: Text("Show Alert!!!",
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onPressed: () {
                ShowAlert(context);
              }),
        ),
      ),
    );
  }

  Future ShowAlert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
              title: Text("Exit ?", style: TextStyle(color: Colors.blueAccent)),
              content: Text("Do you Want To Exit ?..",
                  style: TextStyle(color: Colors.blueAccent)),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK", style: TextStyle(color: Colors.blueAccent)),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel",
                      style: TextStyle(color: Colors.blueAccent)),
                ),
              ],
            ));
  }
}
