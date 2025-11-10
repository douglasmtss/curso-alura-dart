void main() {
  List<Map<String, Object>> items = [
    {'nome': 'Smartphone', 'quantidade': 100},
    {'nome': 'Notebook', 'quantidade': 50},
  ];

  List<ItemEstoque> itemsEstoque = [];

  for (Map<String, Object> item in items) {
    ItemEstoque itemEstoque = ItemEstoque(
      item['nome'].toString(),
      int.parse(item['quantidade'].toString()),
    );

    itemsEstoque.add(itemEstoque);
  }

  for (ItemEstoque item in itemsEstoque) {
    print('Produto: ${item.nome}, Quantidade em estoque: ${item.quantidade}');
  }
}

class ItemEstoque {
  String nome;
  int quantidade;

  ItemEstoque(this.nome, this.quantidade);
}
