import 'package:bloc_state_management/desafio/api/api_moedas.dart';
import 'package:bloc_state_management/desafio/bloc/home_bloc.dart';
import 'package:bloc_state_management/desafio/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _repository = ApiMoedas();
    return MaterialApp(
      home: BlocProvider(
        create: (context) => HomeBloc(
          //ApiMoedas(),
          _repository
        ),
        child: const HomePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
