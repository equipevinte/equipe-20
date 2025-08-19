//
//  Loja.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//



import SwiftUI


struct Loja: View {
    @State var listaSkinsdado: skinsGlobais = skinsGlobais()
    @State private var buttonCompra: Bool = true
    var body: some View {
        ZStack(alignment: .top) {
                    Color.bege.ignoresSafeArea(.all)
                    
                    VStack {
                        Text("Skins de dado")
                            .fontWeight(.semibold)
                            .font(.title)
                        
                        HStack {
                            indicadorDeMoedas()
                                .padding(.leading, 25)
                                .padding(.bottom, 10)
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal)
                            
                        PacoteCard()
                        
                        
            }
        }
    }
}



#Preview {
    Loja()
}
