class ObjMoedas {
  final String bid;
  final String code;
  final String name;

  ObjMoedas({
    required this.bid,
    required this.code,
    required this.name,
  });

  factory ObjMoedas.fromJson(Map<String, dynamic> json) {
    return ObjMoedas(
      bid: json['bid'] ?? '',
      code: json['code'] ?? '',
      name: json['name'] ?? '',
    );
  }
}
