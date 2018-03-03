print("Jogador 1: ")
let numero1 = Int(readLine()!)!      // ênfase - readLine() vai retornar String (e não String?)
// ^^ optional binding - tira o ! do Int()

//if let numero1 = numero1 {          // vi na internet - se numero1 fosse Int?
    // ^^ optional binding
    print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")

    var contador = 0
    var numero2: Int
    print("Jogador 2: ")
    repeat {
        numero2 = Int(readLine()!)! // optional binding - tira o ! do Int()
        
        //if let numero2 = numero2 {
            if numero2 == numero1 {
                print("Você acertou!")
            } else if numero2 < numero1 {
                print("tente um número maior\n")
            } else {
                print("tente um número menor\n")
            }
        //}
        
        contador = contador + 1
    } while (numero2 != numero1 && contador < 3)
    
    if numero2 != numero1 {
        print("Game over")
    }
//}
