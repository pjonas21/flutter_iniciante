import 'package:flutter/material.dart';

class MeuStatefullWidget extends StatefulWidget {
  final void Function() callback;
  const MeuStatefullWidget({super.key, required this.callback});

  @override
  State<MeuStatefullWidget> createState() => _MeuStatefullWidgetState();
}

class _MeuStatefullWidgetState extends State<MeuStatefullWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.callback,
      child: const Text('Decrementar'),
    );
  }
}
