import 'package:calculadora_imc/Classes/Pessoa.dart';
import 'package:calculadora_imc/exception/altura_exception.dart';
import 'package:calculadora_imc/exception/peso_exception.dart';

import 'package:test/test.dart';

void main() {

  test(
      'Se tentar setar um peso invalido, o código deve retornar uma exceção de peso',
      () {
    var pessoa = Pessoa();
    pessoa.setNome('nome');

    expect(
      () => pessoa.setPeso(0.0),
      throwsA(TypeMatcher<PesoCustomException>()),
    );
  });

  test(
      'Se tentar setar um altura invalida, o código deve retornar uma exceção de altura',
      () {
    var pessoa = Pessoa();

    pessoa.setNome("nome");

    expect(
      () => pessoa.setAltura(0.0),
      throwsA(TypeMatcher<AlturaCustomException>()),
    );
  });
  


}
