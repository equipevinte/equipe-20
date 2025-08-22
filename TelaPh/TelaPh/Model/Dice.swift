//
//  Dice.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 19/08/25.
//
//
//import SwiftUI
//
//class Dice: Identifiable {
//    var id: UUID
//    var side: DiceSide
//    
//    init(_ side: DiceSide) {
//        self.id = UUID()
//        self.side = side
//    }
//}
//
//enum DiceSide: String, CaseIterable {
//    case d4, d6, d8, d10, d12, d20
//    
//    var imageName: String { rawValue }
//    
//    var sides: Int {
//        switch self {
//        case .d4: return 4
//        case .d6: return 6
//        case .d8: return 8
//        case .d10: return 10
//        case .d12: return 12
//        case .d20: return 20
//        }
//    }
//}
