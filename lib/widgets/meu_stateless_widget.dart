import 'package:flutter/material.dart';
import 'package:flutter_iniciante/widgets/meu_statefull_widget.dart';

class MeuStatelessWidget extends StatefulWidget {
  const MeuStatelessWidget({super.key});

  @override
  State<MeuStatelessWidget> createState() => _MeuStatelessWidgetState();
}

class _MeuStatelessWidgetState extends State<MeuStatelessWidget> {
  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return Column(
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
    );
  }
}
