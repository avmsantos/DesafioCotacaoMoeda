import 'package:bloc_state_management/desafio/class/enum_conversao.dart';
import 'package:flutter/material.dart';

class Cotacao extends StatefulWidget {
  final List<Conversao> moedas;
  const Cotacao({
    Key? key,
    required this.moedas,
  }) : super(key: key);

  @override
  State<Cotacao> createState() => _CotacaoState();
}

class _CotacaoState extends State<Cotacao> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.moedas.length,
      itemBuilder: (context, index) {
        final getTitulo = widget.moedas[index];

        return SizedBox(
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
                MoedaMap.tituloMoeda(getTitulo),
                style: const TextStyle(color: Color(0xFFABB0AD)),
              ),
              selectedTileColor: Colors.blue,
              onTap: () {
                setState(
                  () {},
                );
              },
            ),
          ),
        );
        
      },
    );
  }
}
