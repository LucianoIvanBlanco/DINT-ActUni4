//
//  MovieDetailView.swift
//  ActUni4
//
//  Created by Luciano Ivan Blanco on 26/1/24.
//

import SwiftUI

struct MovieDetailView: View {
    var film: Film
    
    var body: some View {
        ScrollView {
            VStack {
                Image(film.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(film.name)
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(film.date)")
                            .font(.subheadline)
                    }
                    
                    HStack {
                        ForEach(film.categories, id: \.self) { categories in
                            Text(categories)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(Color.secondary.opacity(0.1))
                                .cornerRadius(4)
                        }
                    }
                    
                    Text("Sinopsis")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(film.sinopsis)
                }
                .padding()
            }
        }
        .navigationBarTitle(Text(film.name), displayMode: .inline)
    }
}

