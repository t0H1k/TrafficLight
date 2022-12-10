//
//  ColorLightView.swift
//  TrafficLight
//
//  Created by Anton Boev on 10.12.2022.
//

import SwiftUI

struct ColorLightView: View {
    
    @State var redOpacity = 0.3
    @State var yellowOpacity = 0.3
    @State var greenOpacity = 0.3
    
    @State var lightIsOn = 1
    @State var lightIsOff = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                CircleOfLightView(color: .red, opacity: redOpacity)
                    .padding(.top, 16)
                CircleOfLightView(color: .yellow, opacity: yellowOpacity)
                CircleOfLightView(color: .green, opacity: greenOpacity)
                
                Spacer()
                
                ButtonView(colorLight: self)
                    .padding(.bottom, 16)
            }
        }
    }
}

struct ColorLightView_Previews: PreviewProvider {
    static var previews: some View {
        ColorLightView()
    }
}
