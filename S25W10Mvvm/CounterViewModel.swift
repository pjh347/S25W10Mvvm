import Foundation


// final: 더이상 상속 불가.
@Observable
final class CounterViewModel {
    private var model = CounterModel()
    
    // MARK: - Properties
    var count: Int {
        model.count
    }
    
    // MARK: - Actions
    func addCounter() {
        model.count += 1
    }
    
    func subCounter() {
        model.count -= 1
    }
    
    func resetCounter() {
        model.count = 0
    }
}
