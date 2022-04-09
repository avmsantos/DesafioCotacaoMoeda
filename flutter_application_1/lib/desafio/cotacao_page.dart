import 'package:bloc_state_management/desafio/class/enum_conversao.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_bloc.dart';
import 'moedas_card.dart';

class Cotacao extends StatefulWidget {
  final List<Conversao> moedas;
  final PageController pageController;
  final Conversao moedaBase;
  const Cotacao({
    Key? key,
    required this.moedas,
    required this.pageController,
    required this.moedaBase,
  }) : super(key: key);

  @override
  State<Cotacao> createState() => _CotacaoState();
}

class _CotacaoState extends State<Cotacao> {
  List<Conversao> selecaoDeMoedas = [];
  late final _bloc = context.read<HomeBloc>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: widget.moedas.length,
            itemBuilder: (context, index) {
              final getTitulo = widget.moedas[index];

              return CardsMoedas(
                getTitulo: getTitulo,
                selecao: selecaoDeMoedas.contains(getTitulo),
                //isso aqui é callBack que chama a função por parametro no home_page
                click: () {
                  setState(() {
                    if (selecaoDeMoedas.contains(getTitulo)) {
                      selecaoDeMoedas.remove(getTitulo);
                    } else {
                      selecaoDeMoedas.add(getTitulo);
                    }
                  });

                  print(selecaoDeMoedas);
                },
              );
            },
          ),
        ),
        ElevatedButton(
            onPressed: () async {
              await _bloc.getMoedas(widget.moedaBase, selecaoDeMoedas);
              widget.pageController.jumpToPage(2);
            },
            child: const Text('Continuar'))
      ],
    );
  }
}
