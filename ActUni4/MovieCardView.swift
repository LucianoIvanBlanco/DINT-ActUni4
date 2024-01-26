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
        ZStack(alignment: .topTrailing) { // Usar ZStack para superponer el puntaje sobre la imagen
            VStack {
                Image(film.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 0.5)
                    )
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
                }
                .padding([.leading, .bottom, .trailing])
            }
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            
            // Puntaje superpuesto en la esquina superior derecha
            Text(String(format: "%.1f", film.score))
                .foregroundColor(Color.white)
                .padding(5)
                .background(Color.red) // Cambia "redCarpet" por el color rojo que tengas definido
                .clipShape(Circle())
                .offset(x: -10, y: 10) // Ajusta la posición del puntaje
        }
    }
}


