
import SwiftUI

struct CharacterView: View {
    @ObservedObject var characterState = HarryPotterCharactersState.shared
    @Binding var navPaths: [Routes]
    
    var body: some View {
        VStack {
            Text(characterState.currentCharacter.name).font(.title2).padding(.bottom, 10)
            Image(characterState.currentCharacter.image)
                .resizable()
                .frame(width: 300, height: 300)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(UIColor.systemGray2), lineWidth: 4)
                )
                .padding(.bottom, 10)
            
            Text(characterState.currentCharacter.summary)
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding()
            
            Button("See Credits") {
                //navigate to credits
                navPaths.append(.credits)
            }
            .font(.title3)
            .frame(width: 200)
            .padding(10)
            .background(Color(UIColor.systemGray3))
            .foregroundColor(.primary)
            .cornerRadius(8)
            .padding(.bottom, 30)
            
            
            Button("View Quotes") {
                // navigate to quotes
                navPaths.append(.quotes)
            }
            .font(.title3)
            .frame(width: 200)
            .padding(10)
            .background(Color(UIColor.systemGray3))
            .foregroundColor(.primary)
            .cornerRadius(8)
            
        }.padding(20)
            .navigationBarItems(
                leading:  Image(systemName: "arrow.left.circle.fill").resizable().frame(width: 32, height: 32).onTapGesture {
                    // navigate back
                    navPaths.removeLast()
                    
        
                },
                trailing: Text("Potter Verse").font(.title3)
            )
           
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(navPaths: .constant([]))
    }
}
