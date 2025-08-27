//
//  indicadorDeMoedas.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 06/08/25.
//

import SwiftUI

struct indicadorDeMoedas: View {
    @ObservedObject var userViewModel = UserViewModel.shared
    var body: some View {
        HStack {
            Image("moeda")
            
            if let user = userViewModel.user {
                Text(user.moedas.description)
                    .fontWeight(.semibold)
                    .font(.title2)
            } else {
                Text("000")
                    .fontWeight(.semibold)
                    .font(.title2)
            }
            
            
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
