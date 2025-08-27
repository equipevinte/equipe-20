//
//  SkinToName.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 27/08/25.
//
import SwiftUI

func colorParaSkinName(_ nome: String) -> Color{
    switch nome {
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
    case "Pacote Padrão":
        return .white
    default:
        return .black
    }
}
