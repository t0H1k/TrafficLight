//
//  TrafficLightApp.swift
//  TrafficLight
//
//  Created by Anton Boev on 10.12.2022.
//

import SwiftUI

@main
struct TrafficLightApp: App {
    var body: some Scene {
        WindowGroup {
            ColorLightView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorLightView()
    }
}
