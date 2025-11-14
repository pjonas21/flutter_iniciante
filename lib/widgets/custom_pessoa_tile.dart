import 'package:flutter/material.dart';
import 'package:flutter_iniciante/models/pessoa.dart';
import 'package:flutter_iniciante/widgets/custom_tile.dart';

class CustomPessoaTile extends StatelessWidget {
  final Pessoa pessoa;
  const CustomPessoaTile({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      color: Colors.lightBlue,
      leading: Text("Id: ${pessoa.id}"),
      title: Text(pessoa.nome),
      subtitle: Text("Peso: ${pessoa.peso.toStringAsFixed(1)}kg"),
      trailing: Text("Altura: ${pessoa.altura}cm"),
    );
  }
}
