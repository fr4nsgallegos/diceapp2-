import 'package:diceapp2/contador_page.dart';
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

  //FUNCIÓN QUE AUMENTE EN 100 A CIERTA VARIABLE
  int inc100(int variable) {
    return (variable + 100);
  }

  void sumar100() {
    x += 100;
    print(x);
  }

  @override
  Widget build(BuildContext context) {
    y++;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("hola");
          },
          backgroundColor: Colors.red,
        ),
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
                  //MÉTODO 2
                  sumar100();
                  setState(() {});

                  //MÉTODO 1
                  // x = inc100(x);
                  // print(x);
                  // setState(() {});
                },
                child: Text("Cambiar valor"),
              ),
              Container(
                child: Image.asset("assets/images/imagen1.jpeg"),
              ),
              Container(
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2018/01/14/23/05/ecommerce-3082813_1280.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
