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

// class ItemEstoque {
//   String nomeProduto;
//   int quantidade;
//   double preco;

//   ItemEstoque(this.nomeProduto, this.quantidade, this.preco);

//   void registrarEntrada(int valor) {
//     quantidade += valor;
//   }

//   void registrarSaida(int valor) {
//     if (quantidade >= valor) {
//       quantidade -= valor;
//     } else {
//       print('Quantidade insuficiente em estoque para realizar a saída.');
//     }
//   }

//   void atualizarPreco(double novoPreco) {
//     preco = novoPreco;
//   }
// }

// void main() {
//   // Instanciando os itens
//   ItemEstoque smartphone = ItemEstoque('Smartphone', 100, 2999.99);
//   ItemEstoque notebook = ItemEstoque('Notebook', 50, 4999.99);
//   ItemEstoque tablet = ItemEstoque('Tablet', 75, 1999.99);

//   // Atualizando o preço do Notebook
//   notebook.atualizarPreco(4799.99);

//   // Imprimindo informações atualizadas dos itens
//   print(
//     'Produto: ${smartphone.nomeProduto}, Quantidade em estoque: ${smartphone.quantidade}, Preço: R\$${smartphone.preco}',
//   );
//   print(
//     'Produto: ${notebook.nomeProduto}, Quantidade em estoque: ${notebook.quantidade}, Preço: R\$${notebook.preco}',
//   );
//   print(
//     'Produto: ${tablet.nomeProduto}, Quantidade em estoque: ${tablet.quantidade}, Preço: R\$${tablet.preco}',
//   );
// }
