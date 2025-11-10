import 'package:flutter/material.dart';
import 'package:flutter_iniciante/widgets/meu_statefull_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meu primeiro app')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Contador: ',
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
              Text(
                '$counter',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Text('Incrementar'),
          ),
          SizedBox(height: 20),
          MeuStatefullWidget(
            callback: () {
              setState(() {
                counter--;
              });
            },
          ),
        ],
      ),
    );
  }
}
