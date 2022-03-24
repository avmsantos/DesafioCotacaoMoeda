import 'package:flutter/material.dart';

@immutable
class Tasks {
  final String titulo;
  final String descricao;
  final DateTime data;

  Tasks(this.titulo, this.descricao, {DateTime? data})
      : data = data ?? DateTime.now();

//por ser immutable a desrição ou o titulo nao poderia ser editada então esse metodo serve para que isso seja peermitido
  Tasks editar({
    String? titulo,
    String? descricao,
  }) {
    return Tasks(titulo ?? this.titulo, descricao ?? this.descricao,
        data: data);
  }

//usado para nao precisar chamar a propriedade do objeto. Ex: print(tarefa.titulo), assim so fica print(tarefa)
  @override
  String toString() {
    return ("tarefa: $titulo, $descricao, $data");
  }
}
