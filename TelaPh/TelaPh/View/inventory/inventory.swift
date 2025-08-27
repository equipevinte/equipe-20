//
//  inventory.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 26/08/25.
//

import SwiftUI

struct inventory: View {
    @State var selecteSkin: DiceSkin?
    @State var showEquipSheet: Bool = false

    let colums = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0),
    ]
    var body: some View {
        ZStack(alignment: .top){
            Color.bege.ignoresSafeArea(.all)
            
            ZStack{
                VStack{
                    Text("Inventory")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    ScrollView{
                    LazyVGrid(columns: colums){
                        pacoteCardInv(selectedSkin: $selecteSkin, showEquipSheet: $showEquipSheet)
                        
                    }
                }
                }
                .overlay{
                    if showEquipSheet{
                        ZStack{
                            Color.black.opacity(0.2).ignoresSafeArea(.all)
                                .onTapGesture {
                                    showEquipSheet = false
                                }
                            equipSkin(selectedSkin: $selecteSkin, Store: StoreSkins())
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    inventory()
}
