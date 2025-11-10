void enviarEmail(String email) {
  print('mensagem enviada para: $email');
}

void main() {
  Map<String, String> pessoasEmails = {
    'joao': 'joao@gmail.com',
    'maria': 'maria@gmail.com',
  };

  print(pessoasEmails['joao']);
  print(pessoasEmails['maria']);

  pessoasEmails['enzo'] = 'enzo@gmail.com';
  print(pessoasEmails['enzo']);

  print(pessoasEmails);

  print(pessoasEmails.containsKey('enzo'));

  for (String email in pessoasEmails.values) {
    enviarEmail(email);
  }

  for (String nome in pessoasEmails.keys) {
    print(nome);
  }
}
