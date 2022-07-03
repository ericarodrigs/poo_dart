void main (){
  List<String> listanomes = ['Erica', 'Vania', 'Larissa', 'Sabrina', 'Patricia', 'Thaty'];
  //print(listanomes[0]+ ' & '+ listanomes[1]);

  List<dynamic> erica = [31,1.63,true,'Erica Marques Rodrigues','Kekinha'];

  print ('Eu sou ${erica[3]}, mas pode me chamar de ${erica[4]}.\n'
      'Eu tenho ${erica[0]} anos de idade e ${erica[1]} metros de altura\n'
      'Eu gosto do mundo geek? ${erica[2]}');
}