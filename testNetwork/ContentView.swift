//
//  ContentView.swift
//  testNetwork
//
//  Created by Alex  on 11/5/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm = CharacterListVM()
    var body: some View {
        VStack {
            ForEach(vm.characters) {character in
                Text(character.name)
            }
        }
    }
}

#Preview {
    ContentView()
}
