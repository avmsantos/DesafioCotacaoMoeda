import 'package:bloc_state_management/desafio/result.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Tela2(),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }

// class Tela2 extends StatelessWidget {
//   const Tela2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 31, 31, 31),
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: const Text(
//           'Cotação',
//           style: TextStyle(color: Colors.blue),
//         ),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: const Cotacao(),
//     );
//   }
// }

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
                      title: Text('Real',
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
        const Resultado()
      ],
    );
  }
}
