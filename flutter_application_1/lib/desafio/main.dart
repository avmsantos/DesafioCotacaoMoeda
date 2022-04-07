import 'package:bloc_state_management/desafio/api/api_moedas.dart';
import 'package:bloc_state_management/desafio/class/enum_conversao.dart';
import 'package:bloc_state_management/desafio/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );

  final api = ApiMoedas();
  api.getMoedas(Conversao.BRL, [Conversao.USD, Conversao.JPY]);
}
