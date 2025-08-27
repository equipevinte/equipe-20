//
//  ModelDados.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 07/08/25.
//

import Foundation

class Rolagem: Identifiable{
    var id = UUID()
    var results: [Int]
    var total: Int {
        results.reduce(0, +)
    }
    
    init(id: UUID = UUID(), results: [Int]) {
        self.id = id
        self.results = results
    }
}
