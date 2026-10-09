/// Umbrales de negocio del módulo de inventario.
class UmbralesInventario {
  UmbralesInventario._();

  /// Stock mínimo por debajo del cual un producto se considera "bajo".
  // TODO: reemplazar por el punto de reorden de cada producto
  // (CalcularPuntoReordenUseCase) cuando esté implementado.
  static const int stockBajo = 5;
}
