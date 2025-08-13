//
//  TelaInicial.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI

struct PrimaryButton: View{
    let title: String
    let action: () -> Void
    
    var body: some View{
        Button(action: action)
        {
            Text(title)
                .padding()
                .frame(width: 212, height: 67)
                .background(.marromEscuro)
                .foregroundStyle(Color.bege)
                .font(.title)
                .cornerRadius(8)
        }
    }
}
struct TelaInicial: View {
    
    @EnvironmentObject var selectDados: SelectDadoViewModel
    @State private var showSheet: Bool = false
    
    var body: some View {
            ZStack {
                Color.bege.ignoresSafeArea()
                VStack {
                    // Top Bar
                    HStack {
                        // indicadorDeMoedas()
                        indicadorDeMoedas()
                        
                        Spacer()
                        NavigationLink(destination: Configuracoes()){
                            Image(systemName: "gearshape.fill").resizable().frame(width: 40, height: 40).foregroundColor(.marromEscuro)
                        }
                    } //hstack
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
                        .sheet(isPresented: $showSheet) {
                            
                            ZStack{
                                Color.bege.ignoresSafeArea()
                                
                                VStack{
                                    HStack{
                                        Text("Histórico")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .presentationDetents([.medium, .large])
                                            .padding()
                                        
                                        Spacer()
                                        Button(action:{
                                            selectDados.historico.removeAll()
                                        }){
                                           Image(systemName: "trash.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30 , height: 30)
                                                .foregroundStyle(.black)
                                                .padding()
                                        }
                                        Button(action: {
                                            showSheet = false
                                            //botão extra pra sair da sheet
                                        }){
                                          
                                            Image(systemName: "xmark.circle.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30 , height: 30)
                                                .foregroundColor(.black)
                                                .padding()
                                            
                                        }
                                    }
 
                                        Image("DadoPensando")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 250, height: 250)
                                    Spacer()
                                }
                            }//VstackSheet
                        }//zstackSheet
                        
                    }
                    
                    
                    ZStack {
                        Color.marromEscuro.opacity(0.45)
                        if selectDados.rolarResultado.isEmpty {
                            Text("Por favor,\n escolha um dado\npara rolar.")
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.marromEscuro)
                        } else {
                            ScrollView {
                                Text(selectDados.rolarResultado.map(String.init).joined(separator: " , "))
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .padding()
                            }
                        }
                    }//zsyack
                    .cornerRadius(15)
                    .frame(maxWidth: .infinity, maxHeight: 382)
                    .padding(20)
                    
                    
                    PrimaryButton(title: "Rolar Dados", action: {
                        selectDados.rolarDado(dados: selectDados.allDiceAsList)
                    })
                    
                    .disabled(selectDados.selectedDice.isEmpty)
                    .opacity(selectDados.selectedDice.isEmpty ? 1.0 : 1.0)
                    .padding(.bottom, 30)
                }
            }
          
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TelaInicial()
        .environmentObject(SelectDadoViewModel())
}

