import Foundation

class SelectDadoViewModel: ObservableObject {
    @Published var hasRolled: Bool = false
    @Published var selectedDice: [TipoDado] = []
    @Published var rollResult: [Int] = []
    @Published var historico: [Rolagem] = []
    
    func addDado(_ dado: TipoDado) {
        selectedDice.append(dado)
    }
    
    func removeDado(_ dado: TipoDado) {
        selectedDice.remove(at: selectedDice.firstIndex(of: dado)!)
    }
    
    func count(for dado: TipoDado) -> Int {
        return selectedDice.count(where: {$0 == dado })
    }
    
    func rolarDado() {
        rollResult = selectedDice.map { die in
            Int.random(in: 1...die.sides)
        }.sorted()
        
        guard !rollResult.isEmpty else { return }
        
        let novaRolagem = Rolagem(results: rollResult)
        
        historico.append(novaRolagem)
        
        hasRolled = true
    }
    
    func clearCurrentRoll() {
        selectedDice.removeAll()
        rollResult.removeAll()
        historico.removeAll()
    }
    
}

enum TipoDado: String, CaseIterable, Identifiable {
    case d4, d6, d8, d10, d12, d20
    
    var id: String { rawValue }
    
    var ImageName: String {
        switch self {
        case .d4: return "d4"
        case .d6: return "d6"
        case .d8: return "d8"
        case .d10: return "d10"
        case .d12: return "d12"
        case .d20: return "d20"
        }
    }
    
    var sides: Int {
        switch self {
        case .d4: return 4
        case .d6: return 6
        case .d8: return 8
        case .d10: return 10
        case .d12: return 12
        case .d20: return 20
        }
    }
}
