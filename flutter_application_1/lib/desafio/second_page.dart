import 'package:bloc_state_management/desafio/class/reposotory.dart';
import 'package:flutter/material.dart';

class Cotacao extends StatefulWidget {
  const Cotacao({Key? key}) : super(key: key);

  @override
  State<Cotacao> createState() => _CotacaoState();
}

class _CotacaoState extends State<Cotacao> {
  @override
  Widget build(BuildContext context) {
    final tabela2 = SegundaTela.tabela2;
    return PageView(
      children: [
        ListView.builder(
          itemCount: tabela2.length,
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
                      tabela2[moeda].nome,
                      style: const TextStyle(color: Color(0xFFABB0AD)),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
