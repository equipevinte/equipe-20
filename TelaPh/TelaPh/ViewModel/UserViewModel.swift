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
    
    @Published var user: User?
    
    func addMoedas(valor: Int) {
        user?.moedas += valor
        //        user?.moedas = user?.moedas + valor
    }
    
    func comprarSkin(skin: DiceSkin) {
        if user?.moedas ?? 0 >= skin.preco {
            user?.skinsCompradas.append(skin)
            user?.moedas -= skin.preco
        } else {
            return
        }
    }
    
    func equiparSkin(skin: DiceSkin) {
        if user?.skinsCompradas.contains(where: { $0.id == skin.id }) ?? false {
            user?.skinAtual = skin
        }
    }
    
    func testandoViewModel() {
        print("ola equipe 20!!!!!!!!")
    }
}
