//
//  HomeView.swift
//  SmartRemoCon
//
//  Created by 高木郁哉 on 2020/07/27.
//  Copyright © 2020 swiftyLeopa. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var temp = 26.0
    var humid = 70
    
    var body: some View {
        VStack {
            Text("室温・湿度")
                .frame(width: 280, height: 50, alignment: .topLeading)
                .font(.system(size: 20))
                //.foregroundColor(.white)
                .background(Color(.cyan))
            Text(textMake())
                .frame(width: 280, height: 50, alignment: .topLeading)
                .font(.system(size: 30))
                //.foregroundColor(.white)
                .background(Color(.cyan))
            Text("エアコン")
                .frame(width: 280, height: 50, alignment: .topLeading)
                .font(.system(size: 20))
                //.foregroundColor(.white)
                .background(Color(.yellow))
            Text("稼働中")
                .frame(width: 280, height: 50, alignment: .topLeading)
                .font(.system(size: 30))
                //.foregroundColor(.white)
                .background(Color(.yellow))
            Text("ライト")
                .frame(width: 280, height: 50, alignment: .topLeading)
                .font(.system(size: 20))
                //.foregroundColor(.white)
                .background(Color(.green))
            Text("点灯中")
                .frame(width: 280, height: 50, alignment: .topLeading)
                .font(.system(size: 30))
                //.foregroundColor(.white)
                .background(Color(.green))
            
        }
        .frame(width: 350, height: 600, alignment: .topLeading)
        .tabItem {
            Image(systemName: "house")
            Text("ホーム")
        }
    }
    
    func textMake() -> String {
        self.temp.description + "°C  " + self.humid.description + "%"
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
