//: # Liskov Substituition Principle (Princípio da Substituição de Liskov)
//: O princípio de substituição de Liskov (LSP) afirma que objetos de uma classe derivada devem ser substituíveis por objetos da classe base sem afetar a funcionalidade do programa.
import Foundation

// Essa é uma simples classe para representar uma conta bancaria, nela podemos depositar, sacar e investir dinheiro

class BankAccount {
    
    var balance: Double = 0
    var invest: Double = 0
    
    func putMoney(amount: Double){
        balance += amount
    }
    
    func removeMoney(amount: Double){
        balance -= amount
    }
    
    func invest(amount: Double){
        balance -= amount
        invest += amount
    }
}

// Agora suponhamos que o banco possui outra modalidade de conta que é para estudante, porem nela não é possivel investir dinheiro

class StudentBankAccount: BankAccount{
    override func invest(amount: Double) {
        fatalError("Não é possivel investir na conta de estudante")
    }
}

/*:
 ## Conseguiu entender o problema?
 O princípio de substituição de Liskov afirma que os objetos de uma classe derivada devem ser substituíveis por objetos da classe base sem afetar o comportamento do programa. No entanto, no exemplo dado, a classe StudentBankAccount herda de BankAccount e sobrescreve o método invest, lançando um erro fatal. Isso significa que a classe StudentBankAccount não pode ser substituída pela classe base BankAccount em todos os contextos onde um BankAccount é esperado, violando assim o princípio de Liskov.
 
[Aplicando o LSP](@next)
 */
