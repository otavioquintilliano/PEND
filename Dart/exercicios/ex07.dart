/*Programa: soma de números
Autor:Otávio Quintilliano
Versão:1.0*/

import 'dart:io';

void somaNumeros(){
  print("DIGITE UM  NUMERO");
  int numero = int.parse(stdin.readLineSync()!);

  int soma = 0;
  int contador = 1;

  while (contador <= numero){
    soma += contador;
    contador++;
  }

  print("A soma de 1 ate $numero é: $soma");
}