//
//  SkinsRepository.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 27/08/25.
//
import SwiftUI

struct DiceSkinRepository  {
    static let PacoteMarinho = DiceSkin(preco: 200,
                                 skinImages: "PacoteMarinho",
                                 nome: "Pacote Marinho",
                                 comprado: false,
                                 equipado: false,
                                 skinsIndividual: ["d4Marinho", "d6Marinho", "d8Marinho", "d10Marinho", "d12Marinho", "d20Marinho"])
    
    static let PacoteMagma = DiceSkin(preco: 200,
                               skinImages: "PacoteMagma",
                               nome: "Pacote Magma",
                               comprado: false,
                               equipado: false,
                               skinsIndividual:["d4Magma", "d6Magma", "d8Magma", "d10Magma", "d12Magma", "d20Magma"] )
    
    static let PacoteMusgo = DiceSkin(preco: 200,
                               skinImages: "PacoteMusgo",
                               nome: "Pacote Musgo",
                               comprado: false,
                               equipado: false,
                               skinsIndividual:["d4Musgo", "d6Musgo", "d8Musgo", "d10Musgo", "d12Musgo", "d20Musgo"] )
    
    static let PacoteGalatico = DiceSkin(preco: 200,
                                  skinImages: "PacoteGalatico",
                                  nome: "Pacote Gálatico",
                                  comprado: false,
                                  equipado: false,
                                  skinsIndividual:["d4Galatico", "d6Galatico", "d8Galatico", "d10Galatico", "d12Galatico", "d20Galatico"] )
    
    static let PacoteOtimista =   DiceSkin(preco: 200,
                                    skinImages: "PacoteOtimista",
                                    nome: "Pacote Otimista",
                                    comprado: false,
                                    equipado: false,
                                    skinsIndividual:["d4Otimista", "d6Otimista", "d8Otimista", "d10Otimista", "d12Otimista", "d20Otimista"] )
    
    static let PacoteFlorest = DiceSkin(preco: 200,
                                 skinImages: "PacoteFlorest",
                                 nome: "Pacote Florest",
                                 comprado: false,
                                 equipado: false,
                                 skinsIndividual:["d4Florest", "d6Florest", "d8Florest", "d10Florest", "d12Florest", "d20Florest"] )
    
    static let all: [DiceSkin] = [PacoteMusgo, PacoteGalatico, PacoteOtimista, PacoteFlorest, PacoteMagma, PacoteMarinho]
}
