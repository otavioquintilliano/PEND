/*Programa: Contagem Rgressiva
Autor:Otávio Quintilliano
Versão:1.0*/

import 'dart:io';
import 'dart:math';

void jogoSecreto(){
  int numeroSecreto = Random().nextInt(100) + 1;
  int Tentativas = 0;
  int palpite = 0;

  print(("tente adivimhar o numero entre 1 e 100!"));

  while(palpite != numeroSecreto){
    print("digite seu palpite:");
    palpite = int.parse(stdin.readLineSync()!);
    Tentativas++;

    if(palpite > numeroSecreto){
      print("o numero é menor");
    }else if(palpite < numeroSecreto){
    print("O numero é maior");
  }else{
  print("Parabens! Voce acertou em $Tentativas tentativas."); 
}
  }
}