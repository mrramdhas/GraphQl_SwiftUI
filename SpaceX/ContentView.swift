//
//  ContentView.swift
//  SpaceX
//
//  Created by Ramdhas on 2023-05-27.
//

import SwiftUI
import SpaceXAPI
import Apollo

struct ContentView: View {
    
    @StateObject private var rocketVM = RocketList_VM()
    
    var body: some View {
        VStack {
            List(rocketVM.rockets, id: \.id) { rocket in
                Text(rocket.name).bold()
                Text(rocket.description)
            }
            .onAppear {
                rocketVM.getRocketList()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
