import 'dart:io';

void main() {
  while (true) {
    print('\nMenu Interativo:');
    print('1️ Exibir "Olá, Dart!"');
    print('2️ Calcular a área de um retângulo');
    print('3️ Verificar se um número é par ou ímpar');
    print('4️ Comparar dois números');
    print('5️ Converter nota para conceito');
    print('6️ Exibir contagem progressiva');
    print('7️ Somar todos os números até um valor especificado');
    print('8️ Exibir a tabuada de um número');
    print('9️ Sair do programa');
    stdout.write('Escolha uma opção: ');

    var choice = stdin.readLineSync();
    if (choice == 9) {
      print('Saindo do programa');
      break;
    }

    switch (choice) {
      case "1":
        print('Olá, Dart!');
        break;
      case "2":
        calculadoraRetangulo();
        break;
      case "3":
        parImpar();
        break;
      case "4":
        compararNumeros();
        break;
      case "5":
        verNota();
        break;
      case "6":
        contagemRegressiva();
        break;
      case "7":
        soma();
        break;
      case "8":
        multiplicacao();
        break;
      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}
