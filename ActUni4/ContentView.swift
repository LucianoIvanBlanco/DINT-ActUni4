//
//  ContentView.swift
//  ActUni4
//
//  Created by Luciano Ivan Blanco on 26/1/24.
//

import SwiftUI

struct ContentView: View {
    
    var films: [Film]
    
    var body: some View {
         NavigationView {
             ScrollView {
                 ForEach(films) { film in
                     NavigationLink(destination: MovieDetailView(film: film)) {
                         MovieCardView(film: film)
                             .padding()
                     }
                 }
             }
             .navigationTitle("Películas")
             .navigationBarItems(trailing: Button(action: {
                             // Acción para la búsqueda o configuración
                         }) {
                             Image(systemName: "magnifyingglass")
                         })
                     }
                 }
             }
