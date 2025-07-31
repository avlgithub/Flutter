import 'package:flutter/material.dart';
import 'package:hello_word/models/Pessoa.dart';
import 'package:hello_word/widgets/pessoaListtile.dart';
import 'package:hello_word/widgets/statelessWidget.dart';

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
          title: const Text("ChatiN")
        ),
        body: const MeuStatelessWidget(),
        /*
        body: 
            PessoaListTile(
                pessoa: Pessoa(
                            id: 1, 
                            nome: "Alberto Lima", 
                            altura: 184, 
                            peso: 103.50
                        ),

            ),
        */
      ),
    );
  }
}

