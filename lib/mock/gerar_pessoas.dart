import 'package:flutter_iniciante/models/pessoa.dart';
import 'package:faker/faker.dart';

List<Pessoa> gerarPessoas(int qtde) {
  final faker = Faker();

  return List.generate(
    qtde,
    (index) => Pessoa(
      id: index,
      nome: faker.person.name(),
      altura: faker.randomGenerator.integer(200, min: 120),
      peso: faker.randomGenerator.decimal(scale: 50, min: 50),
    ),
  );
}