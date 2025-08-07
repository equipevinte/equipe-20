//
//  Root.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import SwiftUI

struct Root: View {

    @StateObject private var selectDados = SelectDadoViewModel()
    
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            
            // The views inside no longer need parameters
            dados()
                .tabItem {
                    Label("Dados", systemImage: "dice.fill")
                }
                .tag(1)
            
            TelaInicial()
                .tabItem {
                    Label("Inicio", systemImage: "house.fill")
                }
                .tag(0)
            
            Loja()
                .tabItem {
                    Label("Loja", systemImage: "storefront.fill")
                }
                .tag(2)
        }
        .environmentObject(selectDados)
    }
}

#Preview {
    Root()
}
