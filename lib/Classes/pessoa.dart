import 'package:calculadora_imc/exception/altura_exception.dart';
import 'package:calculadora_imc/exception/nome_exception.dart';
import 'package:calculadora_imc/exception/peso_exception.dart';

class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;

  String? getNome() {
    return _nome;
  }

  void setNome(String? nome) {
    _nome = nome;

     if (_nome == null || _nome!.trim() == "" || _nome!.contains(RegExp(r'[0-9]'))) {
      throw NomeCustomException();
    }
  }

  double? getPeso() {
    return _peso;
  }

  void setPeso(double? peso) {
    _peso = peso;

    if (_peso == 0.0 || _peso == null) {
      throw PesoCustomException();
    }
  }

  double? getAltura() {
    return _altura;
  }

  void setAltura(double? altura) {
    _altura = altura;

    if (_altura == 0.0 || _altura == null) {
      throw AlturaCustomException();
    }
  }

  var imc = 0.0;

  String calculoIMC() {
    String result = "";

    if (_peso != null && _altura != null) {
      imc = (_peso! / (_altura! * _altura!)).truncateToDouble();

      switch (imc) {
        case < 16.0:
          result = '$imc -> Magreza grave';
          break;
        case < 17.0:
          result = '$imc -> Magreza moderada';
          break;
        case < 18.5:
          result = '$imc -> Magreza leve';
          break;
        case < 25:
          result = '$imc -> Saudável';
          break;
        case < 30:
          result = '$imc -> Sobrepeso';
          break;
        case < 35:
          result = '$imc -> Obesidade Grau I';
          break;
        case < 40:
          result = '$imc -> Obesidade Grau II';
          break;
        case >= 40:
          result = '$imc -> Obesidade Grau I';
          break;
      }
    }

    return result;
  }

  @override
  String toString() {
    final String imc = calculoIMC();
    return ' Nome: $_nome, Peso: $_peso, Altura: $_altura, IMC: $imc';
  }
}
