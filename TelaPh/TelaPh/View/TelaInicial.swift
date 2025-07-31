//
//  TelaInicial.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI

struct TelaInicial: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.background.ignoresSafeArea()
                VStack {
                    VStack (alignment: .leading, spacing: 4) {
                        Text("Soma")
                            .font(.title)
                            .frame(width: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                        HStack() {
                            ZStack() {
                                Rectangle()
                                    .foregroundStyle(.square.opacity(0.45))
                                    .frame(width: 149, height: 51)
                                    .cornerRadius(10)
                                Text("1")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .frame(width: .infinity, alignment: .leading)
                            
                            Spacer()
                            Image(systemName: "eraser.line.dashed.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.square)
                            
                            Image(systemName: "cube.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.square)
                            
                        }
                        .padding(.horizontal)
                        
                        ZStack{
                            Color.square.ignoresSafeArea().opacity(0.45)
                            Text(" Porfavor,\n escolha um dado \n para \n começarmos.")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.square.opacity(1))
                        }
                        .cornerRadius(15)
                        .frame(maxWidth: .infinity, maxHeight: 382)
                        .padding(20)
                    }
                    Button(action:{
                        
                    }){
                        Text("Rolar Dado")
                            .padding()
                            .frame(width: 212, height: 67)
                            .background(Color.square)
                            .foregroundStyle(Color.background)
                            .font(.title)
                            .cornerRadius(8)
                        
                    }
                    .padding(.bottom, 30)
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        NavigationLink(destination: Configuracoes()){
                            Image(systemName: "gearshape.fill")
                                .foregroundStyle(.square)
                                .font(.largeTitle)
                        }
                    }
                }
            }
            .toolbar{
                ToolbarItemGroup(placement: .bottomBar) {
                    Button(action: {}){
                        VStack{
                            NavigationLink(destination: dados()){
                                Image(systemName: "dice.fill")
                                    .font(.title)
                                    .foregroundStyle(.square)
                                    .padding()
                                    .frame(width: 150)
                            }
                            Text("Dados")
                                .font(.title3)
                                .foregroundStyle(.square)
                            
                        }
                    }
                    Button(action: {}){
                        VStack{
                            NavigationLink(destination: Loja()) {
                                Image(systemName: "storefront.fill")
                                    .font(.title)
                                    .foregroundStyle(.square)
                                    .padding()
                                    .frame(width: 150)
                            }
                                Text("Loja")
                                    .font(.title3)
                                    .foregroundStyle(.square)
                            
                            }
                    }
                    .toolbarBackground(.visible, for: .bottomBar)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    TelaInicial()
}
