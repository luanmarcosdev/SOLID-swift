//: ## Como resolvemos esse problema?
//: Para remediar essa violação, uma possível solução seria reestruturar a hierarquia de classes de modo que StudentBankAccount não herde de BankAccount. Como você poderá conferir no código abaixo as classes filhas agora respeita os contratos definidos pela classe pai e podemos afirmar que StudentBankAccount é uma BasicAccount, assim como BankAccount é uma BasicAccount e InvestorAccount
import Foundation

protocol BasicAccount {
    var balance: Double {get set}
    func putMoney(amount: Double)
    func removeMoney(amount: Double)
}

protocol InvestorAccount {
    var invest: Double {get set}
    func invest(amount: Double)
}

class BankAccount: BasicAccount, InvestorAccount {
    
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

class StudentBankAccount: BasicAccount {
    
    var balance: Double = 0
    
    func putMoney(amount: Double) {
        balance += amount
    }
    
    func removeMoney(amount: Double) {
        balance -= amount
    }
    
}
//: [Interface Segregation Principle - ISP](@next)
