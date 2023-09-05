//
//  NavigationStackManager.swift
//  NavigationStack
//
//  Created by Lynda Chiwetelu on 04.09.23.
//

import SwiftUI

enum Routes {
    case list
    case character
    case credits
    case quotes
}

struct NavigationStackManager: View {
    @State private var navPaths = [Routes]()
    
    var body: some View {
        NavigationStack(path: $navPaths) {
            ListView(navPaths: $navPaths).navigationDestination(for: Routes.self) { r in
                switch(r) {
                case .list:
                    ListView(navPaths: $navPaths)
                case .character:
                    CharacterView(navPaths: $navPaths).navigationBarBackButtonHidden(true)
                case .credits:
                    CreditView(navPaths: $navPaths).navigationBarBackButtonHidden(true)
                case .quotes:
                    QuoteView(navPaths: $navPaths).navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}

struct NavigationStackManager_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackManager()
    }
}
