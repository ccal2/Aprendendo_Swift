/*
 Faça um programa que, dado um array de números, soma os quadrados de todos os elementos desse
 array usando um laço for.
*/

var numbers = [2, 6, 8, 9, 1, 3]
var sum = 0

for number in numbers {
    sum = sum + number*number
}

print(numbers)
print("Soma dos quadrados = \(sum)")
