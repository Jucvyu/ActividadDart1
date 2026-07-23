// Se importa dart:io para poder usar stdin y stdout
import 'dart:io';

void main(List<String> arguments) {
  // Se obtiene la fecha en el momento de la ejecución del programa
  final fechaActual = DateTime.now();

  // Se obtiene el país en el que se encuentra el aprendiz
  const pais = 'Colombia';

  // Se solicita al aprendiz el nombre
  stdout.writeln('Ingresa el nombre: ');
  String? nombre = stdin.readLineSync();

  // Se solicita la edad al aprendiz
  stdout.writeln('Ingresa la edad: ');
  int? edad = int.parse(stdin.readLineSync()!);

  // Se solicita el centro de formación al aprendiz
  stdout.writeln('Ingresa el centro de formación: ');
  String? centroFormacion = stdin.readLineSync();

  // Se solicita el estado del aprendiz
  stdout.writeln('¿El aprendiz se encuentra activo? (S/N)');
  String? estado = stdin.readLineSync();

  var estadoAprendizaje = "No asignado.";
  if (estado == 'S'){
    estadoAprendizaje = "Activo";
  } else if (estado == 'N'){
    estadoAprendizaje = "Inactivo";
  } else {
    stdout.writeln('Error');
  }

  // Se solicitan 3 notas al aprendiz
  stdout.writeln('Ingrese la primera nota: ');
  double? nota1 = double.parse(stdin.readLineSync()!);
  stdout.writeln('Ingrese la segunda nota: ');
  double? nota2 = double.parse(stdin.readLineSync()!);
  stdout.writeln('Ingrese la tercera nota: ');
  double? nota3 = double.parse(stdin.readLineSync()!);

  // Se calcula el promedio de las notas
  double promedio = (nota1 + nota2 + nota3) / 3;

  /* 
  Acá se realiza la validación del promedio del aprendiz
  Si el promedio es mayor o igual a 3.5, se muestra datos del aprendiz y un mensaje de aprobación
  Si el promedio es menor a 3.5, se muestra datos del aprendiz y un mensaje de no aprobación, ademas muestra un mensaje de necesidad de apoyo
  */
  if (promedio >= 3.5){
    print('Fecha: $fechaActual');
    print('País: $pais');
    print("Nombre: $nombre");
    print("Edad: $edad");
    print("Centro de Formación: $centroFormacion");
    print("Estado: $estadoAprendizaje");
    print("Promedio: $promedio");

    print('El aprendiz aprobó el curso');

  } else if (promedio < 3.5){
    print('Fecha: $fechaActual');
    print('País: $pais');
    print("Nombre: $nombre");
    print("Edad: $edad");
    print("Centro de Formación: $centroFormacion");
    print("Estado: $estadoAprendizaje");
    print("Promedio: $promedio");

    print('El aprendiz no aprobó el curso');
    print('El aprendiz necesita apoyo');
  } else{
    stdout.writeln('Error');
  }

}