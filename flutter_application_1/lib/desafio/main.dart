import 'package:bloc_state_management/desafio/api/api_moedas.dart';
import 'package:bloc_state_management/desafio/bloc/home_bloc.dart';
import 'package:bloc_state_management/desafio/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MaterialApp(
      home: BlocProvider(
          create: ((context) => HomeBloc(ApiMoedas())),
          child: const HomePage()),
      debugShowCheckedModeBanner: false,
    ),
  );
}
