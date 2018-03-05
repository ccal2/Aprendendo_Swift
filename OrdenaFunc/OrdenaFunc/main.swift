/*
 Defina uma função que, dado um vetor de números do tipo Double, devolve esse vetor ordenado em ordem
 crescente.
*/

func ordena (_ vetor: [Double]) -> [Double] {
    var menor: Double
    var array = vetor
    
    for i in 0...array.count-2 {
        menor = array[i]
        for j in i...array.count-1 {
            if (array[j] < menor) {
                menor = array[j]
                array[j] = array[i]
                array[i] = menor
            }
        }
    }
    
    return array
}

func main () {
    let vetor = [3.8, 2.5, 6.7, 0.1, -2.6]
    
    print(vetor)
    print(ordena(vetor))
}


main()
