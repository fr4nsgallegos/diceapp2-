import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int x = 100;
  int y = 200;

  @override
  Widget build(BuildContext context) {
    y++;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                x.toString(),
                style: TextStyle(fontSize: 50),
              ),
              ElevatedButton(
                onPressed: () {
                  x = 300;
                  setState(() {});
                  print(x);
                },
                child: Text("Cambiar valor"),
              ),
              Container(
                height: 200,
                color: Colors.red,
                child: Column(
                  children: [
                    Text(
                      y.toString(),
                      style: TextStyle(fontSize: 50),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
