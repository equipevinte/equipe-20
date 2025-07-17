//
//  indicadorDeMoedas.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import SwiftUI

struct indicadorDeMoedas: View {
    var body: some View {
        HStack {
                    Image("moeda")
                    
                    Text("10")
                        .fontWeight(.semibold)
                        .font(.title2)
                    
                    Spacer()
                }
                .padding(7)
                .frame(maxWidth: 92)
                .background {
                    Color.marromClaro
                }
                .cornerRadius(6)
    }
}

#Preview {
    indicadorDeMoedas()
}
