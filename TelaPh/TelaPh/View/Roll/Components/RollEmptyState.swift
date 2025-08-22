//
//  SelectDicesEmptyState.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 19/08/25.
//

import SwiftUI

struct RollEmptyState: View {
    @EnvironmentObject var selectDados: SelectDadoViewModel

    var body: some View {
        ZStack {
            Color.marromEscuro.opacity(0.45)
            if selectDados.selectedDice.isEmpty {
                Text("Por favor,\n escolha um dado\npara rolar.")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.marromEscuro)
            }
            else if selectDados.rollResult.isEmpty {
                Text("Por favor,\n inicie a rolagem.")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.marromEscuro)
            } else {
                ScrollView {
                    Text(selectDados.rollResult.map(String.init).joined(separator: " , "))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                }
            }
        }
        .cornerRadius(15)
        .frame(maxWidth: .infinity, maxHeight: 382)
    }
}
