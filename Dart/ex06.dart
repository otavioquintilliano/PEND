/*Programa: Contagem Regressiva
Autor:Otávio Quintilliano
Versão:1.0*/

import 'dart:io';

void main(){
  print("Digite um número:");
  int numero = int.parse(stdin.readLineSync()!);

  for(int i =1; i <= numero; i++){
    print(i);
  }
}