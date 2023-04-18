import 'package:flutter/material.dart';

import 'contatos.dart';

class listaContatos extends StatefulWidget {
  const listaContatos({Key? key}) : super(key: key);

  @override
  State<listaContatos> createState() => _listaContatosState();
}

class _listaContatosState extends State<listaContatos> {
  //criar lista
  List<Contato> contatos = [
    Contato(nome: 'Mateus', email: 'mateusdilho@gmail.com'),
    Contato(nome: 'Jooji', email: 'jooji@gmail.com'),
    Contato(nome: 'Hiroaki', email: 'Hiro@gmail.com'),
    Contato(nome: 'Guilherme', email: 'guior@gmail.com'),
    Contato(nome: 'Eduardo', email: 'Eduardo@gmail.com'),
    Contato(nome: 'random1', email: 'random1@gmail.com'),
    Contato(nome: 'random2', email: 'random2@gmail.com'),
    Contato(nome: 'random3', email: 'random3@gmail.com'),
    Contato(nome: 'random4', email: 'random4@gmail.com'),
    Contato(nome: 'random5', email: 'random5@gmail.com'),
    Contato(nome: 'random6', email: 'random6@gmail.com'),
    Contato(nome: 'random7', email: 'random7@gmail.com'),
    Contato(nome: 'random8', email: 'random8@gmail.com'),
    Contato(nome: 'random9', email: 'random9@gmail.com'),
    Contato(nome: 'random10', email: 'random10@gmail.com'),
    Contato(nome: 'random11', email: 'random11@gmail.com'),
    Contato(nome: 'random12', email: 'random12@gmail.com'),
    Contato(nome: 'random13', email: 'random13@gmail.com'),
    Contato(nome: 'random14', email: 'random14@gmail.com'),
    Contato(nome: 'random15', email: 'random15@gmail.com'),
    Contato(nome: 'random16', email: 'random16@gmail.com'),
    Contato(nome: 'random17', email: 'random17@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(contatos[index].nome[0]),
            ),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
          );
        },
      ),
    );
  }
}
