/*
 Crie um programa que, dado um array de números de ponto flutuante, remove dele todos aqueles cuja parte
 decimal é diferente de zero.
*/

var array = [3.0, 5.3, 9.2, 42.94, 7.0, 23.0, 4.91]

print(array)

var i = 0
while i < array.count {
    if !(array[i] == Double(Int(array[i]))) {
        array.remove(at: i)
    } else {
        i = i + 1
    }
}

print(array)
