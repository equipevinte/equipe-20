//
//  PrimaryButton.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 19/08/25.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View{
        Button(action: action)
        {
            Text(title)
                .padding()
                .frame(height: 67)
                .background(.marromEscuro)
                .foregroundStyle(Color.bege)
                .font(.title)
                .cornerRadius(8)
        }
    }
}
