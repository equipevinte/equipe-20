//
//  Root.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import SwiftUI

struct Root: View {
    @StateObject private var selectDados = SelectDadoViewModel()
    @State private var selectedTab = 0 // Start on the "Rolagens" tab

    var body: some View {
        TabView(selection: $selectedTab) {
            
//            dados()
//                .tabItem {
//                    Image(systemName: "dice.fill")
//                    Text("Dados")
//                }
//                .tag(0) // IMPORTANT: Tag for the first tab
            
                TelaInicial()
            .tabItem {
                Image(systemName: "play.fill")
                Text("Rolagens")
            }
            .tag(0) // IMPORTANT: Tag for the second tab
            
            Loja()
                .tabItem {
                    Image(systemName: "storefront.fill")
                    Text("Loja")
                }
                .tag(1) // IMPORTANT: Tag for the third tab
            
            Loja()
                .tabItem {
                    Image(systemName: "storefront.fill")
                    Text("Inventário")
                }
                .tag(2) // IMPORTANT: Tag for the third tab
        }
        .environmentObject(selectDados)
    }
}

#Preview {
    Root()
}
