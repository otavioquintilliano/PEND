/*Programa: Contagem Rgressiva
Autor:Otávio Quintilliano
Versão:1.0*/

import 'dart:io';

void main(){
  print("Digite um numero inteiro: ");
  int numero = int.parse(stdin.readLineSync()!);

  bool ehPrimo = true;

  if (numero < 2){
    ehPrimo = false;
  }else{
    for (int i = 2; i <= numero / 2; i++){
      if(numero % i == 0){
        ehPrimo = false;
        break;
      }
    }
  }

  if(ehPrimo){
    print("$numero é um numero primo");
  }else{
    print("$numero não é um numero primo.");
  }
}