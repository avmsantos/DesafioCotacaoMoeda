import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  const Resultado({Key? key}) : super(key: key);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    //final tabela3 = TerceiraTela.tabela3;

    return PageView(
      children: [
        ListView.builder(
          itemCount: 3,
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
                  child: const ListTile(
                    leading: Icon(
                      Icons.attach_money,
                      size: 37,
                    ),
                    iconColor: Color(0xFFABB0AD),
                    title: Text(
                      'teste3',
                      // tabela3[moeda].nome,
                      style: TextStyle(color: Color(0xFFABB0AD)),
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
