//
//  Configuracoes.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI

struct Configuracoes: View {
    @Environment(\.dismiss) var dismiss
    @State private var isDarkMode: Bool = false
    @State private var isSound: Bool = true
    @State private var AnimationDice: Bool = true
    @State private var AnimationCoin: Bool = true
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color.bege.ignoresSafeArea(.all, edges: .all)
                
                List{
                    Section{
                        Toggle("Modo Escuro", isOn: $isDarkMode)
                            .listRowBackground(Color.marrom)
                    }
                    
                    Section{
                        Toggle("Efeitos Sonoros", isOn: $isSound)
                            .listRowBackground(Color.marrom)
                    }
                    Section{
                        Toggle("Animação Dado", isOn: $AnimationDice)
                            .listRowBackground(Color.marrom)
                    }
                    Section{
                        Toggle("Animação Moeda", isOn: $AnimationCoin)
                            .listRowBackground(Color.marrom)
                    }
                }
            }
            .scrollContentBackground(.hidden)
            .listStyle(.grouped)
            .listSectionSpacing(5)
            .font(.title)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action: {
                        
                    }){
                        HStack{
                            Button(action: {
                                dismiss()
                            }, label: {
                                Image(systemName: "arrow.left")
                                    .font(.largeTitle)
                                    .foregroundStyle(.black)
                            })
                            
                            Text("Configuração")
                                .font(.title)
                                .foregroundStyle(.black)
                                .bold()
                                .padding()
                                .frame(width: 250)
                            
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    Configuracoes()
}
