import 'dart:math';

void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde";
  String sabor = "Doce e Cítrica";
  int diasDesdeColheita = 30;
  bool isMadura;

  Fruta laranja = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta uva = Fruta("Uva", 20, "Roxa", "Doce", 15);
  Fruta tangerina = Fruta("tangerina", 30, "laranja", "azeda", 20);

  Legume macaxeira = Legume("macaxeira", 200, "marrom", true);
  Nozes castanhaDoPara = Nozes("Castanha do Pará", 8, "amarelo", "gostoso", 40, 56);
  Citricas limao = Citricas("limao", 20, "verde", "azedo", 20, 30, isMadura: true);


  castanhaDoPara.printAlimento();
  macaxeira.precisaCozinhar();
  laranja.fazerSuco();
  limao.existeRefri(true);
  print(limao.isMadura);

  castanhaDoPara.fazerMassa();

  // print(laranja.nome);
  // print(laranja);
  // print(uva.peso);
  // print(uva);

  // laranja.estaMadura(30);
  // uva.estaMadura(20);
  // tangerina.estaMadura(40);
  // print(tangerina.isMadura);
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor) {
    nome = nome.toUpperCase();
  }

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida há $diasDesdeColheita dias e precisa de $diasParaMadura dias para "
        "ficar boa para o consumo. Portanto, ela está madura? $isMadura");
  }

  void fazerSuco() {
    print("Você fez um ótimo suco de $nome.");
  }

  @override
  void separarIgredientes() {
    print("Separar os ingredientes.");
  }

  @override
  void fazerMassa() {
    print("Misturar ingredientes até ficar homogêneo.");
  }

  @override
  void assar() {
    print("Colocar no forno por 30 minutos.");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este(a) $nome pesa $peso gramas e é $cor.");
  }
}

class Legume extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legume(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void precisaCozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o seu $nome já está cozinhando!");
    } else {
      print("Nem precisa cozinhar.");
    }
  }

  @override
  void separarIgredientes() {
    // TODO: implement separarIgredientes
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void assar() {
    // TODO: implement assar
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo, {bool? isMadura})
      : super(nome, peso, cor, sabor, diasDesdeColheita, isMadura: isMadura);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe refrigerante de $nome.");
    } else {
      print("Nao existe refrigerante de $nome.");
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa(){
    print("Tirar a nozes da casca!");
    super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIgredientes ();
  void fazerMassa ();
  void assar ();
}