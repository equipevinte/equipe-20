import Foundation

class RollViewModel: ObservableObject {
    @Published var hasRolled: Bool = false
    @Published var selectedDice: [TipoDado] = []
    @Published var rollResult: [Int] = []
    @Published var historico: [Rolagem] = []
    
    private init() {}
    
    static let shared = RollViewModel()
    
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
