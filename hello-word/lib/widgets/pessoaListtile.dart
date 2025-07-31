import 'package:flutter/material.dart';
import 'package:hello_word/models/Pessoa.dart';

class PessoaListTile extends StatelessWidget {
  final Pessoa pessoa;

  const PessoaListTile(
            {
                super.key, 
                required this.pessoa
            }
        );

  @override
  Widget build(BuildContext context) {
    return  
        Card(
            color: Colors.lightBlueAccent,
            margin: const EdgeInsets.symmetric(vertical: 8.0), // Margem entre os cards
            elevation: 2.0, // Sombra do card
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // Bordas arredondadas do card
            ),

            child: 
                ListTile(
                    leading: Text("Id: ${pessoa.id}"),
                    title: Text("Nome: ${pessoa.nome}"),
                    subtitle: Text("Peso: ${pessoa.peso}"),
                    trailing: Text("Altura: ${pessoa.altura}"),
                )
        );
  }
}