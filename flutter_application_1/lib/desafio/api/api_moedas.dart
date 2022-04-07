import 'dart:convert';

import 'package:bloc_state_management/desafio/api/obj_moedas.dart';
import 'package:bloc_state_management/desafio/class/enum_conversao.dart';
import 'package:http/http.dart' as http;

class ApiMoedas {
  Future<List<ObjMoedas>> getMoedas(
    Conversao moedaBase,
    List<Conversao> listaMoeda,
  ) async {
    //pegar os dados do servidor

    final _listaMoeda = listaMoeda
    //map pecorre cada item da minha lista
        .map((moeda) => '${moeda.name}-${moedaBase.name}')
        .toList()
        .join(",");
    print(_listaMoeda);
    final response = await http
        .get(Uri.parse('https://economia.awesomeapi.com.br/last/$_listaMoeda'));
    print(response.body);
    //pegar os dados do servidor
    //jsonDecode recebe uma string e devolve um map
    final json = jsonDecode(response.body);
    
    print(json);
    final dados = listaMoeda.map((moeda) {
      return ObjMoedas.fromJson(json[moeda.name]);
    }).toList();
    print(dados);
    //toList transforma para uma lista

    return dados;
  }
}
