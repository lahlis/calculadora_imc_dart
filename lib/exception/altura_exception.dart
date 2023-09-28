class AlturaCustomException implements Exception{
  String error() => "Altura inválida. Por favor, insira novamente seus dados.";

  @override
  String toString() {
    
    return "AlturaCustomException: ${error()}";
  }
}