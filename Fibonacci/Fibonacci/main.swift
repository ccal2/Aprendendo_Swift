/*
 A sequência de Fibonacci é dada por
 
     fib(0) = 1
     fib(1) = 1
     fib(n) = fib(n-1) + fib(n-2)
 
 Faça um programa que, dado um número n, calcula o fib(n).
*/

var number = 0

var valid = false
while !valid {
    if let input = readLine(), let innerNumber = Int(input) {
        valid = true
        
        number = innerNumber
    } else {
        print("Entrada inválida")
    }
}

var fib = 1
if !(number == 0 || number == 1) {
    var fib_1 = fib
    var fib_2 = fib
    
    for _ in 0...number-2 {
        fib = fib_1 + fib_2
        
        fib_2 = fib_1
        fib_1 = fib
    }
}

print("fib(\(number)) = \(fib)")
