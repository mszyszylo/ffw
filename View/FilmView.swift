//
//  Film+View.swift
//  ffw_szyszylo
//
//  Created by Michael Szyszylo on 20.11.23.
//

import SwiftUI

struct FilmView: View {
    let films: Set<Film>

    var body: some View {
        if films.isEmpty {
            Text("None")
        }
        ForEach(Array(films), id: \.self) { film in
            NavigationLink(film.title) {
                Form {
                    LabeledContent("Episode Number:", value: film.episode_id.description)
                    LabeledContent("Director:", value: film.director.description)
                    LabeledContent("Producer:", value: film.producer.description)
                    LabeledContent("Release Date:", value: film.release_date.iso8601Formatted())
                    Text(film.opening_crawl.description)
                }
                .navigationBarTitle(film.title)
            }
        }
    }
}
