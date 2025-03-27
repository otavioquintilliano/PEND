/*Dupla: Bruno Gazola e Otávio Quintilliano

 Bruno Gazola Rodrigues e Otávio Quintilliano

Ao exibir o estado do jogo, o código usa um laço for para percorrer todas as posições do campo. Quando encontra a posição de jogador1, exibe o símbolo correspondente (🔫), e o mesmo ocorre para jogador2 (🏹). O alvo aleatório gerado também é exibido com o símbolo 🎯.

Dessa forma, o vencedor é determinado quando um dos jogadores atinge a posição do alvo. O código simula um jogo simples de tiro onde o primeiro a acertar o alvo vence.

 */

import 'dart:io';
import 'dart:math';

class JogoTiro {
  final int largura = 20;
  late int alvo;
  int jogador1 = 10;
  int jogador2 = 15;

  JogoTiro() {
    alvo = Random().nextInt(largura);
  }

  void exibirJogo() {
    for (int i = 0; i < largura; i++) {
      if (i == jogador1) {
        stdout.write('🔫');
      } else if (i == jogador2) {
        stdout.write('🏹');
      } else if (i == alvo) {
        stdout.write('🎯');
      } else {
        stdout.write('-');
      }
    }
    print('');
  }

  void moverJogador1(String direcao) {
    if (direcao == 'a' && jogador1 > 0) {
      jogador1--;
    } else if (direcao == 'd' && jogador1 < largura - 1) {
      jogador1++;
    }
  }

  void moverJogador2(String direcao) {
    if (direcao == 'a' && jogador2 > 0) {
      jogador2--;
    } else if (direcao == 'd' && jogador2 < largura - 1) {
      jogador2++;
    }
  }

  bool atirarJogador1() {
    return jogador1 == alvo;
  }

  bool atirarJogador2() {
    return jogador2 == alvo;
  }
}

void main() {
  JogoTiro jogo = JogoTiro();
  String? comando;

  print("\n=== JOGO DE TIRO ===");
  print(
      "Use 'a' para mover à esquerda, 'd' para mover à direita, 'f' para atirar!\n");

  while (true) {
    jogo.exibirJogo();
    stdout.write("Jogador 1 (🔫) ou Jogador 2 (🏹)? Digite 1 ou 2: ");
    String? jogadorEscolhido = stdin.readLineSync();

    if (jogadorEscolhido == '1') {
      stdout.write("Comando para Jogador 1: ");
      comando = stdin.readLineSync();

      if (comando == 'a' || comando == 'd') {
        jogo.moverJogador1(comando!);
      } else if (comando == 'f') {
        if (jogo.atirarJogador1()) {
          print("\n🎯 Jogador 1 acertou o alvo! Parabéns! 🎯\n");
          break;
        } else {
          print("\n💥 Jogador 1 errou! Tente novamente.\n");
        }
      } else {
        print("\nComando inválido! Use 'a', 'd' ou 'f'.\n");
      }
    } else if (jogadorEscolhido == '2') {
      stdout.write("Comando para Jogador 2: ");
      comando = stdin.readLineSync();

      if (comando == 'a' || comando == 'd') {
        jogo.moverJogador2(comando!);
      } else if (comando == 'f') {
        if (jogo.atirarJogador2()) {
          print("\n🎯 Jogador 2 acertou o alvo! Parabéns! 🎯\n");
          break;
        } else {
          print("\n💥 Jogador 2 errou! Tente novamente.\n");
        }
      } else {
        print("\nComando inválido! Use 'a', 'd' ou 'f'.\n");
      }
    } else {
      print(
          "\nEscolha inválida! Digite 1 para Jogador 1 ou 2 para Jogador 2.\n");
    }
  }
}
