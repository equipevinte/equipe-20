//
//  Root.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 31/07/25.
//

import SwiftUI

struct Root: View {
    var body: some View {
        TabView {
            
            TelaInicial()
                .tabItem{
                    // TODO: MODIFICAR PARA FICAR COM O ICONE
                   Text("Tela inicial")
                }
            
            
            Loja()
                .tabItem{
                    // TODO: MODIFICAR PARA FICAR COM O ICONE
                   Text("loja")
                }
        }
    }
}

#Preview {
    Root()
}
