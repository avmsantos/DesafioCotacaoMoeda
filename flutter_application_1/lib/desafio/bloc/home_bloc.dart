import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/desafio/api/api_moedas.dart';
import 'package:bloc_state_management/desafio/bloc/home_bloc_state.dart';
import 'package:bloc_state_management/desafio/class/enum_conversao.dart';

class HomeBloc extends Cubit<HomeBlocState> {
  //ta fazendo a conexão com o api moedas
  final ApiMoedas repository;

  HomeBloc(this.repository) : super(HomeBlocInitial());

  Future<void> getMoedas(
      Conversao moedas, List<Conversao> listaConvensao) async {
    //emit(HomeBlocLoanding()); //usar circulo progreso
    final conversao = await repository.getMoedas(
        moedas, listaConvensao); // chamar as funcionalidades do repository
    print(conversao);
    emit(HomeFinalState(conversao));
  }
}
