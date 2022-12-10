//
//  ButtonViewView.swift
//  TrafficLight
//
//  Created by Anton Boev on 10.12.2022.
//

import SwiftUI

enum Lights {
    case red, yellow, green
}

struct ButtonView: View {
    @State var colorLight = ColorLightView()
    
    @State private var currentLight = Lights.red
    @State private var buttonText = "Start"
    
    var body: some View {
        Button(action: buttonDidTap) {
            ZStack {
                Capsule()
                    .frame(width: 150, height: 60)
                    .overlay(Capsule().stroke(Color(.white), lineWidth: 4))
                Text("\(buttonText)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
    
    private func buttonDidTap() {
        if buttonText == "Start" {
            buttonText = "Next"
        }
        
        switch currentLight {
        case .red:
            colorLight.greenOpacity = colorLight.lightIsOff
            colorLight.redOpacity = Double(colorLight.lightIsOn)
            currentLight = Lights.yellow
        case .yellow:
            colorLight.redOpacity = colorLight.lightIsOff
            colorLight.yellowOpacity = Double(colorLight.lightIsOn)
            currentLight = Lights.green
        case .green:
            colorLight.yellowOpacity = colorLight.lightIsOff
            colorLight.greenOpacity = Double(colorLight.lightIsOn)
            currentLight = Lights.red
        }
    }
}

struct ButtonViewView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
