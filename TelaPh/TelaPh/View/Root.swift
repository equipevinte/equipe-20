//
//  Root.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import SwiftUI
import SwiftData

struct Root: View {
    @State private var selectedTab = 0
    @Environment(\.modelContext) var context
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
                TelaInicial()
            .tabItem {
                Image(systemName: "play.fill")
                Text("Rolagens")
            }
            .tag(0)
            
            Loja()
                .tabItem {
                    Image(systemName: "storefront.fill")
                    Text("Loja")
                }
                .tag(1)
            
            inventory()
                .tabItem {
                    Image(systemName: "backpack.fill")
                    Text("Inventário")
                }
                .tag(2)
        }
        .onAppear {
            UserViewModel.shared.createUser(context: context)
        }
    }
}

#Preview {
    Root()
}
