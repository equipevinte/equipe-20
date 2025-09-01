//
//  ModelDados.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 07/08/25.
//

import Foundation
import SwiftData

@Model
class Rolagem: Identifiable{
    var results: [Int]
    var total: Int {
        results.reduce(0, +)
    }
    
    init(id: UUID = UUID(), results: [Int]) {
        self.results = results
    }
}
