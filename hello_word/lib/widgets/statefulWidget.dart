
import 'package:flutter/material.dart';

class BotaoSomar2 extends StatefulWidget {
  // É necessário a declaração de uma function para auziliar no retorno para outro btn
  final void Function() callbak;
  const BotaoSomar2({
    super.key,
    required this.callbak,
  });

  @override
  State<BotaoSomar2> createState() => _BotaoSomar2State();
}

class _BotaoSomar2State extends State<BotaoSomar2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // Ao clicar no btn,a ação do callback retornar o valor com o incremento
            widget.callbak();
          },
          child: const Text( 
            "Somar + 2",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ],
    );
  }
}

// Widget do btn "Zerar Contador"
class BtnZerarContador extends StatefulWidget {
  // Callback para zerar o contador
  final void Function() callbak;

  const BtnZerarContador({
    super.key,
    required this.callbak,
  });

  @override
  State<BtnZerarContador> createState() => _BtnZerarContadorState(); 
}

class _BtnZerarContadorState extends State<BtnZerarContador> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Chama o callback para zerar o contador
        widget.callbak();
      },
      child: const Text(
        "Zerar Contador",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
