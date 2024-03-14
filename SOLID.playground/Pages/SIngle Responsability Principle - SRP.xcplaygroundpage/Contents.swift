//: # Single Responsability Principle (Principio da Responsabilidade Única)
//: A classe deve ter uma e apenas uma razão para mudar, é o principio que nos lembra da coesão.
//: Repare em uma classe não coesa, uma mesma classe é responsavel por criar um novo usuário, enviar email, salvar o usuário e recuperar os usuarios cadastrados no banco de dados. Ela possui diversas responsabilidades e não para de crescer nunca.
 class User {
    
    func newUser(name: String, email: String, password: String) {
        // logica para novo usuario
    }
    
    func sendEmail(for name: User, subject: String, text: String){
        // logica para enviar o email
    }
    
    func saveUser(user: User){
        // logica para salvar banco de dados
    }
    
    func getUsers(){
        // logica para recuperar usuarios
    }
    
}
/*:
 Para resolvermos esse problema e estarmos em conformidade com o SRP devemos quebrar essa classe em diversas classes menores. Responsabilidades separadas, classes menores, mais faceis de serem mantidas, reutilizadas e etc.
 
 
 [Aplicando o SRP](@next)
 */
