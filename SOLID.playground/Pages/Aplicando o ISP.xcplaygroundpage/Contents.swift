//: ## Como resolvemos esse problema?
//: Vamos quebrar um único Protocol gordo em varios Protocols mais especificos e menores.
protocol Printer {
    func printDocument() -> Bool
}

protocol Scanner {
    func scanDocument() -> Bool
}

protocol Fax {
    func sendFax() -> Bool
}


class SimplePrinter: Printer {
    func printDocument() -> Bool {
        return true
    }
}

class FaxPrinter: Printer, Fax {
    func printDocument() -> Bool {
        return true
    }
    
    func sendFax() -> Bool {
        return true
    }
}

class ScannerPrinter: Printer, Scanner {
    func printDocument() -> Bool {
        return true
    }
    
    func scanDocument() -> Bool {
        return true
    }
    
}
//: ## Show de bola né? Agora vamos para o ultimo principio
//: [Dependency Inversion Principle - DIP](@next)
