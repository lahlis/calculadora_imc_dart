class PesoCustomException implements Exception {
  String error() => "Peso inválido. Por favor, insira novamente seus dados.";

  @override
  String toString() {
    
    return "PesoCustomException: ${error()}";
  }
}