//
//  DiceSkinModel.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import Foundation
import SwiftUICore

struct DiceSkin: Identifiable, Hashable, Codable {
    var id: UUID = UUID()
    var preco: Int
    var skinImages: String //transfomei pra string unica
    var skinsIndividual: [String]
    var nome: String
    var comprado: Bool
    var equipado: Bool
    
    init(preco: Int, skinImages: String, nome: String, comprado: Bool, equipado: Bool, skinsIndividual: [String]){
        self.preco = preco
        self.skinImages = skinImages
        self.skinsIndividual = skinsIndividual
        self.nome = nome
        self.comprado = comprado
        self.equipado = equipado
        self.id = UUID()
    }
    
}

enum TipoDado: String, CaseIterable, Identifiable {
    case d4, d6, d8, d10, d12, d20
    
    var id: String { rawValue }
    
    var ImageName: String {
        switch self {
        case .d4: return "d4"
        case .d6: return "d6"
        case .d8: return "d8"
        case .d10: return "d10"
        case .d12: return "d12"
        case .d20: return "d20"
        }
    }
    
    var sides: Int {
        switch self {
        case .d4: return 4
        case .d6: return 6
        case .d8: return 8
        case .d10: return 10
        case .d12: return 12
        case .d20: return 20
        }
    }
    
    func tipoDado(from DiceString: String) -> TipoDado {
        if DiceString.contains("d4") { return .d4 }
        if DiceString.contains("d6") { return .d6 }
        if DiceString.contains("d8") { return .d8 }
        if DiceString.contains("d10") { return .d10 }
        if DiceString.contains("d12") { return .d12 }
        return .d20
    }
}


