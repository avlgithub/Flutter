import 'package:flutter/material.dart';
import 'package:hello_word_listas/models/Pessoa.dart';
import 'package:hello_word_listas/widgets/pessoaListtile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
                useMaterial3: false,
                colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 2, 66, 89)),
      ),

        home: Scaffold(
                appBar: AppBar(
                title: const Text("Hello Word - Listas")
        ),

        body:  MockPessoaListScreen()

      ),
    );
  }
}


class MockPessoaListScreen extends StatelessWidget {
    MockPessoaListScreen({super.key});

    // Mock
    final List<Pessoa> pessoas = [
        Pessoa(id: 1, nome: "Alberto Lima", altura: 1.84, peso: 103.50),
        Pessoa(id: 2, nome: "Maria Clara", altura: 1.60, peso: 60.00),
        Pessoa(id: 3, nome: "João Pedro", altura: 1.75, peso: 72.30),
        Pessoa(id: 4, nome: "Ana Souza", altura: 1.68, peso: 58.40),
        Pessoa(id: 5, nome: "Carlos Henrique", altura: 1.80, peso: 85.00),
        Pessoa(id: 6, nome: "Fernanda Lima", altura: 1.65, peso: 62.10),
        Pessoa(id: 7, nome: "Paulo Sérgio", altura: 1.78, peso: 78.90),
        Pessoa(id: 8, nome: "Juliana Dias", altura: 1.70, peso: 64.50),
        Pessoa(id: 9, nome: "Ricardo Mendes", altura: 1.82, peso: 88.30),
        Pessoa(id: 10, nome: "Beatriz Santos", altura: 1.67, peso: 55.60),
        Pessoa(id: 11, nome: "Lucas Martins", altura: 1.76, peso: 74.00),
        Pessoa(id: 12, nome: "Patrícia Rocha", altura: 1.62, peso: 59.40),
        Pessoa(id: 13, nome: "Diego Ferreira", altura: 1.85, peso: 91.20),
        Pessoa(id: 14, nome: "Camila Alves", altura: 1.66, peso: 60.10),
        Pessoa(id: 15, nome: "Thiago Ramos", altura: 1.79, peso: 80.00),
        Pessoa(id: 16, nome: "Larissa Oliveira", altura: 1.64, peso: 56.90),
        Pessoa(id: 17, nome: "Vinícius Costa", altura: 1.83, peso: 86.70),
        Pessoa(id: 18, nome: "Renata Ribeiro", altura: 1.69, peso: 61.20),
        Pessoa(id: 19, nome: "Gabriel Monteiro", altura: 1.77, peso: 75.50),
        Pessoa(id: 20, nome: "Sabrina Nunes", altura: 1.71, peso: 63.00),
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text("Hello Word - Listas")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: pessoas.length,
        itemBuilder: (context, index) {
          return PessoaListTile(pessoa: pessoas[index]);
        },
      ),
    );
  }
}
