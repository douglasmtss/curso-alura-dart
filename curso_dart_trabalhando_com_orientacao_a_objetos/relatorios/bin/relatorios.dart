// Código corrigido
abstract class Documento {
  String nomeDoDocumento;

  Documento(this.nomeDoDocumento);

  void imprimir();
}

class Relatorio extends Documento {
  Relatorio(String nomeDoDocumento) : super(nomeDoDocumento);

  @override
  void imprimir() {
    print('O $nomeDoDocumento foi enviado para impressão');
  }
}

void main() {
  Documento relatorio = Relatorio(
    'Relatório Anual',
  ); // Correção: Instanciando a classe concreta
  relatorio.imprimir();
}
