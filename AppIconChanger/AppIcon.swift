//
//  AppIcon.swift
//  AppIconChanger
//
//  Created by Jesse Rubio on 3/27/23.
//

import Foundation

enum AppIcon: String, CaseIterable {
    
    case light = "Light"
    case dark = "Dark"
    
    var name: String? {
        switch self {
        case .light:
            return nil
        case .dark:
            return "AppIcon-Dark"
        }
    }
}
