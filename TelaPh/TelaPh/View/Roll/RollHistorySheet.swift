//
//  RollHistorySheet.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 19/08/25.
//

import SwiftUI

struct RollHistorySheet: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var selectDados: SelectDadoViewModel

    var body: some View {
        ZStack {
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
                        dismiss()
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
        }
    }
}
