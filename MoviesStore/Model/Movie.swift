//
//  Movie.swift
//  MoviesStore
//
//  Created by Marco Marques on 17/04/19.
//  Copyright © 2019 Marco Marques. All rights reserved.
//

import Foundation

struct Movie: Codable {
    
    let countVote: Int
    let id: Int
    let isVideo: Bool
    let averageVote: Double
    let title: String
    let popularity: Double
    let posterPath: String
    let language: String
    let titleOriginal: String
    let genreIds: [Int]
    let backdropPath: String
    let isAdult: Bool
    let overview: String
    let releaseDate: String
    
    init(countVote: Int, id: Int, isVideo: Bool, averageVote: Double, title: String, popularity: Double, posterPath: String, language: String, titleOriginal: String, genreIds: [Int], backdropPath: String, isAdult: Bool, overview: String, releaseDate: String) {
        self.countVote = countVote
        self.id = id
        self.isVideo = isVideo
        self.averageVote = averageVote
        self.title = title
        self.popularity = popularity
        self.posterPath = posterPath
        self.language = language
        self.titleOriginal = titleOriginal
        self.genreIds = genreIds
        self.backdropPath = backdropPath
        self.isAdult = isAdult
        self.overview = overview
        self.releaseDate = releaseDate
    }
    
    
    private enum CodingKeys: String, CodingKey {
        case countVote = "vote_count"
        case id = "id"
        case isVideo = "video"
        case averageVote = "vote_average"
        case title = "title"
        case popularity = "popularity"
        case posterPath = "poster_path"
        case language = "original_language"
        case titleOriginal = "original_title"
        case genreIds = "genre_ids"
        case backdropPath = "backdrop_path"
        case isAdult = "adult"
        case overview = "overview"
        case releaseDate = "release_date"
    }
}
