import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_test/home_screen.dart';
import 'package:ui_test/splash_screen.dart';
import 'package:flutter/services.dart';

class Testik extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => InitState();
}
class ShowHideDemo extends StatefulWidget {
  @override
  _ShowHideDemoState createState() {
    return _ShowHideDemoState();
  }
}

class _ShowHideDemoState extends State {
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.cyan,
            title: Text('Flutter Show/Hide Widget Demo'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Visibility(
                  visible: _isVisible,
                  child: Image.asset("assets/logo.png",
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                Text("FlutterDevs is a protruding flutter app development company with an extensive "
                    "in-house team of 30+ seasoned professionals who know exactly what you need "
                    "to strengthen your business across various dimensions. With more than 10+ years "
                    "of experience in mobile applications, we know your needs very well."
                  ,style: TextStyle(fontSize: 20)
                ),
                SizedBox(height: 35,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    minimumSize: Size.fromHeight(50),
                  ),
                    onPressed: showToast,
                    child: Text("Show/Hide")
                ),
              ],
            ),
          ),
    );
  }
}