import 'package:bloc_state_management/desafio/class/reposotory.dart';
import 'package:flutter/material.dart';

class CardsMoedas extends StatelessWidget {
  final Conversao getTitulo;
  final bool selecao;
  final VoidCallback click;

  const CardsMoedas({
    Key? key,
    required this.getTitulo,
    required this.selecao,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: Container(
            color: selecao ? Colors.blue : null,
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
              selected: true,
              onTap: click,
            ),
          ),
        ),
      ),
    );
  }
}
