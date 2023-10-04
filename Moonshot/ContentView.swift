//
//  ContentView.swift
//  Moonshot
//
//  Created by Zach Mommaerts on 10/3/23.
//

import SwiftUI

struct ContentView: View {
    let Astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        VStack {
            Text("\(Astronauts.count)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
