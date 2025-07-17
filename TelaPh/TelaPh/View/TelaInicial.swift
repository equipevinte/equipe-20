//
//  TelaInicial.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI

struct TelaInicial: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.bege.ignoresSafeArea()
                VStack{
                    HStack {
                        indicadorDeMoedas()

                        Spacer()
                        
                        NavigationLink(destination: Configuracoes()){
                            Image(systemName: "gearshape.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.marromEscuro)
                        }
                    }
                    .padding(23)
                    
                    VStack (alignment: .leading, spacing: 4){
                        Text("Soma")
                            .font(.title)
                            .frame(width: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                        HStack(){
                            ZStack(){
                                Rectangle()
                                    .foregroundStyle(.marromEscuro.opacity(0.45))
                                    .frame(width: 149, height: 51)
                                    .cornerRadius(10)
                                Text("1")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .frame(width: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                            
                            Spacer().frame(width: 110);                            Image(systemName: "eraser.line.dashed.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.marromEscuro)
                            
                            Image(systemName: "cube.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.marromEscuro)
                            
                        }
                        
                        ZStack{
                            Color.marromEscuro.ignoresSafeArea().opacity(0.45)
                            Text(" Porfavor,\n escolha um dado \n para \n começarmos.")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.marromEscuro.opacity(1))
                        }
                        .cornerRadius(15)
                        .frame(width: 359, height: 382)
                        .padding(20)
                    }
                    Button(action:{
                        
                    }){
                        Text("Rolar Dado")
                            .padding()
                            .frame(width: 212, height: 67)
                            .background(Color.marromEscuro)
                            .foregroundStyle(Color.bege)
                            .font(.title)
                            .cornerRadius(8)
                        
                    }
                    .padding(.bottom, 30)

                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
#Preview {
    TelaInicial()
}
