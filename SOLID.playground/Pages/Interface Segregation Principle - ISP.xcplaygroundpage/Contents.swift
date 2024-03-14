//: # Interface Segregation Principle (Principio de Segregação de Interface)
//: Fazer com que uma classe não precise depender (se acoplar) de coisas das quais ele não precisa é justamente a ideia por trás do ISP. Se uma classe não é coesa, dividimo-la em duas ou mais classes, se uma interface não é coesa, também a dividimos em duas ou mais interfaces.
//: Note que já viemos usando esse principio anteriormente
protocol Printer {
    func printDocument() -> Bool
    func scanDocument() -> Bool
    func sendFax() -> Bool
}

// imagine agora que temos uma impressora simples, que somente imprime documentos. Nesse exemplo fiz com que os métodos retornassem um Bool por fims didáticos

class SimplePrinter: Printer {
    func printDocument() -> Bool {
        return true
    }
    
    func scanDocument() -> Bool {
        return false
    }
    
    func sendFax() -> Bool {
        return false
    }
    
}

/*:
 ## E ai, conseguiu pegar?
 Em vez de ter uma única interface que abranja todos os métodos possíveis, é preferível ter interfaces mais específicas e menores, que atendam apenas às necessidades dos clientes que as utilizam. Isso evita que as classes dependam de métodos que não utilizam, reduzindo assim o acoplamento.
 
[Aplicando o ISP](@next)
 */
