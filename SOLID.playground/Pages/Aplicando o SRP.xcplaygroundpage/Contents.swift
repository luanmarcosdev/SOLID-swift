//: Uma única classe agora foi quebrada em três classes mais coesas com responsabilidades separadas. Agora estamos em conformidade com o SRP.
import Foundation

class User {
    
    func newUser(name: String, email: String, password: String) {
        // logica para novo usuario
    }
    
}
    
class Email {
    
    func sendEmail(for name: User, subject: String, text: String){
        // logica para enviar o email
    }
    
}

class DBUser {
    
    func saveUser(user: User){
        // logica para salvar banco de dados
    }
 
    func getUsers(){
        // logica para recuperar usuarios
    }
    
}
//: [OpenClosed Principle - OCP](@next)
