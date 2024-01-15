import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Resposta extends StatelessWidget {
  String texto;
  var funcaoResponder;

  Resposta(this.texto, this.funcaoResponder, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: funcaoResponder,
          child: Text(texto),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          )),
    );
  }
}
