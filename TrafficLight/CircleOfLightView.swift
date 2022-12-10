//
//  CircleView.swift
//  TrafficLight
//
//  Created by Anton Boev on 10.12.2022.
//

import SwiftUI

struct CircleOfLightView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 130)
            .foregroundColor(color.opacity(opacity))
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .padding(.top, 16)
    }
}
