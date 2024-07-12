import 'dart:io';
import 'dart:mirrors';

abstract class Figura {
  double calcularArea();
}

class Circulo extends Figura {
  double radio;

  Circulo(this.radio);

  @override
  double calcularArea() {
    return 3.141592653589793 * radio * radio; // Fórmula del área del círculo: π * r^2
  }
}

class Rectangulo extends Figura {
  double ancho, alto;
  
  Rectangulo(this.ancho, this.alto);

  @override
  double calcularArea() {
    return ancho * alto; // Fórmula del área del rectángulo: ancho * alto
  }
}

void main() {
  // Solicitar el radio del círculo
  print('Ingrese el radio del círculo:');
  double radio = double.parse(stdin.readLineSync()!);
  Circulo circulo = Circulo(radio);

  // Solicitar las dimensiones del rectángulo
  print('Ingrese el ancho del rectángulo:');
  double ancho = double.parse(stdin.readLineSync()!);
  print('Ingrese el alto del rectángulo:');
  double alto = double.parse(stdin.readLineSync()!);
  Rectangulo rectangulo = Rectangulo(ancho, alto);

  print("Área del círculo: ${circulo.calcularArea()}");
  print("Área del rectángulo: ${rectangulo.calcularArea()}");
}
