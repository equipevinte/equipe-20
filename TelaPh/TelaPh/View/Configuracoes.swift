//
//  Configuracoes.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI

struct Configuracoes: View {
    @State private var isDarkMode: Bool = false
    @State private var isSound: Bool = true
    @State private var AnimationDice: Bool = true
    @State private var AnimationCoin: Bool = true
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color.background.ignoresSafeArea(.all, edges: .all)
                
                List{
                    Section{
                        Toggle("Modo Escuro", isOn: $isDarkMode)
                            .listRowBackground(Color.backgroundMenuConfig)
                    }
                    
                    Section{
                        Toggle("Efeitos Sonoros", isOn: $isSound)
                            .listRowBackground(Color.backgroundMenuConfig)
                    }
                    Section{
                        Toggle("Animação Dado", isOn: $AnimationDice)
                            .listRowBackground(Color.backgroundMenuConfig)
                    }
                    Section{
                        Toggle("Animação Moeda", isOn: $AnimationCoin)
                            .listRowBackground(Color.backgroundMenuConfig)
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
                            NavigationLink(destination: TelaInicial()){
                                Image(systemName: "arrow.left")
                                    .font(.largeTitle)
                                    .foregroundStyle(.black)
                            }
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
        }
        
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}
    

#Preview {
    Configuracoes()
}
