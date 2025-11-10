void main() {
  List<Map<String, Object>> items = [
    {'preco': 2000, 'nome': 'Smartphone', 'quantidade': 100},
    {'preco': 7000, 'nome': 'Notebook', 'quantidade': 50},
    {'preco': 1000, 'nome': 'Impressora', 'quantidade': 20},
  ];

  List<ItemEstoque> itemsEstoque = [];

  for (Map<String, Object> item in items) {
    ItemEstoque itemEstoque = ItemEstoque(
      double.parse(item['preco'].toString()),
      item['nome'].toString(),
      int.parse(item['quantidade'].toString()),
    );

    itemsEstoque.add(itemEstoque);
  }

  print('\nListagem inicial');
  for (ItemEstoque item in itemsEstoque) {
    item.imprimir();
  }

  itemsEstoque[0].setQuantidade(20); // Smartphone
  itemsEstoque[1].retirada(10); // Notebook

  print('\nAlterações em Smartphone e Notebook');
  for (ItemEstoque item in itemsEstoque) {
    item.imprimir();
  }

  itemsEstoque[2].setPreco(1250);
  print('\nAlterações em Impressora');
  for (ItemEstoque item in itemsEstoque) {
    item.imprimir();
  }
}

class ItemEstoque {
  double preco;
  String nome;
  int quantidade;

  ItemEstoque(this.preco, this.nome, this.quantidade);

  void setQuantidade(int? quantidade) {
    if (quantidade != null && quantidade > 0) {
      this.quantidade += quantidade;
    }
  }

  int? retirada(int? quantidade) {
    if (quantidade != null && quantidade > 0) {
      this.quantidade -= quantidade;
    }
    return this.quantidade;
  }

  void setPreco(double? preco) {
    if (preco != null && preco > 0.0) {
      this.preco = preco;
    }
  }

  void imprimir() {
    print(
      'Produto: $nome, preço: R\$${preco.toStringAsFixed(2)}, Quantidade em estoque: $quantidade',
    );
  }
}
