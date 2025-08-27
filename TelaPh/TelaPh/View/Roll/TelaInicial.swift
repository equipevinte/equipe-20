//
//  TelaInicial.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI

struct TelaInicial: View {
    @ObservedObject var rollViewModel: RollViewModel = .shared
    @ObservedObject var userViewModel: UserViewModel = .shared
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
                            .id(userViewModel.user?.moedas ?? 0)
                        
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
                                Text("\(rollViewModel.historico.first?.total ?? 0)")
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            .padding(.leading, 20)
                            
                            Spacer()
                            
                            Button(action: {
                                rollViewModel.clearCurrentRoll()
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
                    
                    if rollViewModel.selectedDice.isEmpty {
                        RollEmptyState()
                            .padding(20)
                    } else {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(rollViewModel.selectedDice.indices, id: \.self) { index in
                                VStack {
                                    Image(rollViewModel.selectedDice[index].ImageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                    
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 83, height: 46)
                                        .foregroundStyle(.bege)
                                        .overlay {
                                           Text("10")
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
                    
                    if rollViewModel.selectedDice.isEmpty || rollViewModel.hasRolled == true {
                        NavigationLink(destination: dados(), label: {
                            Text(rollViewModel.hasRolled == true ? "Nova rolagem" : "Escolher dados")
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
                            rollViewModel.rolarDado()
                            userViewModel.addMoedas(valor: 10)
                        })
                        .disabled(rollViewModel.selectedDice.isEmpty)
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

}

