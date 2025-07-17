//
//  dados.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI

struct dados: View {
    var body: some View {
        NavigationView{
           
            ZStack{
                Color.background.ignoresSafeArea()
                VStack{
                 
                    ZStack{
                        Color.background.ignoresSafeArea(.all )
                            .frame(width: 500, height: 500)
                            .padding(.bottom, 100)
                        ZStack{
                            VStack{
                                HStack{
                                    VStack{
                                        Image("DadoD4")
                                        Text("D4")
                                            .font(.title2)
                                            .bold()
                                        RectangleCount()
                                        
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                                    VStack{
                                        Image("DadoD6")
                                        Text("D6")
                                            .font(.title2)
                                            .bold()
                                        RectangleCount()
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20));
                                    VStack{
                                        Image("DadoD8")
                                        Text("D8")
                                            .font(.title2)
                                            .bold()
                                        RectangleCount()
                                    }
                                }
                                
                                .padding(.bottom, 50)
                                HStack{
                                    VStack{
                                        Image("DadoD10")
                                        Text("D10")
                                            .font(.title2)
                                            .bold()
                                        RectangleCount()
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                                    VStack{
                                        Image("DadoD12")
                                            .resizable()
                                            .frame(width: 100, height: 100)
                                        Text("D12")
                                            .font(.title2)
                                            .bold()
                                        RectangleCount()
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20)) ;
                                    VStack{
                                        Image("DadoD20")
                                        Text("D20")
                                            .font(.title2)
                                            .bold()
                                        ZStack{
                                            RectangleCount()
                                            
                                        }
                                    }
                                }
                            }
                            
                        }
                        
                    }
                    
                    Text("Modificador")
                        .font(.largeTitle)
                        .bold()
                    Modificator()
                        
                        .toolbar{
                            ToolbarItem(placement: .navigationBarLeading){
                                Button(action: {
                                  
                                }){
                                    HStack{
                                        NavigationLink(destination: TelaInicial()){
                                            
                                            Image(systemName: "arrow.left")
                                                .font(.largeTitle)
                                                .foregroundColor(.black)
                                        }
                                        Text("Escolha Seus Dados")
                                            .font(.title)
                                            .foregroundStyle(.black)
                                            .bold()
                                            .padding()
                                            .frame(alignment: .center)
                                        }

                                }
                            }
                        }
                }
               
            }
            
        }
        
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        
      
    }
}
    private struct RectangleCount: View{
        @State var contador: Int = 0
        var body: some View {
            ZStack{
                Rectangle()
                    .foregroundStyle(.backgroundMenuConfig)
                    .frame(width: 100, height: 50)
                    .cornerRadius(10)
                HStack{
                    Button(action: {
                        if contador > 0{
                            contador -= 1
                        }
                    }){
                        Image(systemName: "minus")
                            .foregroundStyle(.black)
                    }
                    Text("\(contador)")
                    
                    Button(action: {
                        contador += 1
                    }){
                        Image(systemName: "plus")
                            .foregroundStyle(.black)
                    }
                }
                .font(.title2)
            }
        }
    }
    private struct Modificator: View{
        @State var contador: Int = 0
        var body: some View {
            ZStack{
                Rectangle()
                    .foregroundStyle(.backgroundMenuConfig)
                    .frame(width: 150, height: 50)
                    .cornerRadius(10)
                HStack{
                    Button(action: {
                        if contador > 0{
                            contador -= 1
                        }
                    }){
                        Image(systemName: "minus")
                            .foregroundStyle(.black)
                    }
                    Text("\(contador)")
                    
                    Button(action: {
                        contador += 1
                    }){
                        Image(systemName: "plus")
                            .foregroundStyle(.black)
                    }
                }
                .font(.largeTitle)
            }
            .padding(.bottom, 100)
        }
    }
    private struct imageDice: View{
        var body: some View {
            Image(systemName: "dice.fill")
                .resizable()
                .frame(width: 90, height: 90 )
                .foregroundColor(.black)
        }
    }

#Preview {
    dados()
}
