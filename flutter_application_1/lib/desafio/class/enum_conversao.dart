//enum é um conjunto de valores fixos, constantes, pre definidos
enum Conversao {
  USD,
  BRL,
  ARS,
  JPY,
  GBP,
}

class MoedaMap {
  static String tituloMoeda(Conversao getTitulo) {
    switch (getTitulo) {
      case Conversao.USD:
        return 'Dolar Americano';
      case Conversao.BRL:
        return 'Real';
      case Conversao.ARS:
        return 'Peso Argentino';
      case Conversao.JPY:
        return 'Iene';
      default:
        return 'Libra Esterlina';
    }
  }
}
