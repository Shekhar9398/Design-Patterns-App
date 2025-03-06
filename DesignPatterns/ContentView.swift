
import SwiftUI

enum DesignPatterType: String {
    case builder
    case singleton
    case factory
}

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                checkDesignPattern(type: .builder)
            } label: {
                Image(systemName: "")
                    .imageScale(.medium)
                    .foregroundColor(.black)
                
                Text("builder")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(Color.white)
            }
            .padding()
            .background(Color.mint)
            .overlay{
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.black, lineWidth: 2)
            }

        }
        .onAppear{
            
        }
        .padding()
    }
    
    private func checkDesignPattern(type: DesignPatterType){
        switch type {
        case .builder:
            builderApiCall()
        case .factory:
            print("Call factory")
        case .singleton:
            print("call singleton")
        }
    }
}

#Preview {
    ContentView()
}
