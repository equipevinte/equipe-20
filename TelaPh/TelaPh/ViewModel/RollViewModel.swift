import Foundation
import SwiftData

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
    
    func rolarDado(context: ModelContext) {
        // 1. Gera os resultados na ordem que o usuário escolheu
        let resultados = selectedDice.map { die in
            Int.random(in: 1...die.sides)
        }
        
        // 2. Cria a nova rolagem com esses resultados
        let novaRolagem = Rolagem(results: resultados)
        
        historico.append(novaRolagem)
        context.insert(novaRolagem)
        do {
            try context.save()
        } catch {
            print("Erro ao salvar rolagem: \(error)")
        }
        
        rollResult = resultados
        hasRolled = true
    }
    
    func clearCurrentRoll() {
        selectedDice.removeAll()
        rollResult.removeAll()
        hasRolled = false
    }
    
    func fetchRoll(context: ModelContext){
        let descriptor = FetchDescriptor<Rolagem>()
        do{
            historico = try context.fetch(descriptor)
        } catch{
            print("Erro ao buscar: \(error)")
        }
    }
    
}
