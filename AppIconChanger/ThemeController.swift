//
//  ThemeController.swift
//  AppIconChanger
//
//  Created by Jesse Rubio on 3/27/23.
//

import SwiftUI

class ThemeController: ObservableObject {

    @AppStorage("selectedAppIcon") var selectedAppIcon: AppIcon = .light
    
}

extension ThemeController {
    
    func selectAppIcon(_ icon: AppIcon) {
        
        switch icon {
        case .light: UIApplication.shared.setAlternateIconName(AppIcon.light.name)
            selectedAppIcon = .light
            
        case .dark: UIApplication.shared.setAlternateIconName(AppIcon.dark.name)
            selectedAppIcon = .dark
        }
    }
}
