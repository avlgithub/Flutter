import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:hello_word_listas/models/Pessoa.dart';
import 'package:hello_word_listas/widgets/lista_pessoas.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    Color gerarCorRGBAleatoria() {
        final random = Random();

        return Color.fromARGB(
            255, // opacidade (255 = 100%)
            random.nextInt(256), // red
            random.nextInt(256), // green
            random.nextInt(256), // blue
        );
    }

    @override
    Widget build(BuildContext context) {
        final corPrimaria = gerarCorRGBAleatoria();

        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                        useMaterial3: false,
                        // Aqui deixei a cor aleatório para mudar ao abrir o app
                        colorScheme:  ColorScheme.fromSeed(seedColor: corPrimaria),
                        // colorScheme:  ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 2, 66, 89)),
            ),

            home:  
                Scaffold(
                    appBar: AppBar(
                            title: const Text("Hello Word - Listas")
                    ),

                    body:  ListaPessoas()

                ),
        );
    }
}