
import SwiftUI

struct ListView: View {
    @ObservedObject var characterState = HarryPotterCharactersState.shared
    @Binding var navPaths: [Routes]
    
    private let gridColumns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack {
            Spacer()
            Text("Potter Verse").font(.title).padding(.all, 20)
            Text("Hogwarts School of Witchcraft and Wizardry").padding(.bottom, 8)
            ScrollView {
                LazyVGrid(columns: gridColumns, spacing: 20) {
                    ForEach(characterState.allCharacters(), id:\.name) { character in
                        LazyVStack{
                            Image(character.image)
                                .resizable()
                                .frame(width: 120, height: 120)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(200)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 200)
                                        .stroke(Color(UIColor.systemGray2), lineWidth: 4)
                                )
                                .padding(.bottom, 5)
                            
                            Button(character.name) {
                                characterState.setCurrentCharacter(to: character)
                                navPaths.append(.character)
                            }
                            .font(.title3)
                            .frame(minWidth: 150)
                            .padding(10)
                            .background(Color(UIColor.systemGray3))
                            .foregroundColor(.primary)
                            .cornerRadius(8)
                            
                        }.padding(.bottom, 10).padding(.leading, 10)
                            .padding(.trailing, 10)
                    }
                }
                
            }.frame(maxHeight: 750).padding(.top, 20)
           
            Spacer()
        
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(navPaths: .constant([]))
    }
}
