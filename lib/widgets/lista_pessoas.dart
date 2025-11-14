import 'package:flutter/material.dart';
import 'package:flutter_iniciante/mock/gerar_pessoas.dart';
import 'package:flutter_iniciante/widgets/custom_pessoa_tile.dart';
import 'package:flutter_iniciante/widgets/pessoa_listtile.dart';

class ListaPessoas extends StatelessWidget {
  const ListaPessoas({super.key});

  @override
  Widget build(BuildContext context) {
    final pessoas = gerarPessoas(20);
    return ListView.builder(
      itemCount: pessoas.length,
      itemBuilder: (context, index) {
        return CustomPessoaTile(pessoa: pessoas[index]);
      },
    );
  }
}
