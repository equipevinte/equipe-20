//
//  DiceSkinRepository.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 31/07/25.
//

import SwiftUI

struct DiceSkinRepository {
    let pacoteMagma: DiceSkin = DiceSkin(
        preco: 200,
        skinImages: ["pacoteMagma_D4", "pacoteMagma_D8", "pacoteMagma_D12"],
        nome: "Pacote magma",
        comprado: false,
        equipado: false
    )
    
    let pacoteMarinho: DiceSkin = DiceSkin(
        preco: 400,
        skinImages: ["pacoteMarinho_D4", "pacoteMarinho_D8", "pacoteMarinho_D12"],
        nome: "Pacote marinho",
        comprado: false,
        equipado: false
    )
    
    // TODO: ADICIONAR OUTROS PACOTES
}
