//
//  User.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 31/07/25.
//

import SwiftUI

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
