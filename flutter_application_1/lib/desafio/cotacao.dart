import 'package:flutter/material.dart';

class Cotacao extends StatefulWidget {
  const Cotacao({Key? key}) : super(key: key);

  @override
  State<Cotacao> createState() => _CotacaoState();
}

class _CotacaoState extends State<Cotacao> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: const Color(0xFF2C2C2C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const ListTile(
                  leading: Icon(
                    Icons.attach_money,
                    size: 37,
                  ),
                  iconColor: Color(0xFFABB0AD),
                  title: Text('Real'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: const Color(0xFF2C2C2C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const ListTile(
                  leading: Icon(
                    Icons.attach_money,
                    size: 37,
                  ),
                  iconColor: Color(0xFFABB0AD),
                  title: Text('Libra Estrelina'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: const Color(0xFF2C2C2C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const ListTile(
                  leading: Icon(
                    Icons.attach_money,
                    size: 37,
                  ),
                  iconColor: Color(0xFFABB0AD),
                  title: Text('Iene'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: const Color(0xFF2C2C2C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const ListTile(
                  leading: Icon(
                    Icons.attach_money,
                    size: 37,
                  ),
                  iconColor: Color(0xFFABB0AD),
                  title: Text('Peso Argentino'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
