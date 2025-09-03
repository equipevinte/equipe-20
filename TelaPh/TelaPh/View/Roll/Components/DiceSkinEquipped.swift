//
//  DiceSkinEquipped.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 03/09/25.
//

import SwiftUI

struct DiceSkinEquipped: View {
    let dado: String        // nome da imagem
    let tipo: TipoDado      // tipo do dado
    let equipado: Bool      // se está equipado
    @ObservedObject var rollViewModel = RollViewModel.shared
    
    var body: some View {
        VStack(spacing: 8){
            Image(dado)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                
            Text(TipoDado.d4.tipoDado(from: dado).rawValue.uppercased())
                .font(.title2)
                .bold()
            
            RectangleCount(
                count: rollViewModel.count(for: tipo),
                onDecrement: { rollViewModel.removeDado(tipo) },
                onIncrement: { rollViewModel.addDado(tipo) }
            )
        }
    }
}
    
    private struct RectangleCount: View {
        let count: Int
        let onDecrement: () -> Void
        let onIncrement: () -> Void
        
        var body: some View {
            ZStack {
                Rectangle()
                    .foregroundStyle(.marrom)
                    .frame(width: 100, height: 50)
                    .cornerRadius(10)
                HStack {
                    Button(action: {
                        onDecrement()
                    }) {
                        Image(systemName: "minus")
                            .foregroundStyle(.black)
                    }
                    
                    Text("\(count)")
                    
                    Button(action: {
                        onIncrement()
                    }) {
                        Image(systemName: "plus")
                            .foregroundStyle(.black)
                    }
                }
                .padding(.horizontal)
                .font(.title2)
            }
        }
    }
    



