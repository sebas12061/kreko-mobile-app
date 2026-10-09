// HU-03: Consultar productos con stock bajo.

import 'package:decimal/decimal.dart';
import 'package:kreko_mobile_app/core/constants/umbrales_inventario.dart';

class Producto {
  final String nombre;
  final int stock;
  final Decimal precio;

  Producto(this.nombre, this.stock, this.precio);
}

class ConsultarStockBajoUseCase {
  /// Devuelve los productos cuyo stock es menor que [umbral].
  List<Producto> ejecutar(
    List<Producto> productos, {
    int umbral = UmbralesInventario.stockBajo,
  }) {
    final productosConStockBajo =
        productos.where((p) => p.stock < umbral).toList();
    return productosConStockBajo;
  }

  /// Valor total (stock x precio) de los productos con stock bajo.
  Decimal valorInventarioBajo(
    List<Producto> productos, {
    int umbral = UmbralesInventario.stockBajo,
  }) {
    return ejecutar(productos, umbral: umbral).fold<Decimal>(
      Decimal.zero,
      (total, p) => total + Decimal.fromInt(p.stock) * p.precio,
    );
  }
}
