//
//  ContentView.swift
//  SmartRemoCon
//
//  Created by Takagi Fumiya on 2020/07/27.
//  Copyright © 2020 swiftyLeopa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
            AirConView(temp: 5, percentage: 30)
            LightView()
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
