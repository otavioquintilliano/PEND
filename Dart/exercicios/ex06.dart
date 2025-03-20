import 'dart:io';

void contagemRegressiva() {
print('Informe um número: ');
int numero = int.parse(stdin.readLineSync()!);  
  for (int i = 1; i <= numero; i++) {
    print("$i");
  }
  
}