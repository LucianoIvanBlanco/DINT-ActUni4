//
//  ContentView.swift
//  ActUni4
//
//  Created by Luciano Ivan Blanco on 26/1/24.
//
import SwiftUI

struct ContentView: View {
    var films: [Film]
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(searchResults, id: \.id) { film in
                        NavigationLink(destination: MovieDetailView(film: film)) {
                            MovieCardView(film: film)
                        }
                    }
                }
                .padding()
            }
            .searchable(text: $searchText)
            .navigationTitle("FilmView")
        }
    }
    
    // Calcula los resultados de la búsqueda en tiempo real
    var searchResults: [Film] {
        if searchText.isEmpty {
            return films
        } else {
            return films.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
}




