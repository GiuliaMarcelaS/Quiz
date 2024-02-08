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
    final List perguntas = [
      {'texto':'Qual é o seu estilo de música favorito?',
      'respostas':['rock', 'pop', 'eletrônica','rap']},
      {'texto':'Qual é o seu gênero de filme favorito?',
      'respostas':['terror','comédia', 'ficção', 'animação']},
      {'texto':'Qual é a sua cor favorita?',
      'respostas':['amarelo', 'vermelho', 'verde', 'preto']},
      {'texto':'Qual dessas é sua cidade favorita?',
      'respostas':['Tokyo', 'Los Angeles', 'Rio de Janeiro', 'Londres']},
      {'texto':'Qual é o seu animal favorito?',
      'respostas':['Cachorro', 'Gato', 'Cavalo', 'Hamster']}
      
    ];
    return MaterialApp( 
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Qual música da Camila Cabello você é?'),
        ),
        body: Column(
          children:  [
            Questao(perguntas[_perguntaSelecionada]['texto']),
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