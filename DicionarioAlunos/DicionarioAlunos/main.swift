/*
 Construa um cadastro de alunos. Para cada aluno, seu programa deve registrar CPF (único), nome e lista
 de disciplinas cursadas, com código, nome e semestre que foi cursada.
 
 Seu programa deve ter funções para gravar um aluno na memória, verificar se um aluno está registrado,
 com base em seu CPF, remover um aluno com base em seu CPF, cadastrar uma disciplina cursada e verificar
 se um aluno já cursou uma disciplina com determinado código.
*/

struct Aluno {
    var nome: String
    var disciplinas: [Disciplina] = []
}

struct Disciplina {
    var codigo: String
    var nome: String
    var semestre: String
}


func readInput () -> String {
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

func readCpf () -> String {
    var valid = false
    while !valid {
        if let input = readLine(), let _ = Int(input) {
            valid = true
            
            return input
        } else {
            print("Entrada inválida")
        }
    }
}

func gravaAluno () {
    print("CPF: ", terminator: "")
    let CPF = readCpf()
    
    print("Nome: ", terminator: "")
    let nome = readInput()
    
    var disciplinas: [Disciplina] = []
    while true {
        print("\nTem disciplina pra cadastrar? (s/n)")
        
        let resposta = readInput()
        if resposta == "n" {
            break
        }
        
        print("Código: ", terminator: "")
        let codigo = readInput()
        print("Nome: ", terminator: "")
        let nomeDisciplina = readInput()
        print("Semetre cursado: ", terminator: "")
        let semestre = readInput()
        
        disciplinas.append(Disciplina(codigo: codigo, nome: nomeDisciplina, semestre: semestre))
    }
    
    let aluno = Aluno(nome: nome, disciplinas: disciplinas)
    
    alunos[CPF] = aluno
}

func registrado (CPF: String) -> Bool {
    var found = false
    
    for key in alunos.keys {
        if key == CPF {
            found = true
            break
        }
    }
    
    return found
}

func removeAluno (CPF: String) -> Bool {
    if let _ = alunos.removeValue(forKey: CPF) {
        return true // removeu o aluno
    } else {
        return false // o aluno não era cadastrado
    }
}

func cadastraDisciplina (CPF: String, cod: String, nome: String, semestre: String){
    alunos[CPF]?.disciplinas.append(Disciplina(codigo: cod, nome: nome, semestre: semestre))
}

func cursou (CPF: String, cod: String) -> Bool {
    var found = false
    
    if let disciplinas = alunos[CPF]?.disciplinas{
        for disciplina in disciplinas {
            if disciplina.codigo == cod {
                found = true
                break
            }
        }
    }
    
    return found
}

func printMenu () {
    print("1) Cadastrar aluno \n2) Verificar se o aluno está registrado \n3) Remover aluno \n4) Cadastrar disciplina cursada \n5) Verificar se o aluno já cursou uma disciplina \n6) Sair\n")
}


var alunos: [String:Aluno] = [:]


func main () {
    var opcao = -1
    
    while opcao != 6 {
        printMenu()
        opcao = readIntInput()
        
        switch opcao {
        case 1:
            gravaAluno()
            
            print() // \n
        case 2:
            print("CPF: ", terminator: "")
            let CPF = readCpf()
            print() // \n
            
            if registrado(CPF: CPF) {
                print("O aluno de CPF \(CPF) está registrado")
            } else {
                print("O aluno de CPF \(CPF) não está registrado")
            }
            
            print() // \n
        case 3:
            print("CPF: ", terminator: "")
            let CPF = readCpf()
            print() // \n
            
            if removeAluno(CPF: CPF) {
                print("O aluno de CPF \(CPF) foi removido")
            } else {
                print("O aluno de CPF \(CPF) não está registrado")
            }
            
            print() // \n
        case 4:
            print("CPF: ", terminator: "")
            let CPF = readCpf()
            
            if registrado(CPF: CPF) {
                print("Código: ", terminator: "")
                let codigo = readInput()
                print("Nome: ", terminator: "")
                let nome = readInput()
                print("Semestre cursado: ", terminator: "")
                let semestre = readInput()
                
                cadastraDisciplina(CPF: CPF, cod: codigo, nome: nome, semestre: semestre)
                print("A disciplina de cógigo \(codigo) foi cadastrada no aluno de CPF \(CPF)")
            } else {
                print("O aluno de CPF \(CPF) não está registrado")
            }
            
            print() // \n
        case 5:
            print("CPF: ", terminator: "")
            let CPF = readCpf()
            
            if registrado(CPF: CPF) {
                print("Código: ", terminator: "")
                let codigo = readInput()
                
                if cursou(CPF: CPF, cod: codigo) {
                    print("O aluno de CPF \(CPF) já cursou a disciplina de cógigo \(codigo)")
                } else {
                    print("O aluno de CPF \(CPF) não cursou a disciplina de cógigo \(codigo)")
                }
            } else {
                print("O aluno de CPF \(CPF) não está registrado")
            }
            
            print() // \n
        case 6:
            print() // \n
        default:
            print("Entrada inválida\n")
        }
    }
}

//////////

main()
