//
//  MoviesPresenter.swift
//  MoviesStore
//
//  Created by Marco Marques on 25/04/19.
//  Copyright © 2019 Marco Marques. All rights reserved.
//

import Foundation

final class MoviesPresenter {
    
    private let viewProtocol: MoviesProtocol
    private let serviceAPI: MovieService
    
    private var moviewResult: MovieResult?
    
    init(viewProtocol: MoviesProtocol, serviceAPI: MovieService) {
        self.viewProtocol = viewProtocol
        self.serviceAPI = serviceAPI
    }
    
    func fetchReleases() {
        self.serviceAPI.fetchReleases(){ [weak self] result in
            switch result {
                case let .success(response):
                    self?.moviewResult = response
                    self?.viewProtocol.show()
                case .failure(let error):
                    self?.viewProtocol.show(error: error)
            }
        }
    }
}

extension MoviesPresenter {
    
    func getCountCell() -> Int{
        guard let movie = moviewResult else { return 0 }
        return movie.movies.count
    }
    
    func getMovie(index: Int) -> Movie? {
        guard let movie = moviewResult else { return nil }
        return movie.movies[index]
    }
}
