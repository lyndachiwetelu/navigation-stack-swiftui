
import SwiftUI

struct QuoteView: View {
    @ObservedObject var characterState = HarryPotterCharactersState.shared
    @Binding var navPaths: [Routes]
    
    var body: some View {
        
        VStack {
            Text("\(characterState.currentCharacter.name)'s Famous Quotes").font(.system(size: 22, weight: .bold)).padding(.top, 20)
            
            ForEach(characterState.currentCharacter.quotes, id: \.self) { quote in
                Text("\"\(quote)\"").font(.title2).padding(20)
            }
            
            Spacer()
            
            Button("Back to Character") {
               //navigate back
               navPaths.removeLast()
            }
            .font(.title3)
            .frame(width: 200)
            .padding(10)
            .background(Color(UIColor.systemGray3))
            .foregroundColor(.primary)
            .cornerRadius(8)
            .padding(.bottom, 30)
            
            
            Button("Back to Home Screen") {
                //navigate to home screen
                navPaths.removeAll()
            }
            .font(.title3)
            .frame(width: 200)
            .padding(10)
            .background(Color(UIColor.systemGray3))
            .foregroundColor(.primary)
            .cornerRadius(8)
            
            Spacer()
            
        }.padding(20)
            .navigationBarItems(
                leading:  Image(systemName: "arrow.left.circle.fill").resizable().frame(width: 32, height: 32).onTapGesture {
                    //navigate back
                    navPaths.removeLast()
                
                },
                trailing: Text("Potter Verse").font(.title3)
            )
        
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView(navPaths: .constant([]))
    }
}
