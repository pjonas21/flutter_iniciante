import 'package:flutter/material.dart';
import 'package:flutter_iniciante/widgets/lista_pessoas.dart';

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
      body: ListaPessoas(),
    );
  }
}
