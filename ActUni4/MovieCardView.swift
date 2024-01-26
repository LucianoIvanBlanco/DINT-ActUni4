//
//  ItemView.swift
//  ActUni4
//
//  Created by Luciano Ivan Blanco on 26/1/24.
//

import SwiftUI

struct MovieCardView: View {
    var film: Film

    var body: some View {
        VStack {
            Image(film.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text(film.name)
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text(film.categories.first ?? "Categorie")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text(String(format: "%.1f", film.score))
                    .foregroundColor(Color("gold"))
                    .padding(5)
                    .background(Color("redCarpet"))
                    .clipShape(Circle())
            }
            .padding([.leading, .bottom, .trailing])
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

