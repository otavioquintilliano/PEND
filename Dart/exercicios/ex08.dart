/*Programa: Contagem Rgressiva
Autor:Otávio Quintilliano
Versão:1.0*/

import 'dart:io';

void tabuadaAutomatica(){
  print("Digite um número: ");
  int numero = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= 10; i++){
    print("$numero x $i = ${numero * i}");
  }
}