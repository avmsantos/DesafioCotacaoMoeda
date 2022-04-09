//enum é um conjunto de valores fixos, constantes, pre definidos
enum Conversao {
  USD,
  BRL,
  EUR,
  BTC,
  GBP,
}

class MoedaMap {
  static String tituloMoeda(Conversao getTitulo) {
    switch (getTitulo) {
      case Conversao.USD:
        return 'Dolar Americano';
      case Conversao.BRL:
        return 'Real';
      case Conversao.EUR:
        return 'Euro';
      case Conversao.BTC:
        return 'Bitcoin';
      default:
        return 'Libra Esterlina';
    }
  }
}
