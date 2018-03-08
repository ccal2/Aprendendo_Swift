/*
 Defina um struct Pokemon que guarda algumas informações relevantes de um pokemon:
     - nome
     - tipo (um ou dois)
     - pontos de HP totais
     - pontos de HP atuais
     - uma lista de ataques, que incluem um nome e um dano básico
 Um pokemon deve ser capaz de verificar se outro pokemon tem um tipo em comum com ele e deve ser capaz
 de atacar outro pokemon com um determinado ataque, infligindo dano no pokemon atacado.
 
 
 obs: adicionei várias outras coisas :)
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
    
    func jogada (contra p: inout Pokemon) -> Int{
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
            print("\n\(i)) Sair")
            
            // lê a entrada
            print() // \n
            let opcao = readIntNumber(min: 1, max: i)
            
            if opcao == i {
                return 1
            } else {
                // executa a opção escolhida
                self.ataca(&p, com: self.ataques[opcao-1])
                
                // narração
                print("\n\(self.nome) usou \(self.ataques[opcao-1].nome) contra \(p.nome)!")
            }
        }
        
        for _ in 1...3 {
            print() // \n
        }
        
        return 0
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

func readIntNumber (min: Int, max: Int, except: Int) -> Int {
    while true {
        if let input = readLine(), let number = Int(input), number >= min && number <= max, number != except {
            return number
        } else {
            print("Entrada inválida")
        }
    }
}

func readString () -> String {
    var valid = false
    
    while !valid {
        if let input = readLine() {
            valid = true
            return input
        } else {
            print("Entrada inválida")
        }
    }
}

func batalha (entre p1: inout Pokemon, e p2: inout Pokemon) -> Int {
    var pokemons = [p1, p2]
    
    print("Batalha entre \(pokemons[0].nome) e \(pokemons[1].nome)\n")

    var i = 0
    while pokemons[0].HPAtual != 0 && pokemons[1].HPAtual != 0 {
        print("\(pokemons[0].nome): HP = \(pokemons[0].HPAtual)/\(pokemons[0].HPTotal)")
        print("\(pokemons[1].nome): HP = \(pokemons[1].HPAtual)/\(pokemons[1].HPTotal)\n")
        
        if i%2 == 0 {
            if pokemons[0].jogada(contra: &pokemons[1]) == 1 {
                print("\nBaralha interrompida\n\n")
                return 1
            }
        } else {
            if pokemons[1].jogada(contra: &pokemons[0]) == 1 {
                print("\nBaralha interrompida\n\n")
                return 1
            }
        }
        
        i = i + 1
    }
    
    // narração
    if pokemons[0].HPAtual == 0 {
        print("\(pokemons[0].nome) não resistiu! \(pokemons[1].nome) é o vencedor dessa batalha!\n\n")
    } else {
        print("\(pokemons[1].nome) não resistiu! \(pokemons[0].nome) é o vencedor dessa batalha!\n\n")
    }
    p1 = pokemons[0]
    p2 = pokemons[1]
    
    print("\n\n")
    
    return 0
}

func printPokemon (_ pokemon: Pokemon) {
    print("Nome: \(pokemon.nome)")
    print("Tipos: \(pokemon.tipos)")
    print("HP: \(pokemon.HPAtual)/\(pokemon.HPTotal)")
    print("Ataques: ")
    for ataque in pokemon.ataques {
        print("\t\(ataque.nome) \t \(ataque.dano)")
    }
    print("\n\n")
}

func printPokemonList (_ pokemons: [Pokemon]) -> Int {
    var i = 1
    for pokemon in pokemons{
        print("\(i)) \(pokemon.nome)")
        
        i = i + 1
    }
    print("\n\(i)) Sair\n")
    
    return i
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
        print("1) Consultar lista de pokémon \n2) Cadastrar novo pokémon \n3) Remover um pokémon \n4) Editar um pokémon \n5) Reviver um pokémon \n6) Batalhar \n\n7) Sair\n")
        
        // lê a entrada
        opcao = readIntNumber(min: 1, max: 7)
        print("\n\n")
        
        switch opcao {
        case 1: // Consultar lista de pokémon
            // imprime uma lista com os nomes dos pokémon
            let qnt = printPokemonList(pokemons)
            let escolha = readIntNumber(min: 1, max: qnt)
            print("\n\n")
            
            // mostra as outras informações do pokémon escolhido
            if escolha != qnt {
                printPokemon(pokemons[escolha-1])
            }
            
        case 2: // Cadastrar novo pokémon
            print("Nome: ", terminator: "")
            let nome = readString()

            var tipos: [String] = []
            var exit = false
            while !exit {
                print("Tipo: ", terminator: "")
                let tipo = readString()
                tipos.append(tipo)
            
                print("Deseja cadastrar outro tipo? 1-Sim  2-Não")
                if readIntNumber(min: 1, max: 2) == 2 || tipos.count == 2{
                    exit = true
                }
            }
            
            print("HP: ", terminator: "")
            let HP = readIntNumber(min: 0, max: 200)
            
            var ataques: [Ataque] = []
            exit = false
            while !exit {
                print("Nome: ", terminator: "")
                let nome = readString()
                
                print("Dano: ", terminator: "")
                let dano = readIntNumber(min: 0, max: 100)
                
                ataques.append(Ataque(nome: nome, dano:dano))
                
                print("Deseja cadastrar outro ataque? 1-Sim  2-Não")
                if readIntNumber(min: 1, max: 2) == 2 {
                    exit = true
                }
            }
            
            pokemons.append(Pokemon(nome: nome, tipos: tipos, HP: HP, ataques: ataques))
            print("\(nome) foi ccriado!\n\n")
            
        case 3: // Remover um pokémon
            // imprime uma lista com os nomes dos pokémon
            let qnt = printPokemonList(pokemons)
            let escolha = readIntNumber(min: 1, max: qnt)
            print("\n\n")
            
            if escolha != qnt {
                let removed = pokemons.remove(at: escolha-1)
                print("\(removed.nome) foi removido!\n\n")
            }
            
        case 4: // Editar um pokémon
            // imprime uma lista com os nomes dos pokémon
            let qnt = printPokemonList(pokemons)
            let escolha = readIntNumber(min: 1, max: qnt)
            print("\n\n")
            
            if escolha != qnt {
                printPokemon(pokemons[escolha-1])
            }
            
            print("1) Alterar nome \n2) Adicionar tipo \n3) Remover tipo \n4) Alterar HP \n 5) Adicionar ataque \n6) Remover ataque \n7) Sair")
            let option = readIntNumber(min: 1, max: 7)
            print("\n\n")
            
            switch option {
            case 1: // Alterar nome
                print("Novo nome: ", terminator: "")
                let nome = readString()
                pokemons[escolha-1].nome = nome
                
                print("O nome foi alterado para \(nome)\n\n")
                
            case 2: // Adicionar tipo
                if pokemons[escolha-1].tipos.count < 2 {
                    print("Novo tipo: ", terminator: "")
                    let tipo = readString()
                    
                    pokemons[escolha-1].tipos.append(tipo)
                    print("\n\(tipo) foi adicionado!\n\n")
                } else {
                    print("O número máximo de tipos é 2!\n\n")
                }
                
            case 3: // Remover tipo
                // imprime lista de tipos do pokemon
                var i = 1
                for tipo in pokemons[escolha-1].tipos {
                    print("\(i)) \(tipo)")
                    i = i + 1
                }
                print("\n\(i)) Sair")
                let choice = readIntNumber(min: 1, max: i)
                
                if choice != i {
                    let removed = pokemons[escolha-1].tipos.remove(at: choice-1)
                    print("\n\(removed) foi removido!\n\n")
                }
            case 4: // Alterar HP
                print("Novo HP: ", terminator: "")
                let HP = readIntNumber(min: 0, max: 200)
                
                pokemons[escolha-1].HPTotal = HP
                pokemons[escolha-1].HPAtual = HP
                
                print("O HP foi alterado para \(HP)\n\n")
                
            case 5: // Adicionar ataque
                print("Nome do ataque: ", terminator: "")
                let nome = readString()
                
                print("Dano: ", terminator: "")
                let dano = readIntNumber(min: 0, max: 100)
                
                pokemons[escolha-1].ataques.append(Ataque(nome: nome, dano: dano))
                
                print("O ataque \(nome) de dano \(dano) foi adicionado!\n\n")
                
            case 6: // Remover ataque
                // imprime lista de ataques
                var i = 1
                for ataque in pokemons[escolha-1].ataques {
                    print("\(i)) \(ataque.nome) \t \(ataque.dano)")
                    i = i + 1
                }
                print("\(i)) Sair")
                let choice = readIntNumber(min: 1, max: i)
                
                if choice != i {
                    let removed = pokemons[escolha-1].ataques.remove(at: choice-1)
                    print("\(removed.nome) foi removido!\n\n")
                }
                
            default: // Sair
                break
            }
            
        case 5: // Reviver um pokémon
            // imprime uma lista com os nomes dos pokémon
            let qnt = printPokemonList(pokemons)
            let escolha = readIntNumber(min: 1, max: qnt)
            print("\n\n")
            
            if escolha != qnt {
                pokemons[escolha-1].revive()
                print("\(pokemons[escolha-1].nome) foi revivido!\n\n")
            }
            
        case 6: // Batalhar
            let qnt = printPokemonList(pokemons)
            let p1 = readIntNumber(min: 1, max: qnt)
            
            if p1 != qnt {
                let p2 = readIntNumber(min: 1, max: qnt, except: p1)
                print("\n\n")
                
                if p2 != qnt {
                    var pokemon1 = pokemons[p1-1]   // fiz isso pq tava dando erro
                    var pokemon2 = pokemons[p2-1]
                    
                    batalha(entre: &pokemon1, e: &pokemon2)
                    
                    pokemons[p1-1] = pokemon1   // fiz isso pq tava dando erro
                    pokemons[p2-1] = pokemon2
                }
            }
            
        default: // Sair
            break
        }
    }
}


main()
