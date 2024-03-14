
//: ## Como resolvemos esse problema?
//:Podemos criar um protocolo que essas classes implementam que tenha a assinatura 'area() -> Double' e na classe Calculate criaremos  um Array com esse protocolo, isso significa que só podem fazer parte deste array as classes que assinam esse protocolo e desse modo conseguimmos deixar ela aberta para extensão e fechada para modificações.
import Foundation

protocol Shape {
    func area() -> Double
}

class Rectangle: Shape {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func area() -> Double {
        return width * height
    }
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
}

class Calculate {
    func totalArea(shapes: [Shape]) -> Double {
        var sum: Double = 0
        for shape in shapes {
            sum += shape.area()
        }
        return sum
    }
}
//: [Liskov Substituition Principle - LSP](@next)
