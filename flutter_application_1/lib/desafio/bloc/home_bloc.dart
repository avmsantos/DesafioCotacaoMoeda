import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/desafio/api/api_moedas.dart';
import 'package:bloc_state_management/desafio/bloc/home_bloc_state.dart';

class HomeBloc extends Cubit<HomeBlocState> {
  //ta fazendo a conexão com o api moedas 
  final ApiMoedas repository;
  HomeBloc(this.repository) : super(HomeBlocInitial());
}
