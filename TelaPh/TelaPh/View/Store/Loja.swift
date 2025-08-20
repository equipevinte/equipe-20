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
    @State var showBuySheet: Bool = false
    @State var selectedSkin: DiceSkin?
    var body: some View {
        ZStack(alignment: .top) {
                    Color.bege.ignoresSafeArea(.all)
                    
                    VStack {
                        Text("Skins de dado")
                            .fontWeight(.semibold)
                            .font(.title)
                        
                        HStack {
                            indicadorDeMoedas()
                                .padding(.leading, 5)
                                .padding(.bottom, 10)
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal)
                            
                        PacoteCard(selectedSkin: $selectedSkin, showBuySheet: $showBuySheet)
            }
        }
        .overlay {
            if showBuySheet {
                ZStack {
                    Color.black.opacity(0.2).ignoresSafeArea(.all)
                        .onTapGesture {
                            showBuySheet = false
                        }
                    
                    SkinsDetails(selectedSkin: $selectedSkin, skin: DiceSkin?(selectedSkin!) ?? DiceSkin(preco: 200, skinImages: ["PacoteMarinho"], nome: "Pacote Marinho", comprado: false, equipado: false, skinsIndividual: ["d4Marinho", "d6Marinho", "d8Marinho", "d10Marinho", "d12Marinho", "d20Marinho"]))
                }
            }
        }
    }
}



#Preview {
    Loja()
}
