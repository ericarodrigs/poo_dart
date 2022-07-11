void main() {
  escolherMeioTransporte(Transporte.trem);
}

void escolherMeioTransporte(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print('vou de carro');
      break;
    case Transporte.bike:
      print('vou de bike');
      break;
    case Transporte.andando:
      print('vou andando');
      break;
    case Transporte.skate:
      print('vou de skate');
      break;
    default:
      print('estou indo é o que importa');
      break;
  }
}

enum Transporte {
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins,
  trem,
}
