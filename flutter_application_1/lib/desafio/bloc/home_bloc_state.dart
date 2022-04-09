import '../api/obj_moedas.dart';

abstract class HomeBlocState {}
//class abstract faz com que o as classes sejam iguais ao homebBocState, do mesmo tipo

class HomeBlocLoanding extends HomeBlocState {}

class HomeBlocInitial extends HomeBlocState {} //default

class HomeCotacaoState extends HomeBlocState{}

class HomeFinalState extends HomeBlocState {
  final List<ObjMoedas> moedasApi;

  HomeFinalState(this.moedasApi);
}
