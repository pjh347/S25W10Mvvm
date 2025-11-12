import SwiftUI

struct ContentView: View {
    @State private var viewModel = CounterViewModel()
    
    var body: some View {
        VStack {
            Text("\(viewModel.count)")
                .font(.system(
                    size: 100,
                    weight: .bold,
                    design: .rounded
                ))
                .foregroundColor(.blue)
            
            HStack(spacing: 30) {
                Button {
                    viewModel.addCounter()
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
                }
                .tint(.green)
                
                Button {
                    viewModel.subCounter()
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.largeTitle)
                }
                .tint(.red)
                
                Button {
                    viewModel.resetCounter()
                } label: {
                    Image(systemName: "arrowshape.turn.up.left.fill")
                        .font(.largeTitle)
                }
                .tint(.blue)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
