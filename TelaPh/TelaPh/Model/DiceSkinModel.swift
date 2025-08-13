//
//  DiceSkinModel.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import Foundation

struct DiceSkin: Identifiable{
    var id: UUID = UUID()
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
var DadoSkinsGlobais = [DiceSkin(preco: 200, skinImages: ["PacoteMarinho"], nome: "Pacote Marinho", comprado: false, equipado: false),
    DiceSkin(preco: 200, skinImages: ["PacoteMarinho"], nome: "Pacote Marinho", comprado: false, equipado: false),
    DiceSkin(preco: 200, skinImages: ["PacoteMarinho"], nome: "Pacote Marinho", comprado: false, equipado: false),
    DiceSkin(preco: 200, skinImages: ["PacoteMarinho"], nome: "Pacote Marinho", comprado: false, equipado: false)]
