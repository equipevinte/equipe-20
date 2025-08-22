//
//  UserModel.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import Foundation

class User {
    var moedas: Int
    var skinAtual: DiceSkin
    var skinsCompradas: [DiceSkin]
    
    init(moedas: Int, skinAtual: DiceSkin, skinsCompradas: [DiceSkin]) {
        self.moedas = moedas
        self.skinAtual = skinAtual
        self.skinsCompradas = skinsCompradas
    }
}
