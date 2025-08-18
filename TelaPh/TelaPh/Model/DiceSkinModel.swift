//
//  DiceSkinModel.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import Foundation
import SwiftUICore

struct DiceSkin: Identifiable{
    var id: UUID = UUID()
    var preco: Int
    var skinImages: [String]
    var skinsIndividual: [String]
    var nome: String
    var comprado: Bool
    var equipado: Bool
    
    init(preco: Int, skinImages: [String], nome: String, comprado: Bool, equipado: Bool, skinsIndividual: [String]){
        self.preco = preco
        self.skinImages = skinImages
        self.skinsIndividual = skinsIndividual
        self.nome = nome
        self.comprado = comprado
        self.equipado = equipado
        self.id = UUID()
    }

}
    class skinsGlobais: ObservableObject{
        @Published var DadoSkinsGlobais: [DiceSkin] = [
            DiceSkin(preco: 200,
                     skinImages: [String("PacoteMarinho")],
                     nome: "Pacote Marinho",
                     comprado: false,
                     equipado: false,
                     skinsIndividual: [String(format:"d4", "d6", "d8", "d10", "d12")]),
                        
            
            DiceSkin(preco: 200,
                     skinImages: [String("PacoteMagma")],
                     nome: "Pacote Magma",
                     comprado: false,
                     equipado: false,
                     skinsIndividual:[String(format: "d4", "d6", "d8", "d10", "d12")] ),
            DiceSkin(preco: 200,
                     skinImages: [String("PacoteOtimista")],
                     nome: "Pacote Otimista",
                     comprado: false,
                     equipado: false,
                     skinsIndividual:[String(format: "d4", "d6", "d8", "d10", "d12")] ),
        ]
    }



    func colorParaSkinName(_ nome: String) -> Color{
        switch nome{
        case "Pacote Marinho":
            return .azulMarinho
        case "Pacote Magma":
            return .vermelhoMagma
        default:
            return .black
        }
    }

