class Persona {
  String nombre;
  int edad;
  String genero;

  Persona(this.nombre, this.edad, this.genero);

  void presentacion() {
    print('Hola, soy $nombre, tengo $edad años y soy genero $genero.');
  }
}

void main() {
  var persona = Persona('Juan', 21, 'masculino');
  persona.presentacion();
}
