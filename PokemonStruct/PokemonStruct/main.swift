/*
 Defina um struct Pokemon que guarda algumas informações relevantes de um pokemon:
     - nome
     - tipo (um ou dois)
     - pontos de HP totais
     - pontos de HP atuais
     - uma lista de ataques, que incluem um nome e um dano básico
 Um pokemon deve ser capaz de verificar se outro pokemon tem um tipo em comum com ele e deve ser capaz
 de atacar outro pokemon com um determinado ataque, infligindo dano no pokemon atacado.
*/

import Foundation // sleep()

struct Ataque {
    var nome: String
    var dano: Int
}

struct Pokemon {
    var nome: String
    var tipos: [String]
    var HPTotal: Int
    var HPAtual: Int
    var ataques: [Ataque]
    
    init (nome: String, tipos: [String], HP: Int, ataques: [Ataque]) {
        self.nome = nome
        self.tipos = tipos
        self.HPTotal = HP
        self.HPAtual = HP
        self.ataques = ataques
    }
    
    mutating func addTipo (_ tipo: String) {
        if self.tipos.count < 2 {
            self.tipos.append(tipo)
        }
    }
    
    mutating func addAtaque (_ ataque: Ataque) {
        self.ataques.append(ataque)
    }
    
    func temTipoComum (com p: Pokemon) -> Bool {
        for tipo in self.tipos {
            for tipo2 in p.tipos {
                if tipo == tipo2 {
                    return true
                }
            }
        }
        
        return false
    }
    
    func ataca (_ p: inout Pokemon, com ataque: Ataque) {
        p.HPAtual -= ataque.dano
        
        if p.HPAtual < 0 {
            p.HPAtual = 0
        }
    }
    
    mutating func revive () {
        self.HPAtual = self.HPTotal
    }
    
    func jogada (contra p: inout Pokemon) {
        print("Turno do \(self.nome):")
        
        var i = 1
        
        // verifica se o pokemon tem ataque
        if self.ataques.count == 0 {
            print("\(p.nome) não possui ataques")
        } else {
            // imprime as opções de ataque
            for ataque in self.ataques {
                print("\(i)) \(ataque.nome) \t\(ataque.dano)")
                i = i + 1
            }
            
            // lê a entrada
            print() // \n
            let opcao = readIntNumber(min: 1, max: i-1)
            
            // executa a opção escolhida
            self.ataca(&p, com: self.ataques[opcao-1])
            
            // narração
            print("\n-----------------------------------------------------")
            print("\(self.nome) usou \(self.ataques[opcao-1].nome) contra \(p.nome)!")
            print("\n\n\n-----------------------------------------------------")
            sleep(2) // delay
        }
        
        for _ in 1...6 {
            print() // \n
        }
    }
}

func readIntNumber (min: Int, max: Int) -> Int {
    while true {
        if let input = readLine(), let number = Int(input), number >= min && number <= max {
            return number
        } else {
            print("Entrada inválida")
        }
    }
}

func batalha (entre p1: inout Pokemon, e p2: inout Pokemon) {
    var pokemons = [p1, p2]
    
    print("Batalha entre \(pokemons[0].nome) e \(pokemons[1].nome)\n")

    var i = 0
    while pokemons[0].HPAtual != 0 && pokemons[1].HPAtual != 0 {
        print("\(pokemons[0].nome): HP = \(pokemons[0].HPAtual)/\(pokemons[0].HPTotal)")
        print("\(pokemons[1].nome): HP = \(pokemons[1].HPAtual)/\(pokemons[1].HPTotal)\n")
        
        if i%2 == 0 {
            pokemons[0].jogada(contra: &pokemons[1])
        } else {
            pokemons[1].jogada(contra: &pokemons[0])
        }
        
        i = i + 1
    }
    
    // narração
    print("\n-----------------------------------------------------")
    if pokemons[0].HPAtual == 0 {
        print("\(pokemons[0].nome) não resistiu! \(pokemons[1].nome) é o vencedor dessa batalha!\n")
    } else {
        print("\(pokemons[1].nome) não resistiu! \(pokemons[0].nome) é o vencedor dessa batalha!\n")
    }
    print("\n\n\n-----------------------------------------------------")
    sleep(2) //  delay
}


func main () {
    let squirtle = Pokemon(nome: "Squirtle", tipos: ["water"], HP: 60, ataques: [Ataque(nome: "Rain Splash", dano: 10), Ataque(nome: "Shell Attack", dano: 40)])
    let charmander = Pokemon(nome: "Charmander", tipos: ["fire"], HP: 50, ataques: [Ataque(nome: "Scratch", dano: 10), Ataque(nome: "Ember", dano: 30)])
    let bulbasaur = Pokemon(nome: "Bulbasaur", tipos: ["grass"], HP: 60, ataques: [Ataque(nome: "Tackle", dano: 10), Ataque(nome: "Razor Leaf", dano: 30)])
    let pikachu = Pokemon(nome: "Pikachu", tipos: ["eletric"], HP: 60, ataques: [Ataque(nome: "Thundershock", dano: 10), Ataque(nome: "Tail Whap", dano: 20)])
    //var  = Pokemon(nome: "", tipos: [""], HP: , ataques: [Ataque(nome: "", dano: ), Ataque(nome: "", dano: )])
    
    var pokemons: [Pokemon] = [squirtle, charmander, bulbasaur, pikachu]
    
    var opcao = 0
    while opcao != 7 {
        // imprime o menu
        print("1) Consultar lista de pokémon \n2) Cadastrar novo pokémon \n3) Remover um pokémon \n4) Editar um pokémon \n5) Reviver um pokémon 6) Batalhar \n7) Sair")
        
        // lê a entrada
        opcao = readIntNumber(min: 1, max: 7)
        
        switch opcao {
        case 1:
            //
        case 2:
            //
        case 3:
            //
        case 4:
            //
        case 5:
            //
        case 6:
            //
        default:
            break
        }
    }
}


main()
