//
//  TelaInicial.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI

struct TelaInicial: View {
    
    @EnvironmentObject var selectDados: SelectDadoViewModel
    @State private var showSheet: Bool = false
    
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color.bege.ignoresSafeArea()
                VStack {
                    // Top Bar
                    HStack {
                        indicadorDeMoedas()
                        
                        Spacer()
                        
                        NavigationLink(destination: Configuracoes()){
                            Image(systemName: "gearshape.fill").resizable().frame(width: 40, height: 40).foregroundColor(.marromEscuro)
                        }
                    }
                    .padding(23)
                    
                    VStack (alignment: .leading, spacing: 4) {
                        Text("Soma")
                            .font(.title)
                            .padding(.leading, 20)
                        
                        HStack {
                            ZStack {
                                Rectangle()
                                    .foregroundStyle(.marromEscuro.opacity(0.45))
                                    .frame(width: 149, height: 51)
                                    .cornerRadius(10)
                                Text("\(selectDados.historico.first?.total ?? 0)")
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            .padding(.leading, 20)
                            
                            Spacer()
                            
                            Button(action: {
                                selectDados.clearCurrentRoll()
                            }) {
                                Image(systemName: "eraser.line.dashed.fill")
                                    .font(.largeTitle)
                                    .foregroundStyle(.marromEscuro)
                            }
                            
                            Button(action: {
                                showSheet.toggle()
                            }) {
                                Image(systemName: "cube.fill")
                                    .font(.largeTitle)
                                    .foregroundStyle(.marromEscuro)
                            }
                        }
                        .padding(.trailing)
                    }
                    
                    if selectDados.selectedDice.isEmpty {
                        RollEmptyState()
                            .padding(20)
                    } else {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(selectDados.selectedDice.indices, id: \.self) { index in
                                VStack {
                                    Image(selectDados.selectedDice[index].ImageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                    
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 83, height: 46)
                                        .foregroundStyle(.bege)
                                        .overlay {
                                           Text("100")
                                        }
                                }
                            }
                        }
                        .padding()
                        .background {
                            Color.marromClaro
                        }
                        .cornerRadius(20)
                        .padding()
                    }
                    
                    Spacer()
                    
                    if selectDados.selectedDice.isEmpty || selectDados.hasRolled == true {
                        NavigationLink(destination: dados(), label: {
                            Text(selectDados.hasRolled == true ? "Nova rolagem" : "Escolher dados")
                                .padding()
                                .frame(height: 67)
                                .background(.marromEscuro)
                                .foregroundStyle(Color.bege)
                                .font(.title)
                                .cornerRadius(8)
                        })
                        .padding()
                    } else {
                        PrimaryButton(title: "Rolar dados", action: {
                            selectDados.rolarDado()
                        })
                        .disabled(selectDados.selectedDice.isEmpty)
                        .padding()
                    }
                }
            }
            .sheet(isPresented: $showSheet) {
                RollHistorySheet()
            }
        }
        
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TelaInicial()
        .environmentObject(SelectDadoViewModel())
}

