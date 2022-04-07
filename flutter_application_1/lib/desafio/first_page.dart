import 'package:bloc_state_management/desafio/class/enum_conversao.dart';
import 'package:bloc_state_management/desafio/moedas_card.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  final List<Conversao> moedas;
  final PageController pageController;
  final void Function(List<Conversao> selecaoDeMoedas) filtrarLista;
  const FirstPage({
    Key? key,
    required this.moedas,
    required this.pageController,
    required this.filtrarLista,
  }) : super(key: key);

  @override
  _ConvertMoedasState createState() => _ConvertMoedasState();
}

class _ConvertMoedasState extends State<FirstPage> {
  List<Conversao> selecaoDeMoedas = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.moedas.length,
      itemBuilder: (BuildContext context, index) {
        final getTitulo = widget.moedas[index];
        return CardsMoedas(
          getTitulo: getTitulo,
          selecao: selecaoDeMoedas.contains(getTitulo),
          //isso aqui é callBack que chama a função por parametro no home_page
          click: () {
            print("Antes do setState $selecaoDeMoedas");
            setState(() {
              if (selecaoDeMoedas.contains(getTitulo)) {
                selecaoDeMoedas.remove(getTitulo);
              } else {
                selecaoDeMoedas.add(getTitulo);
              }
            });
            print(selecaoDeMoedas);
            widget.filtrarLista(selecaoDeMoedas);

            widget.pageController.jumpToPage(1);
          },
        );
      },
    );
  }
}
