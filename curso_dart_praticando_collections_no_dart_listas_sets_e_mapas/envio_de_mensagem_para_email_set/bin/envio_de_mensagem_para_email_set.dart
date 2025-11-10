void enviarEmail(String email) {
  print('mensagem enviada para: $email');
}

void main() {
  Set<String> setEmails = {'joao@gmail.com', 'maria@gmail.com'};

  setEmails.add('enzo@gmail.com');
  setEmails.add('enzo@gmail.com');

  for (String email in setEmails) {
    enviarEmail(email);
  }

  if (setEmails.contains('enzo@gmail.com') == true) {
    print('email do enzo dentro do set');
  } else {
    print('não está dentro do set');
  }
}
