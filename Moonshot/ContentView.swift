//
//  ContentView.swift
//  Moonshot
//
//  Created by Zach Mommaerts on 10/3/23.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        VStack {
            Text("\(astronauts.count)")
            Text("\(missions.count)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
