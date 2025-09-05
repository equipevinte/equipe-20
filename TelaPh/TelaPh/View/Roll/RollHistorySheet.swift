//
//  RollHistorySheet.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 19/08/25.
//

import SwiftUI

struct RollHistorySheet: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var rollViewModel = RollViewModel.shared
    
    // Cores
    let vermelhoHist = Color(red: 94/255, green: 42/255, blue: 42/255).opacity(0.3)
    let azulHist = Color(red: 38/255, green: 70/255, blue: 83/255).opacity(0.3)
    let legenHist = Color(red: 204/255, green: 231/255, blue: 255/255)
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Histórico")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                Spacer()
                
                if !rollViewModel.historico.isEmpty {
                    Button(action: { rollViewModel.historico.removeAll() }) {
                        Image(systemName: "trash.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                            .padding(.trailing)
                    }
                }
                
                Button(action: { dismiss() }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        .padding(.trailing)
                }
            }
            .padding(.top)
            
            Divider()
            
            if rollViewModel.historico.isEmpty {
                Spacer()
                Image("DadoPensando")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                Spacer()
            } else {
                ScrollView {
                    VStack(spacing: 12) {
                        ForEach(Array(rollViewModel.historico.enumerated()), id: \.element.id) { index, rolagem in
                            let bgColor = index % 2 == 0 ? vermelhoHist : azulHist
                            
                            VStack(alignment: .leading, spacing: 5) {
                                // Dados rolados na ordem
                                Text(rolagem.results.map { String($0) }.joined(separator: ", "))
                                    .fontWeight(.medium)
                                    .foregroundColor(legenHist)
                                
                                // Soma detalhada
                                Text(rolagem.results.map { String($0) }.joined(separator: " + ") + " = \(rolagem.total)")
                                    .fontWeight(.bold)
                                    .foregroundColor(legenHist)
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(bgColor)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                    }
                    .padding(.vertical)
                }
            }
        }
        .background(Color.bege.ignoresSafeArea())
        .presentationDetents([.medium]) // Sheet ocupa metade da tela
    }
}
#Preview {
    RollHistorySheet()
}
