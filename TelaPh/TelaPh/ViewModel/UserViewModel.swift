//
//  UserViewModel.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import Foundation
import SwiftData

// TODO: ESTUDAR MELHOR ISSO AQUI

class UserViewModel: ObservableObject {
    
    static let shared = UserViewModel()
    
    private init() {}
    
    @Published var user: User?
    
    func createUser(context: ModelContext) {
        do{
            var descriptor = FetchDescriptor<User>()
            descriptor.fetchLimit = 1
            if let user = try context.fetch(descriptor).first{
                self.user = user
                return
            }
        }catch{
            print("Erro ao buscar usuario: \(error)")
        }
        let user = User(moedas: 0,
                        skinAtual:  DiceSkinRepository.PacoteDefault,
                        skinsCompradas: [])
        
        self.user = user
        print("Usuário criado")
        context.insert(user)
        do{
            try context.save()
        } catch{
            print("Erro ao salvar usuário: \(error)")
        }
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
        guard let user = user else { return }
        
        // Desequipar todas as skins compradas + default
        if !user.skinsCompradas.contains(where: { $0.id == DiceSkinRepository.PacoteDefault.id }) {
            user.skinsCompradas.insert(DiceSkinRepository.PacoteDefault, at: 0)
        }
        
        for i in 0..<user.skinsCompradas.count {
            user.skinsCompradas[i].equipado = (user.skinsCompradas[i].id == skin.id)
        }
        
        user.skinAtual = skin
    }

}
extension UserViewModel {
    var skinsParaMostrar: [DiceSkin] {
        guard let user else { return [] }

        var skins: [DiceSkin] = []

        // Sempre inclui a skin atual primeiro
        skins.append(user.skinAtual)

        // Adiciona as skins compradas que não são a skin atual nem duplicadas
        for skin in user.skinsCompradas {
            if skin.id != user.skinAtual.id && !skins.contains(where: { $0.id == skin.id }) {
                skins.append(skin)
            }
        }

        // Se o usuário não comprou nada além do default, ele já está incluso como skinAtual
        return skins
    }
}
