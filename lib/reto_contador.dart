import 'package:flutter/material.dart';

class MyRetocontador extends StatefulWidget {
  @override
  State<MyRetocontador> createState() => _MyRetocontadorState();
}

class _MyRetocontadorState extends State<MyRetocontador> {
  //const MyRetocontador({super.key});

  int v1 = 0;
  int v2 = 0;
  int v3 = 0;
  int v4 = 0;
  int v5 = 0;

  int acum = 0;

  // void sumar1(int valor) {
  //   valor += 1;
  //   //   //x = valor;
  //   //   print("**********");
  //   //   print(valor);
  // }

  int sumar(int valor) {
    return valor += 1;
  }

  void acumular() {
    acum = v1 + v2 + v3 + v4 + v5;
  }

  void limpiar() {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    acum = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        backgroundColor: Colors.deepOrange,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            limpiar();
            setState(() {});
          },
          child: Text("RESET"),
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                acum.toString(),
                style: TextStyle(
                  fontSize: 80,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Contador 1"),
                    Text(
                      "A=${v1.toString()}",
                      //x.toString(),
                      style: TextStyle(fontSize: 50.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        v1 = sumar(v1);
                        acumular();
                        setState(() {});
                      },
                      child: Text("Add"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Contador 2"),
                    Text(
                      "B=${v2.toString()}",
                      style: TextStyle(fontSize: 50.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        v2 = sumar(v2);
                        acumular();
                        setState(() {});
                      },
                      child: Text("add"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Contador 3"),
                    Text(
                      "C=${v3.toString()}",
                      //x.toString(),
                      style: TextStyle(fontSize: 50.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        v3 = sumar(v3);
                        acumular();
                        setState(() {});
                      },
                      child: Text("Add"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Contador 4"),
                    Text(
                      "D=${v4.toString()}",
                      style: TextStyle(fontSize: 50.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        v4 = sumar(v4);
                        acumular();
                        setState(() {});
                      },
                      child: Text("add"),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Contador 5"),
                Text(
                  "E=${v5.toString()}",
                  style: TextStyle(fontSize: 50.0),
                ),
                ElevatedButton(
                  onPressed: () {
                    v5 = sumar(v5);
                    acumular();
                    setState(() {});
                  },
                  child: Text("add"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
