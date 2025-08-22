//
//  DiceSkinModel.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import Foundation
import SwiftUICore

struct DiceSkin: Identifiable, Hashable{
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
                     skinsIndividual: ["d4Marinho", "d6Marinho", "d8Marinho", "d10Marinho", "d12Marinho", "d20Marinho"]),
                        
            
            DiceSkin(preco: 200,
                     skinImages: [String("PacoteMagma")],
                     nome: "Pacote Magma",
                     comprado: false,
                     equipado: false,
                     skinsIndividual:["d4Magma", "d6Magma", "d8Magma", "d10Magma", "d12Magma", "d20Magma"] ),
            DiceSkin(preco: 200,
                     skinImages: [String("PacoteMusgo")],
                     nome: "Pacote Musgo",
                     comprado: false,
                     equipado: false,
                     skinsIndividual:["d4Musgo", "d6Musgo", "d8Musgo", "d10Musgo", "d12Musgo", "d20Musgo"] ),
            DiceSkin(preco: 200,
                     skinImages: [String("PacoteGalatico")],
                     nome: "Pacote Gálatico",
                     comprado: false,
                     equipado: false,
                     skinsIndividual:["d4Galatico", "d6Galatico", "d8Galatico", "d10Galatico", "d12Galatico", "d20Galatico"] ),
            DiceSkin(preco: 200,
                     skinImages: [String("PacoteOtimista")],
                     nome: "Pacote Otimista",
                     comprado: false,
                     equipado: false,
                     skinsIndividual:["d4Otimista", "d6Otimista", "d8Otimista", "d10Otimista", "d12Otimista", "d20Otimista"] ),
            DiceSkin(preco: 200,
                     skinImages: [String("PacoteFlorest")],
                     nome: "Pacote Florest",
                     comprado: false,
                     equipado: false,
                     skinsIndividual:["d4Florest", "d6Florest", "d8Florest", "d10Florest", "d12Florest", "d20Florest"] ),
        ]
    }

    func colorParaSkinName(_ nome: String) -> Color{
        switch nome{
        case "Pacote Marinho":
            return .azulMarinho
        case "Pacote Magma":
            return .vermelhoMagma
        case "Pacote Otimista":
            return .vermelho
        case "Pacote Musgo":
            return .verdemusgo
        case "Pacote Gálatico":
            return .roxogalatico
        case "Pacote Florest":
            return .verdeFlorest
        default:
            return .black
        }
    }

