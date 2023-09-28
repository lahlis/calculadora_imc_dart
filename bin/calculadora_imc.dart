import 'dart:convert';
import 'dart:io';
import 'package:calculadora_imc/Classes/Pessoa.dart';
import 'package:calculadora_imc/exception/altura_exception.dart';
import 'package:calculadora_imc/exception/nome_exception.dart';
import 'package:calculadora_imc/exception/peso_exception.dart';

void main(List<String> arguments) {
  try {
    var pessoa = Pessoa();

    stdout.write('Digite o seu nome: ');
    String? name = stdin.readLineSync();
    pessoa.setNome(name);

    stdout.write('Digite o seu peso em kg: ');
    var line = stdin.readLineSync(encoding: utf8);
    var weight = double.tryParse(line ?? "0");
    pessoa.setPeso(weight);

    stdout.write('Digite a sua altura em m: ');
    var line2 = stdin.readLineSync(encoding: utf8);
    var height = double.tryParse(line2 ?? "0");
    pessoa.setAltura(height);

    print(pessoa);
  } on NomeCustomException catch (e) {
    print(e);
    exit(0);
  } on PesoCustomException catch (e) {
    print(e);
    exit(0);
  } on AlturaCustomException catch (e) {
    print(e);
    exit(0);
  }
}
