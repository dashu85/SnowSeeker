//
//  Facilitiy.swift
//  SnowSeeker
//
//  Created by Marcus Benoit on 25.09.24.
//

import Foundation
import SwiftUI

struct Facility: Identifiable {
    let id: UUID = UUID()
    let name: String
    
    private let icons = [
        "Accommodation": "house",
        "Beginners": "1.circle",
        "Cross-country": "map",
        "Eco-friendly": "leaf.arrow.circlepath",
        "Family": "person.3",
    ]
        
    var icon: some View {
        if let iconName = icons[name] {
            Image(systemName: iconName)
                .accessibilityLabel(name)
                .foregroundStyle(.secondary)
        } else {
            fatalError("Unknown facility type: \(name).")
        }
    }
}
