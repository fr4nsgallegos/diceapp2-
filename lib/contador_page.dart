import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  List<int> contadores = [0, 0, 0, 0, 0];
  int totalContador = 0;

  void incrementar(int index) {
    setState(() {
      contadores[index]++;
      totalContador++;
    });
  }

  void reset(int index) {
    setState(() {
      contadores[index] = 0;
      totalContador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            for (var i = 0; i < 5; i++) {
              reset(i);
            }
          },
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  totalContador.toString(),
                  style: TextStyle(fontSize: 50, color: Colors.yellow),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Contador 1",
                        style: TextStyle(fontSize: 22, color: Colors.yellow)),
                    Text(contadores[0].toString(),
                        style: TextStyle(color: Colors.yellow)),
                    ElevatedButton(
                      onPressed: () {
                        incrementar(0);
                      },
                      child: Text("add"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Contador 2",
                        style: TextStyle(fontSize: 22, color: Colors.yellow)),
                    Text(contadores[1].toString(),
                        style: TextStyle(color: Colors.yellow)),
                    ElevatedButton(
                      onPressed: () {
                        incrementar(1);
                      },
                      child: Text(
                        "add",
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Contador 3",
                        style: TextStyle(fontSize: 22, color: Colors.yellow)),
                    Text(contadores[2].toString(),
                        style: TextStyle(color: Colors.yellow)),
                    ElevatedButton(
                      onPressed: () {
                        incrementar(2);
                      },
                      child: Text("add"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Text("Contador 4",
                        style: TextStyle(fontSize: 22, color: Colors.yellow)),
                    Text(contadores[3].toString(),
                        style: TextStyle(color: Colors.yellow)),
                    ElevatedButton(
                      onPressed: () {
                        incrementar(3);
                      },
                      child: Text("add"),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Contador 5",
                        style: TextStyle(fontSize: 22, color: Colors.yellow)),
                    Text(contadores[4].toString(),
                        style: TextStyle(color: Colors.yellow)),
                    ElevatedButton(
                      onPressed: () {
                        incrementar(4);
                      },
                      child: Text("add"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
