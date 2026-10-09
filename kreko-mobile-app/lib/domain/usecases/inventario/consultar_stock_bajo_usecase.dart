// HU-03: Consultar productos con stock bajo.
// Archivo de ejemplo para el taller de revisión de código (Parte A).

class Producto {
  final String nombre;
  final int stock;
  final double precio;

  Producto(this.nombre, this.stock, this.precio);
}

class ConsultarStockBajoUseCase {
  List<Producto> ejecutar(List<Producto> productos) {
    var x = <Producto>[];
    for (var p in productos) {
      if (p.stock < 5) {
        x.add(p);
      }
    }
    return x;
  }

  double valorInventarioBajo(List<Producto> productos) {
    double total = 0;
    for (var p in ejecutar(productos)) {
      total = total + (p.stock * p.precio);
    }
    return total;
  }
}
