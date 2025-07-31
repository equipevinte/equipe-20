//
//  DiceSkinModel.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 31/07/25.
//

import SwiftUI

class DiceSkin {
    var id: UUID
    var preco: Int
    var skinImages: [String]
    var nome: String
    var comprado: Bool
    var equipado: Bool
    
    init(preco: Int, skinImages: [String], nome: String, comprado: Bool, equipado: Bool) {
        self.preco = preco
        self.skinImages = skinImages
        self.nome = nome
        self.comprado = comprado
        self.equipado = equipado
        self.id = UUID()
    }
}
