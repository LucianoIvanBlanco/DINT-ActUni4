//
//  ActUni4App.swift
//  ActUni4
//
//  Created by Luciano Ivan Blanco on 26/1/24.
//

import SwiftUI

@main
struct ActUni4App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(films: Film.sampleData)
            
        }
    }
}
