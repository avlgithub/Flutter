import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hello_word_listas/models/Pessoa.dart';

// Estou usando assim " as faker" porque dava conflito com o material.dart!
import 'package:faker/faker.dart' as faker;

class ListaPessoas extends StatefulWidget {
    const ListaPessoas({super.key});

    @override
    State<ListaPessoas> createState() => _ListaPessoasState();
}

class _ListaPessoasState extends State<ListaPessoas> {
    final TextEditingController _controller = TextEditingController();
    
    // Outro ajuste devido ao conflito dos importes! mudei o nome da var para _faker
    //final Faker faker = Faker();
    final faker.Faker _faker = faker.Faker();

    List<Pessoa> pessoas = [];

    Color gerarCorAleatoria() {
        final random = Random();
        return Color.fromARGB(
            255,
            random.nextInt(256),
            random.nextInt(256),
            random.nextInt(256),
        );
    }

    void gerarPessoas(int quantidade) {
        final novaLista = List.generate(
                                quantidade,
                                (index) => Pessoa(
                                    id: index,
                                    nome: _faker.person.name(),
                                    altura: double.parse((Random().nextDouble() * 0.5 + 1.5).toStringAsFixed(2)), // Limitei a altura entre 1.5 e 2.0
                                    peso: double.parse((Random().nextDouble() * 50 + 50).toStringAsFixed(1)), // Limitei o peso entre 50kg e 100kg
                            
                                ),
                            );

        setState(() {
            pessoas = novaLista;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Quantas pessoas deseja gerar?',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              final input = int.tryParse(_controller.text);
              if (input != null && input > 0) {
                gerarPessoas(input);
              }
            },
            child: const Text("Gerar Lista"),
          ),
          const SizedBox(height: 20),


          Expanded(
            child: ListView.builder(
              itemCount: pessoas.length,
              itemBuilder: (context, index) {
                final pessoa = pessoas[index];
                return Card(
                  child: ListTile(
                    title: Text("Id: ${pessoa.id} - Nome: ${pessoa.nome}"),
                    subtitle:
                        Text("Altura: ${pessoa.altura} m | Peso: ${pessoa.peso} kg"),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text("Detalhes da Pessoa"),
                         content: 
                            // Mostrando o conteúdo da seleção do usuário
                            RichText(
                                text: TextSpan(
                                    style: const TextStyle(color: Colors.black, fontSize: 16),
                                    children: [
                                    const TextSpan(text: 'Id: ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '${pessoa.id}\n'),
                                    const TextSpan(text: 'Nome: ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '${pessoa.nome}\n'),
                                    const TextSpan(text: 'Altura: ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '${pessoa.altura} m\n'),
                                    const TextSpan(text: 'Peso: ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '${pessoa.peso} kg'),
                                    ],
                                ),
                            ),
                            actions: [
                                // Adicionando o botão para fecgar a msg
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text("Fechar"),
                                ),
                            ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),


        ],
      ),
    );
  }


}