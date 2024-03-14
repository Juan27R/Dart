List<String> Ordenar(List<String> lista) {
  lista.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
  return lista;
}

void main() {
  List<String> lista = ['manzana', '021laptop', 'zapato', '&2top'];
  List<String> listaOrdenada = Ordenar(lista);
  
  print(listaOrdenada); // Output: [&2top, 021laptop, manzana, zapato]
}