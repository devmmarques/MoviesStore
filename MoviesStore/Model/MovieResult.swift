//
//  MovieResult.swift
//  MoviesStore
//
//  Created by Marco Marques on 17/04/19.
//  Copyright © 2019 Marco Marques. All rights reserved.
//

import Foundation

struct MovieResult: Codable {
    
    let page: Int?
    let totalResult: Int?
    let totalPage: Int?
    let movies: [Movie]
    
    init(page: Int?, totalResult: Int?, totalPage: Int?, movies: [Movie]) {
        self.page = page
        self.totalResult = totalResult
        self.totalPage = totalPage
        self.movies = movies
    }
    
    private enum CodingKeys: String, CodingKey {
        case page = "page"
        case totalResult = "total_results"
        case totalPage = "total_pages"
        case movies = "results"
    }
    
}
