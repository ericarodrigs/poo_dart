void main() {
  // Map<String, double> registrarPrecos = {};
  //
  // registrarPrecos['SP'] = 1200;
  // registrarPrecos['RJ'] = 1500;
  // registrarPrecos['RN'] = 700;
  //
  // print(registrarPrecos);

  Map<String, dynamic> registrarPrecos = {};

  registrarPrecos['SP'] = 1200;
  registrarPrecos['RJ'] = 1500;
  registrarPrecos['RN'] = 700;
  registrarPrecos['NY'] = 'MUITO CARO';

  registrarPrecos.remove('RN');
  print(registrarPrecos);

  if (registrarPrecos['SP'] > registrarPrecos['RJ']){
    print('sao paulo maior');
  } else{
    print('rio maior');
  }

  print(registrarPrecos);
}