//
//  ModelDados.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 07/08/25.
//

import Foundation

struct Rolagem: Identifiable{
    let id = UUID()
    let results: [Int] 
    let timestamp = Date()
    
    var total: Int {
        results.reduce(0, +)
    }
}
