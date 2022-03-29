import 'package:bloc_state_management/desafio/class/reposotory.dart';
import 'package:bloc_state_management/desafio/result.dart';
import 'package:bloc_state_management/desafio/second_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Moedas(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Moedas extends StatelessWidget {
  const Moedas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Moeda base',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: const ConvertMoedas(),
    );
  }
}

class ConvertMoedas extends StatefulWidget {
  const ConvertMoedas({Key? key}) : super(key: key);

  @override
  _ConvertMoedasState createState() => _ConvertMoedasState();
}

class _ConvertMoedasState extends State<ConvertMoedas> {
  @override
  Widget build(BuildContext context) {
    final tabela = PrimeiraTela.tabela;

    return PageView(children: [
      ListView.builder(
        itemCount: tabela.length,
        itemBuilder: (BuildContext context, int moeda) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              height: 80,
              child: Card(
                color: const Color(0xFF2C2C2C),
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: const Icon(
                    Icons.attach_money,
                    size: 37,
                  ),
                  iconColor: const Color(0xFFABB0AD),
                  title: Text(
                    tabela[moeda].nome,
                    style: const TextStyle(color: Color(0xFFABB0AD)),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      const Cotacao(),
      const Resultado()
    ]);
  }
}
