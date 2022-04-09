import 'package:bloc_state_management/desafio/api/obj_moedas.dart';
import 'package:bloc_state_management/desafio/bloc/home_bloc.dart';
import 'package:bloc_state_management/desafio/bloc/home_bloc_state.dart';
import 'package:bloc_state_management/desafio/class/enum_conversao.dart';
import 'package:bloc_state_management/desafio/cotacao_page.dart';
import 'package:bloc_state_management/desafio/first_page.dart';
import 'package:bloc_state_management/desafio/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //inserir no botao proximo _bloc.getMoedas();
  late final _bloc = context.read<HomeBloc>();

  List<Conversao> moedas = Conversao.values;
  final pageController = PageController();

  List<Conversao> listaFiltrada = [];
  Conversao moedaBase = Conversao.BRL;

  void filtrarLista(List<Conversao> selecaoDeMoedas) {
    _bloc.emit(HomeCotacaoState());

    //o where onde selecao de moedas for diferente da lista ele sera guardado mas se for igual, sera removido da lista
    print("Entrei no filtrar lista");
    print(selecaoDeMoedas);
    print(moedas);
    print(moedas
        .where((moeda) =>
            selecaoDeMoedas.isEmpty ? false : moeda != selecaoDeMoedas.first)
        .toList());
    moedaBase = selecaoDeMoedas.first;
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
    return BlocBuilder<HomeBloc, HomeBlocState>(
      bloc: _bloc,
      builder: (context, state) {
        List<ObjMoedas> recebendoMoedas = [];
        print(state);
        if (state is HomeBlocInitial) {
          moedas = Conversao.values;
          listaFiltrada = [];
        }

        if (state is HomeFinalState) {
          recebendoMoedas = state.moedasApi;
        }
        print(state);
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
              Cotacao(
                moedas: listaFiltrada,
                pageController: pageController,
                moedaBase: moedaBase,
              ),
              Resultado(
                recebendoMoedas: recebendoMoedas,
                pageController: pageController,
              ),
            ],
          ),
        );
      },
    );
  }
}
