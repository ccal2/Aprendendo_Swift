/*
 Crie um programa que constrói uma tabela de multiplicação. Por exemplo, para um N = 4, a tabela de
 multiplicação correspondente é a seguinte:
 
                                     1      2       3       4
 
                             1       1      2       3       4
                             2       2      4       6       8
                             3       3      6       9       12
                             4       4      8       12      16
 
 Note que, em uma célula qualquer (x,y), o valor armazenado é igual a x * y. Seu programa deve receber o
 valor de N como entrada e produzir uma tabela como essa, organizada. Não se preocupe, porém, se o valor
 de N for grande demais para apresentar a tabela de forma arrumada.
 */

var number = 0

// lê e valida a entrada
var valid = false
while !valid {
    if let input = readLine(), let innerNumber = Int(input) {
        valid = true
        
        number = innerNumber
    }
}

// formatação: primeira linha
print("\t\t", terminator:"")
for i in 1...number {
    print("\(i)", terminator:"\t\t")
}

// formatação: segunda linha
print("\n\t   ", terminator:"")
for _ in 1...number {
    print("-------", terminator:"")
}
print() // \n

// imprime linha vertical e resultados
for i in 1...number {
    print("\(i)", terminator:"\t|\t")
    
    for j in 1...number {
        print("\(i*j)", terminator:"\t\t")
    }
    
    print() // \n
}
