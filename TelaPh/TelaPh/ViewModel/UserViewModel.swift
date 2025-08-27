//
//  UserViewModel.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import Foundation

// TODO: ESTUDAR MELHOR ISSO AQUI

class UserViewModel: ObservableObject {
    
    static let shared = UserViewModel()
    
    private init() {}
    
    @Published var user: User?
    
    func createUser() {
        // quando tiver persistencia, colocar um condicional para que se tiver salvo um usuario essa funcao nao eh chamada, assim so sera criado um usuario uma vez
        let user = User(moedas: 0, skinAtual: DiceSkin(preco: 0, skinImages: "aaa", nome: "aa", comprado: true, equipado: false, skinsIndividual: []), skinsCompradas: [])
        self.user = user
        print("Usuário criado")
    }
    
    func addMoedas(valor: Int) {
        user?.moedas += valor
    }
    
    func comprarSkin(skin: DiceSkin) {
        if user?.moedas ?? 0 >= skin.preco {
            user?.skinsCompradas.append(skin)
            user?.moedas -= skin.preco
            print("Skin comprada com sucesso!")
            print("última skin comprada: \(user?.skinsCompradas.last?.nome)")
        } else {
            return
        }
    }
    
    func equiparSkin(skin: DiceSkin) {
        if user?.skinsCompradas.contains(where: { $0.id == skin.id }) ?? false {
            user?.skinAtual = skin
        }
    }
   
}


