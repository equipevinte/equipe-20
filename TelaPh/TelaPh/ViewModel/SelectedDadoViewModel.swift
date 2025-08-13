import Foundation

class SelectDadoViewModel: ObservableObject {
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
    
    @Published var selectedDice: [TipoDado: Int] = [:]
    @Published var rolarResultado: [Int] = []
    @Published var historico: [Rolagem] = []
    
    var allDiceAsList: [TipoDado] {
        selectedDice.flatMap { (dieType, count) in
            Array(repeating: dieType, count: count)
        }
    }
    
    func addDado(_ dado: TipoDado) {
        selectedDice[dado, default: 0] += 1
    }
    
    func removeDado(_ dado: TipoDado) {
        guard let currentCount = selectedDice[dado], currentCount > 0 else {
            return
        }
        
        if currentCount > 1 {
            selectedDice[dado]? -= 1
        } else {
            selectedDice[dado] = nil
        }
    }
    
    func count(for dado: TipoDado) -> Int {
        return selectedDice[dado] ?? 0
    }
    
    func rolarDado(dados: [SelectDadoViewModel.TipoDado]) {
        rolarResultado = dados.map { die in
            Int.random(in: 1...die.sides)
        }.sorted()
        
        guard !rolarResultado.isEmpty else { return }
        
        let novaRolagem = Rolagem(results: rolarResultado)
        
        historico.insert(novaRolagem, at: 0)
        
    }
    
    func clearCurrentRoll(){
        selectedDice.removeAll()
        rolarResultado.removeAll()
        historico.removeAll()
    }
    
}
