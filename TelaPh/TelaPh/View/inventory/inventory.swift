//
//  inventory.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 26/08/25.
//

import SwiftUI

struct Inventory: View {
    @State private var selectedSkin: DiceSkin?
    @State private var showEquipSheet: Bool = false
    @ObservedObject var userVm = UserViewModel.shared

    private let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.bege.ignoresSafeArea()
            
            VStack {
                Text("Inventory")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(userVm.skinsParaMostrar, id: \.id) { skin in
                            pacoteCardInv(
                                skin: skin,
                                selectedSkin: $selectedSkin,
                                showEquipSheet: $showEquipSheet
                            )
                        }
                    }
                    .padding()
                }
            }
            
            if showEquipSheet, let skin = selectedSkin {
                ZStack {
                    Color.black.opacity(0.2).ignoresSafeArea()
                        .onTapGesture {
                            showEquipSheet = false
                        }
                    
                    EquipSkin(selectedSkin: $selectedSkin, showEquipSheet: $showEquipSheet)
                        .frame(width: 350, height: 280)
                }
            }
        }
    }
}
#Preview {
    Inventory()
}
