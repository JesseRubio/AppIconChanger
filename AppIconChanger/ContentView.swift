//
//  ContentView.swift
//  AppIconChanger
//
//  Created by Jesse Rubio on 3/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var themeController = ThemeController()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 50) {
            ForEach(AppIcon.allCases, id: \.self) { appIcon in
                Button(action: {
                    themeController.selectAppIcon(appIcon)
                }) {
                    VStack {
                        Image(appIcon.rawValue)
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                            .cornerRadius(10)
                        Text(appIcon.rawValue)
                    }
                }
            }
        }
        .padding(25)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
