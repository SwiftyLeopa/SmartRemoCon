//
//  AirConView.swift
//  SmartRemoCon
//
//  Created by 高木郁哉 on 2020/07/27.
//  Copyright © 2020 swiftyLeopa. All rights reserved.
//

import SwiftUI

struct AirConView: View {
    @State var temp: Double
    @State var percentage: Float
    
    var body: some View {
        VStack {
            Text("The Air Con View")
            Slider(value: self.$temp)
            .frame(width: 200, height: 45, alignment: .center)
            .accentColor(.green)
            Slider(value: $temp, in: 18...20, step: 1, minimumValueLabel: Image(systemName: "18.circle"), maximumValueLabel: Image(systemName: "20.circle")) { Text("aaaaaa") }
            .frame(width: 200, height: 45, alignment: .center)
            CustomView(percentage: $percentage)
            .accentColor(.red)
            .frame(width: 200, height: 44)
        }
        .tabItem {
            Image(systemName: "wind")
            Text("エアコン")
        }
    }
}

struct CustomView: View {

    @Binding var percentage: Float // or some value binded

    var body: some View {
        GeometryReader { geometry in
            // TODO: - there might be a need for horizontal and vertical alignments
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.gray)
                    //.cornerRadius(12)
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: geometry.size.width * CGFloat(self.percentage / 100))
                    .cornerRadius(12)
            }
            .cornerRadius(12)
            .gesture(DragGesture(minimumDistance: 10)
                .onChanged { value in
                    // TODO: - maybe use other logic here
                    self.percentage = min(max(0, Float(value.location.x / geometry.size.width * 100)), 100)
                }
            )
        }
    }
}

struct AirConView_Previews: PreviewProvider {
    
    static var previews: some View {
        AirConView(temp: 5, percentage: 30)
    }
}
