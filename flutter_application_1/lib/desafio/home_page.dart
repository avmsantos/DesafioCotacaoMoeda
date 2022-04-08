import 'package:bloc_state_management/desafio/class/enum_conversao.dart';
import 'package:bloc_state_management/desafio/cotacao_page.dart';
import 'package:bloc_state_management/desafio/first_page.dart';
import 'package:bloc_state_management/desafio/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final moedas = Conversao.values;
  final pageController = PageController();

  List<Conversao> listaFiltrada = [];

  void filtrarLista(List<Conversao> selecaoDeMoedas) {
    //o where onde selecao de moedas for diferente da lista ele sera guardado mas se for igual, sera removido da lista
    print("Entrei no filtrar lista");
    print(selecaoDeMoedas);
    print(moedas);
    print(moedas
        .where((moeda) =>
            selecaoDeMoedas.isEmpty ? false : moeda != selecaoDeMoedas.first)
        .toList());
    setState(() {
      listaFiltrada = moedas
          .where((moeda) =>
              selecaoDeMoedas.isEmpty ? false : moeda != selecaoDeMoedas.first)
          .toList();
    });
    print("Acabou o filtrar lista");
    print(listaFiltrada);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        title: const Text(
          'Moeda Base',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          FirstPage(
            pageController: pageController,
            moedas: moedas,
            filtrarLista: filtrarLista,
          ),
          Cotacao(moedas: listaFiltrada),
          const Resultado(),
        ],
      ),
    );
  }
}
