import 'package:bloc_state_management/desafio/api/obj_moedas.dart';
import 'package:bloc_state_management/desafio/bloc/home_bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_bloc.dart';

class Resultado extends StatefulWidget {
  final List<ObjMoedas> recebendoMoedas;
  final PageController pageController;

  const Resultado({
    Key? key,
    required this.recebendoMoedas,
    required this.pageController,
  }) : super(key: key);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  late final _bloc = context.read<HomeBloc>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: widget.recebendoMoedas.length,
            itemBuilder: (BuildContext context, int index) {
              final getTitulo = widget.recebendoMoedas[index];
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
                      trailing: Text(getTitulo.bid),
                      leading: const Icon(
                        Icons.attach_money,
                        size: 37,
                      ),
                      iconColor: const Color(0xFFABB0AD),
                      title: Text(
                        getTitulo.name,
                        style: const TextStyle(color: Color(0xFFABB0AD)),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        ElevatedButton(
            onPressed: () {
              _bloc.emit(HomeBlocInitial());
              widget.pageController.jumpToPage(0);
            },
            child: const Text('Concluir'))
      ],
    );
  }
}
