import 'dart:math';
import 'package:faker/faker.dart';
import 'package:hello_word_listas/models/Pessoa.dart';

List<Pessoa> gerarPessoas(int quantidade){
    final faker = Faker();
    final random = Random();

    return List.generate(
                    quantidade, 
                    (index) => Pessoa(
                        id: index, 
                        nome: faker.person.name(), 
                        altura: double.parse( (random.nextDouble() * 0.5 + 1.5 ).toStringAsFixed(2)), 
                        peso: double.parse( (random.nextDouble() * 50 + 50 ).toStringAsFixed(1))
                    )
                );
}