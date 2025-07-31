//
//  IndicadorMoedas.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 31/07/25.
//

import SwiftUI

struct IndicadorMoedas: View {
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
    IndicadorMoedas()
}
