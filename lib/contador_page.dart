import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int contador1 = 0;
  int contador2 = 0;
  int contador3 = 0;
  int contador4 = 0;
  int contador5 = 0;

  Widget contadores(String title, int variable, VoidCallback onPressed) {
    return Column(
      children: [
        Text(title),
        Text(variable.toString()),
        ElevatedButton(onPressed: onPressed, child: Text("add"))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("RESET"),
          onPressed: () {
            contador1 = 0;
            contador2 = 0;
            contador3 = 0;
            contador4 = 0;
            contador5 = 0;
            setState(() {});
          },
          backgroundColor: Colors.red,
        ),
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ' ${contador1 + contador2 + contador3 + contador4 + contador5}',
              style: TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                contadores("Contador 1", contador1, () {
                  contador1++;
                  setState(() {});
                }),
                contadores("Contador 2", contador2, () {
                  contador2++;
                  setState(() {});
                }),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                contadores("Contador 3", contador3, () {
                  contador3++;
                  setState(() {});
                }),
                contadores("Contador 4", contador4, () {
                  contador4++;
                  setState(() {});
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
