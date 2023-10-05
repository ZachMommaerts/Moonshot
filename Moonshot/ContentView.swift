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
    
    @State private var showListView = false
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            Group {
                if showListView {
                    ListView(missions: missions, astronauts: astronauts)
                } else {
                    GridView(missions: missions, astronauts: astronauts)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                ToolbarItem {
                    Button(showListView ? "Grid View" : "List View") {
                        showListView.toggle()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
