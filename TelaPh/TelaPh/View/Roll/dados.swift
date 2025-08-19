//
//  dados.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI

struct dados: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: SelectDadoViewModel
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
            ZStack {
                Color.bege.ignoresSafeArea()
                
                VStack(spacing: 30) {
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(TipoDado.allCases, id: \.self) { dado in
                            VStack {//dado
                                Image(dado.ImageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                
                                Text(dado.rawValue.uppercased())
                                    .font(.title2)
                                    .bold()
                                
                                RectangleCount(
                                    count: viewModel.count(for: dado),
                                    onDecrement: { viewModel.removeDado(dado) },
                                    onIncrement: { viewModel.addDado(dado) }
                                )
                            }
                        }
                    }
                    .padding()
                    
                    Text("Modificador")
                        .font(.largeTitle)
                        .bold()
                    
                    Modificator()
                    
                    
                        Spacer()
                        Button(action: {
                            dismiss()
                            viewModel.hasRolled = false
                        }){
                            Text("Confirmar")
                                .font(.title)
                                .foregroundStyle(.bege)
                                .padding(15)
                                .cornerRadius(8)
                                .background{
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundStyle(.marromEscuro)
                                    
                                }
                                .disabled(viewModel.selectedDice.isEmpty)
                                .opacity(viewModel.selectedDice.isEmpty ? 0 : 1)
                        
                    }
                    Spacer()
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
    
    private struct Modificator: View {
        @State var contador: Int = 0
        var body: some View {
            ZStack {
                Rectangle()
                    .foregroundStyle(.marrom)
                    .frame(width: 150, height: 50)
                    .cornerRadius(10)
                HStack {
                    Button(action: {
                        if contador > 0 {
                            contador -= 1
                        }
                    }) {
                        Image(systemName: "minus")
                            .foregroundStyle(.black)
                    }
                    
                    Text("\(contador)")
                    
                    Button(action: {
                        contador += 1
                    }) {
                        Image(systemName: "plus")
                            .foregroundStyle(.black)
                    }
                }
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    dados()
        .environmentObject(SelectDadoViewModel())
}
