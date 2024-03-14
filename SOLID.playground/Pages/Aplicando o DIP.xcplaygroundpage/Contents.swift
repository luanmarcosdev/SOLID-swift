//: ## Como podemos resolver esse problema?
//: Vimos que precisamos depender de uma abstração e não de uma implementação, acoplar-se a classes mais estáveis. Sendo assim Protocols são um bom caminho para isso. Veja que a nossa solução será a mesma que a oferecida para estar em conformidade com o LSP.

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

//: Como podemos ver  os cinco princípios do SOLID estão interligados e são complementares. Eles formam um conjunto de diretrizes que, quando seguidas, promovem um design de software mais flexível, extensível e de fácil manutenção. Juntos, esses princípios incentivam um design de software coeso, flexível, extensível e de fácil manutenção, contribuindo para a construção de sistemas de alta qualidade e escaláveis.
