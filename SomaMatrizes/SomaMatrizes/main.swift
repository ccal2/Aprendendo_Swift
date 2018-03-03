/*
 Defina uma função que recebe duas listas de listas de números com N elementos cada representando
 matrizes N x N. Sua função deve realizar a soma dessas matrizes e devolvê-la como resultado.
*/

func readIntInput () -> Int {
    var valid = false
    while !valid {
        if let input = readLine(), let number = Int(input) {
            valid = true
            
            return number
        } else {
            print("Entrada inválida")
        }
    }
}

func initMatrix (_ size: Int) -> [[Int]] {
    var matrix: [[Int]] = [[]]
    
    for i in 0...size-1 {
        matrix.append([0])
        
        for _ in 0...size-1 {
            matrix[i].append(0)
        }
    }
    
    return matrix
}

func readMatrix (_ size: Int) -> [[Int]] {
    var matrix = initMatrix(size)
    
    for i in 0...size-1 {
        print("linha \(i):")
        
        for j in 0...size-1 {
            matrix[i][j] = readIntInput()
        }
    }
    
    print() // \n
    
    return matrix
}

func sumMatrix (m1: [[Int]], m2: [[Int]], size: Int) -> [[Int]] {
    var result = initMatrix(size)
    
    for i in 0...size-1 {
        for j in 0...size-1 {
            result[i][j] = m1[i][j] + m2[i][j]
        }
    }
    
    return result
}

func printMatrix (_ matrix: [[Int]], _ size: Int) {
    for i in 0...size-1 {
        for j in 0...size-1 {
            print(matrix[i][j], terminator: "\t")
        }
        print() // \n
    }
}

func main () {
    print("N = ", terminator: "")
    let size = readIntInput()
    
    print("Matriz 1:")
    let matrix1 = readMatrix(size)
    print("\nMatriz 2:")
    let matrix2 = readMatrix(size)
    
    print("Matriz 1:")
    printMatrix(matrix1, size)
    print() // \n
    print("Matriz 2:")
    printMatrix(matrix2, size)
    print() // \n
    
    print("Matriz 1 + Matriz 2:")
    printMatrix(sumMatrix(m1: matrix1, m2: matrix2, size: size), size)
}

main()
