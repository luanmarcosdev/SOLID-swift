//: # Open/Closed Principle (Princípio do “Aberto para Extensão/Fechado para Modificação)
//: Esse conceito nos ajuda a ter classes coesas e que evoluam mais fácil. A idéia é que suas classes sejam abertas para extensão, ou seja, estender o comportamento delas deve ser fácil. Mas ao mesmo tempo elas devem ser fechadas para alteração, ou seja, não deve ser modificada (ter seu código alterado) o tempo todo.
import Foundation

class Rectangle {
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

class Circle {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
}

class Calculate {
    func totalArea(shapes: [Any]) -> Double {
        var sum: Double = 0
        for shape in shapes {
            if let rectangle = shape as? Rectangle {
                sum += rectangle.width * rectangle.height
            } else if let circle = shape as? Circle {
                sum += Double.pi * circle.radius * circle.radius
            } // Aqui você teria que adicionar novas condições para cada novo tipos de forma que criar
        }
        return sum
    }
}
/*:
 ## Qual o erro do código acima?
 Toda vez que houver a necessidade de adiconar uma nova classe e quisermos calcular sua área com o método totalArea, vamos precisar modificar a classe Calculate e isso quebra o príncipio de Aberto e Fechado.
 
[Aplicando o OCP](@next)
 */
