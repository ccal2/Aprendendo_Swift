/*
 Crie um programa que, dados dois arrays de números, devolve um novo array contendo apenas os elementos
 ímpares de cada um.
*/

var array1 = [3, 8, 33, 60, 32]
var array2 = [23, 5, 2, 68]

var impares: [Int] = []

for i in 0...array1.count-1 {
    if (array1[i] % 2 != 0) {
        impares.append(array1[i])
    }
}

for i in 0...array2.count-1 {
    if (array2[i] % 2 != 0) {
        impares.append(array2[i])
    }
}

print("array1: \(array1)")
print("array2: \(array2)")

print("impares: \(impares)")
