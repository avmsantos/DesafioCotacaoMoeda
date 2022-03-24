import 'package:flutter/material.dart';
import 'strings.dart';
import 'page.dart';

void main() {
  //adição de tarefas
  List<Tasks> minhasTarefas = [];
  minhasTarefas.add(Tasks('Cachorro', 'dar agua'));
  minhasTarefas.add(Tasks('GAto', 'dar comida'));
  minhasTarefas.add(Tasks('Macaco', 'dar banana'));
  print(minhasTarefas);

  //remoção de tarefas
  minhasTarefas.removeAt(1);

  //edição da tarefa

  final editarTarefa = minhasTarefas[0].editar(titulo: 'papagaio');
  minhasTarefas[0] = editarTarefa;
  print(minhasTarefas);

  runApp(
    const MaterialApp(
      home: Task(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  final tempo = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        title: const Text(
          'My Task',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Rubik',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFf3f3f3),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(30, 24, 30, 24),
        itemCount: 4,
        itemBuilder: (context, index) {
          return const Card(
            margin: EdgeInsets.all(12.0),
            child: SizedBox(
              width: 300,
              height: 120,
              child: ListTile(
                leading: Icon(Icons.abc),
                title: Text(
                  'Task A',
                  style: TextStyle(),
                ),
                subtitle: Text('Alimentando o dogruinho'),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _configurandoModalBottomSheet(context),
        backgroundColor: const Color(0xFFf81d79),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _configurandoModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext config) {
        return Wrap(
          children: [
            TextField(
              decoration: taskLabel(Strings.titulo2),
              style: const TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: taskLabel(Strings.titulo),
              style: const TextStyle(
                fontFamily: 'Rubik',
                fontSize: 17,
              ),
            ),
            TextField(
              decoration: taskLabel(Strings.descricao),
              style: const TextStyle(
                fontFamily: 'Rubik',
                fontSize: 17,
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.save,
                  ),
                  backgroundColor: const Color(0xFFF81D79),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4), // <-- Radius
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

InputDecoration taskLabel(String label) {
  return InputDecoration(border: const OutlineInputBorder(), labelText: label);
}
