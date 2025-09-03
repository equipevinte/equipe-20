//
//  DiceLazy.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 03/09/25.
//

import SwiftUI

struct DiceLazy: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var rollViewModel = RollViewModel.shared
    @ObservedObject var userVm = UserViewModel.shared
    
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            if let skinAtual = userVm.user?.skinAtual {
                ForEach(skinAtual.skinsIndividual, id: \.self) { dadoString in
                    DiceSkinEquippedWrapper(dadoString: dadoString)
                }
            }
        }
    }
}

struct DiceSkinEquippedWrapper: View {
    let dadoString: String
    
    var body: some View {
        let tipo = TipoDado.d4.tipoDado(from: dadoString)
        DiceSkinEquipped(
            dado: dadoString,
            tipo: tipo,
            equipado: true
        )
    }
}

