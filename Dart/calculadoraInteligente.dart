import 'dart:io';
import 'exercicios/barrel.dart';

void exibirMenu(){

 print('''
  1️⃣ **Exibir "Olá, Dart!"**

2️⃣ **Calcular a área de um retângulo**

3️⃣ **Verificar se um número é par ou ímpar**

4️⃣ **Comparar dois números**

5️⃣ **Converter nota para conceito**

6️⃣ **Exibir contagem progressiva**

7️⃣ **Somar todos os números até um valor especificado**

8️⃣ **Exibir a tabuada de um número**

9️⃣ **Sair do programa**
''');
}


void main(){
  int escolha;

do{
  exibirMenu();
  stdout.write("Escolha uma opção: ");
  escolha = int.parse(stdin.readLineSync()!);

  print("");

  switch(escolha){
    case 1: olaDart();break;
    case 2: areaRtangulo();break;
    case 3: parImpar();break;
    case 4: compararNumeros();break;
    case 5: notaConceito();break;
    case 6: contagemRegressiva();break;
    case 7: somaNumeros();break;
    case 8: tabuadaAutomatica();break;
    case 9: print("Saindo do programa.... Até logo!");break;
    default: print(("Opção inválida! Tente novamente.")) ;    
  }
}while (escolha != 9);
}