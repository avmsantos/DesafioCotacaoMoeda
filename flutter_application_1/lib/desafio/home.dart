import 'package:bloc_state_management/desafio/cotacao.dart';
import 'package:bloc_state_management/desafio/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Moedas(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Moedas extends StatelessWidget {
  const Moedas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Moeda base',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: const ConvertMoedas(),
    );
  }
}

class ConvertMoedas extends StatefulWidget {
  const ConvertMoedas({Key? key}) : super(key: key);

  @override
  State<ConvertMoedas> createState() => _ConvertMoedasState();
}

class _ConvertMoedasState extends State<ConvertMoedas>
    with TickerProviderStateMixin {
  // TabController? controller;

  // @override
  // void initState() {
  //   super.initState();
  //   controller = TabController(
  //     length: 3,
  //     vsync: this,
  //   );
  // }

  // void _bolinhas() {
  //   setState(() {
  //   controller.index = 1;
  // });
  // }

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
                child: SizedBox(
                  height: 70,
                  child: Center(
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: Border.all(color: Colors.blue),
                      ),
                      child: ListTile(
                        leading: const Icon(
                          Icons.attach_money,
                          size: 37,
                        ),
                        iconColor: const Color(
                          0xFFABB0AD,
                        ),
                        title: const Text(
                          'Real',
                          style: TextStyle(
                            color: Color(0xFFABB0AD),
                          ),
                        ),
                        selected: true,
                        selectedColor: const Color(0xFF2555FF),
                        onLongPress: () {
                          print('funcionou');
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: const Color(0xFF2C2C2C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const SizedBox(
                  height: 70,
                  child: Center(
                    child: ListTile(
                      leading: Icon(
                        Icons.attach_money,
                        size: 37,
                      ),
                      iconColor: Color(
                        0xFFABB0AD,
                      ),
                      title: Text('Dólar Americano',
                          style: TextStyle(color: Color(0xFFABB0AD))),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: const Color(0xFF2C2C2C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const SizedBox(
                  height: 70,
                  child: Center(
                    child: ListTile(
                      leading: Icon(
                        Icons.attach_money,
                        size: 37,
                      ),
                      iconColor: Color(
                        0xFFABB0AD,
                      ),
                      title: Text('Libra Esterlina',
                          style: TextStyle(color: Color(0xFFABB0AD))),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: const Color(0xFF2C2C2C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const SizedBox(
                  height: 70,
                  child: Center(
                    child: ListTile(
                      leading: Icon(
                        Icons.attach_money,
                        size: 37,
                      ),
                      iconColor: Color(
                        0xFFABB0AD,
                      ),
                      title: Text('Iene',
                          style: TextStyle(color: Color(0xFFABB0AD))),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: const Color(0xFF2C2C2C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const SizedBox(
                  height: 70,
                  child: Center(
                    child: ListTile(
                      leading: Icon(
                        Icons.attach_money,
                        size: 37,
                      ),
                      iconColor: Color(
                        0xFFABB0AD,
                      ),
                      title: Text('Peso Argentino',
                          style: TextStyle(color: Color(0xFFABB0AD))),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Resultado(),
        const Cotacao()
      ],
    );
  }
}
