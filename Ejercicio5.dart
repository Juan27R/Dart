class Producto {
  String _nombre;
  double _precio;
  int _Cantidad;

  Producto(this._nombre, this._precio, this._Cantidad);

  String get nombre => _nombre;
  double get precio => _precio;
  int get cantidadInventario => _Cantidad;

  set nombre(String Nombrenuevo) {
    _nombre = Nombrenuevo;
  }

  set precio(double nuevoPrecio) {
    if (nuevoPrecio >= 0) {
      _precio = nuevoPrecio;
    } else {
      print('El precio no puede ser negativo.');
    }
  }

  set cantidadInventario(int nuevaCantidad) {
    if (nuevaCantidad >= 0) {
      _Cantidad = nuevaCantidad;
    } else {
      print('La cantidad en inventario no puede ser negativa.');
    }
  }

  void comprar(int cantidad) {
    _Cantidad += cantidad;
    print('Se han comprado $cantidad unidades del producto $_nombre.');
  }

  void vender(int cantidad) {
    if (cantidad <= _Cantidad) {
      _Cantidad -= cantidad;
      print('Se han vendido $cantidad unidades del producto $_nombre.');
    } else {
      print('No hay suficientes unidades en inventario para vender.');
    }
  }

  void mostrarDetalles() {
    print('Detalles del producto:');
    print('Nombre: $_nombre');
    print('Precio: \$$_precio');
    print('Cantidad en inventario: $_Cantidad unidades');
  }
}

void main() {
  // Crear un objeto de la clase Producto
  var producto = Producto('Camiseta', 50.0, 200);

  // Mostrar detalles iniciales del producto
  producto.mostrarDetalles();

  // Realizar una compra
  producto.comprar(10);

  // Mostrar detalles después de la compra
  producto.mostrarDetalles();

  // Realizar una venta
  producto.vender(5);

  // Mostrar detalles después de la venta
  producto.mostrarDetalles();

  // Intentar vender más unidades de las disponibles
  producto.vender(100);
}
