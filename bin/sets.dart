void main() {
  Set<String> registros = <String>{};
  registros = registrarDestinos('SP', registros);
  registros = registrarDestinos('CE', registros);
  registros = registrarDestinos('RJ', registros);
  registros = registrarDestinos('BA', registros);
  registros = registrarDestinos('BA', registros);
  print(registros);

  List<String> registrosList = [];
  registrosList = registrarDestinosList('SP', registrosList);
  registrosList = registrarDestinosList('CE', registrosList);
  registrosList = registrarDestinosList('RJ', registrosList);
  registrosList = registrarDestinosList('BA', registrosList);
  registrosList = registrarDestinosList('BA', registrosList);
  print(registrosList);
  print(registrosList.toSet());

}

Set<String> registrarDestinos(String destino, Set<String> registros) {
  registros.add(destino);
  return registros;
}

List<String> registrarDestinosList(String destino, List<String> registros) {
  registros.add(destino);
  return registros;
}