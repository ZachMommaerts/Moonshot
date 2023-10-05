//
//  ListView.swift
//  Moonshot
//
//  Created by Zach Mommaerts on 10/5/23.
//

import SwiftUI

struct ListView: View {
    
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var body: some View {
        List(missions) { mission in
            NavigationLink {
                MissionView(mission: mission, astronauts: astronauts)
            } label: {
                HStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                    
                    VStack {
                        Text(mission.displayName)
                            .font(.headline)
                            .foregroundColor(.white)
                        Text(mission.formattedLaunchDate)
                            .font(.caption)
                            .foregroundColor(.white.opacity(0.5))
                    }
                }
            }
            .listRowBackground(Color.darkBackground)
        }
        .listStyle(.plain)
    }
}

struct ListView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        ListView(missions: missions, astronauts: astronauts)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
