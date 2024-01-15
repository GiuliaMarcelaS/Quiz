import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder (){
    setState(() {
    _perguntaSelecionada++;   
    });
  }

  @override
  Widget build(BuildContext context){
    List perguntas = [
      'Qual é o seu estilo de música favorito?',
      'Qual é o seu gênero de filme favorito?',
      'Qual é a sua cor favorita?',
      'Qual dessas é sua cidade favorita?',
      'Qual desses é seu cantor favorito?'
    ];
    return MaterialApp( 
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Qual música da Camila Cabello você é?'),
        ),
        body: Column(
          children:  [
            Questao(perguntas[_perguntaSelecionada]),
             Resposta('Resposta 1', _responder),
             Resposta('Resposta 2', _responder),
             Resposta('Resposta 3', _responder),
             Resposta('Resposta 4', _responder),
          ]
        )
      ),
    );
  }
}