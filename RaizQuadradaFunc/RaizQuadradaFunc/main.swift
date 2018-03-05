/*
 Crie uma função para calcular a raiz quadrada de um numero usando o trecho de código apresentado no
 início desta aula
*/

func raiz (N: Double, r: Double, margem: Double) -> Double {
    var R = r
    var continuar = true
    
    while continuar {
        R = (R + N/R)/2
        
        if !((R * R < N - margem) || (R * R > N + margem)) {
            continuar = false
        }
    }
    
    return R
}

func main () {
    let number  = 100.0
    
    print("A raiz quadrada de \(number) é: \(raiz(N: number, r: 4.0, margem: 1.0))")
}


main()
