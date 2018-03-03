/*
 Faça um programa que lê um número entre 100 e 999 a partir do teclado e verifica se ele é
 divisível por 3. Se achar que foi fácil, resolva o problema sem usar o comando if.
*/

var valid = false

while valid == false {
    if let input = readLine(), let number = Int(input) {
        if (number >= 100 && number <= 999) {
            valid = true
            
            if (number % 3 == 0){
                print("É divisível por 3")
            } else {
                print("Não é divisível por 3")
            }
        } else {
            print("O número deve ser entre 100 e 999")
        }
    } else {
        print("Entrada inválida")
    }
}
