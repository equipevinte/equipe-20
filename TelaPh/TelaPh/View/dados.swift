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
                Color.bege.ignoresSafeArea()
                VStack{
                 
                    ZStack{
                        Color.bege.ignoresSafeArea(.all )
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
}
    private struct RectangleCount: View{
        @State var contador: Int = 0
        var body: some View {
            ZStack{
                Rectangle()
                    .foregroundStyle(.marrom)
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
                    .foregroundStyle(.marrom)
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
    
#Preview {
    dados()
}
