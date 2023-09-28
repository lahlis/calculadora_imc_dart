class NomeCustomException implements Exception {
  String error() => "Nome inválido.";

  @override 
  String toString() {
    
    return "NomeCustomException: ${error()}";
  }
}