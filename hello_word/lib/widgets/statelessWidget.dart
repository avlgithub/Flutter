import 'package:flutter/material.dart';
import 'package:hello_word/widgets/statefulWidget.dart';

class MeuStatelessWidget extends StatefulWidget {
  const MeuStatelessWidget({super.key});

  @override
  State<MeuStatelessWidget> createState() => _MeuStatelessWidgetState(); 
}

class _MeuStatelessWidgetState extends State<MeuStatelessWidget> { 
    int contator = 0;

    // Função para zerar o contador
    void _zerarContador() {
        setState(() {
            contator = 0;
        });
    }

    // Nova função para mostrar a mensagem pop-up
    void _mostrarPopupMensagem(BuildContext context) {
        showDialog(
        context: context,
        builder: (BuildContext context) {
            return 
                AlertDialog(
                    title: const Text("Hello word!"),
                    content: const Text("Esse é meu primeiro app com Flutter"),
                    actions: <Widget>[
                                TextButton(
                                onPressed: () {
                                    Navigator.of(context).pop(); // Fecha o pop-up
                                },
                                child: const Text("Ok"),
                                ),
                            ],
                );
            },
        );
    }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contador: $contator",
              style: const TextStyle(
                fontSize: 24,
                color: Colors.blue,
              ),
            ),
          ],
        ),

        // Espaçamento entre os componemtes
        const SizedBox(height: 20),        

        ElevatedButton(
          onPressed: () {
            // Atualiza o status dos componentes da tela
            setState(() {
                contator++; // Incremente o contator a cada click no btn
            });
          },

          child: const Text(
            "Somar + 1",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),

        BotaoSomar2( 
          callbak: () {
            setState(() {
                contator += 2;
            });
          },
        ),

        // Espaçamento antes do novo botão
        const SizedBox(height: 20),

        // Btn  para zerar o contador
        BtnZerarContador( 
            callbak: _zerarContador, // Passa a função de zerar para o botão
        ),

        const SizedBox(height: 20),

        // Novo botão para mostrar o pop-up
        ElevatedButton(
          onPressed: () {
            _mostrarPopupMensagem(context); // Chama a função do pop-up
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondary, // Usando a cor secundária do tema
            foregroundColor: Theme.of(context).colorScheme.onSecondary,
          ),
          child: const Text(
            "Pop-up ",
               style: 
                    TextStyle(
                        fontSize: 24
                    ),
          ),
        )

      ],
    );
  }
}
