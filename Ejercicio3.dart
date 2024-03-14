bool Palindromo(String texto) {
  
  texto = texto.replaceAll(' ', '').toLowerCase();
  
  return texto == texto.split('').reversed.join('');
}

void main() {
  String texto1 = "Puerta";
  String texto2 = "Ama gaseoso oso esa gama";
  
  if (Palindromo(texto1)) {
    print('$texto1 es palíndromo');
  } else {
    print('$texto1 no es palíndromo');
  }
  
  if (Palindromo(texto2)) {
    print('$texto2 es palíndromo');
  } else {
    print('$texto2 no es palíndromo');
  }
}
