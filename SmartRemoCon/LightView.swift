//
//  LightView.swift
//  SmartRemoCon
//
//  Created by 高木郁哉 on 2020/07/27.
//  Copyright © 2020 swiftyLeopa. All rights reserved.
//

import SwiftUI

struct LightView: View {
    var body: some View {
        Text("The Light View")
        .tabItem {
            Image(systemName: "light.max")
            Text("ライト")
        }
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView()
    }
}
