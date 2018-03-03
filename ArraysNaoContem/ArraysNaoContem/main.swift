/*
 Crie um programa que, dados dois arrays A1 e A2 de números, constrói um array  contendo apenas os
 elementos de A1 que não estão em A2.
*/

var array1 = [3, 5, 8, 6, 2]
var array2 = [0, 6, 1, -3, 7, 8]

var array3: [Int] = []

for i in 0...array1.count-1 {
    var contem = false
    
    for j in 0...array2.count-1 {
        if array1[i] == array2[j] {
            contem = true
            break
        }
    }
    
    if !contem {
        array3.append(array1[i])
    }
}

print(array1)
print(array2)

print(array3)
