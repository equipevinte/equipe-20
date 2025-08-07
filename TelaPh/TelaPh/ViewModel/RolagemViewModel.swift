//
//  RolagemViewModel.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 07/08/25.
//

import Foundation

class RolagemViewModel: ObservableObject {
    @Published var rolarResultado: [Int] = []
    @Published var historico: [Rolagem] = []
    
    func rolarDado(dados: [SelectDadoViewModel.TipoDado]) {
        rolarResultado = dados.map { die in
            Int.random(in: 1...die.sides)
        }.sorted()
        
        guard !rolarResultado.isEmpty else { return }
        
        let novaRolagem = Rolagem(results: rolarResultado)
        
        historico.insert(novaRolagem, at: 0)
        
    }

}



