import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kreko_mobile_app/domain/usecases/inventario/consultar_stock_bajo_usecase.dart';

void main() {
  final useCase = ConsultarStockBajoUseCase();

  group('ConsultarStockBajoUseCase', () {
    test('devuelve lista vacía cuando no hay productos', () {
      expect(useCase.ejecutar([]), isEmpty);
    });

    test('devuelve solo los productos con stock menor al umbral', () {
      final arroz = Producto('Arroz', 2, Decimal.parse('3500.50'));
      final aceite = Producto('Aceite', 20, Decimal.parse('12000'));
      final sal = Producto('Sal', 4, Decimal.parse('1500'));

      final resultado = useCase.ejecutar([arroz, aceite, sal]);

      expect(resultado, [arroz, sal]);
    });

    test('un producto con stock igual al umbral no se considera bajo', () {
      final panela = Producto('Panela', 5, Decimal.parse('2000'));

      expect(useCase.ejecutar([panela]), isEmpty);
    });

    test('calcula el valor del inventario bajo sin errores de redondeo', () {
      final a = Producto('A', 3, Decimal.parse('0.10'));
      final b = Producto('B', 3, Decimal.parse('0.20'));

      final total = useCase.valorInventarioBajo([a, b]);

      expect(total, Decimal.parse('0.90'));
    });
  });
}
