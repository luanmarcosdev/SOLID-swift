//: # Dependency Inversion Principle (Principio de Inversão de Dependencia)
//: Abstrações não devem depender de detalhes. Detalhes devem depender de abstrações. Isso é o que chamamos de DIP. A idéia é: sempre que uma classe for depender de outra, ela deve depender sempre de outro módulo mais estável do que ela mesma.
//: Note que também já viemos utilizando esse principio anteriormente, para esse exemplo vamos usar o mesmo exemplo da conta bancaria.
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

class StudentBankAccount: BankAccount{
    override func invest(amount: Double) {
        fatalError("Não é possivel investir na conta de estudante")
    }
}

/*:
 ## Qual o erro de acordo com o DIP?
 A StudentBankAccount está dependendo de uma implementação e não de uma abstração
 
[Aplicando o DIP](@next)
 */
