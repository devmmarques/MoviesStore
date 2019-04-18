//
//  MovieService.swift
//  MoviesStore
//
//  Created by Marco Marques on 17/04/19.
//  Copyright © 2019 Marco Marques. All rights reserved.
//

import Foundation

protocol MovieServiceProtol  {
    func fetchReleases(completion: @escaping (APIResult<MovieResult>) -> Void)
    func fetchTopMovie(completion: @escaping (APIResult<MovieResult>) -> Void)
}

final class MovieService: NSObject, MovieServiceProtol {
    
    private let apiService: APIServiceProtocol
    
    override init() {
        self.apiService = APIService()
    }
    
    init(apiService: APIServiceProtocol) {
        self.apiService = apiService
    }
    
    func fetchReleases(completion: @escaping (APIResult<MovieResult>) -> Void) {
        let router = MovieRouter.fetchReleaseMovie()
        self.apiService.request(router: router) { (response: APIResult<MovieResult>) in
            switch response {
            case let .success(value):
                completion(.success(value))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }
    
    func fetchTopMovie(completion: @escaping (APIResult<MovieResult>) -> Void) {
        let router = MovieRouter.fetchTopMovie()
        self.apiService.request(router: router) { (response: APIResult<MovieResult>) in
            switch response {
            case let .success(value):
                completion(.success(value))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }
    
    
    
    
}
