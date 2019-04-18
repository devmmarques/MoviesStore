//
//  MovieRouter.swift
//  MoviesStore
//
//  Created by Marco Marques on 17/04/19.
//  Copyright © 2019 Marco Marques. All rights reserved.
//

import Foundation

enum MovieRouter {
    case fetchReleaseMovie()
    case fetchTopMovie()
}

extension MovieRouter: APIRouter {
    
    var path: String {
        switch self {
        case .fetchReleaseMovie():
            return "/3/movie/upcoming?api_key=02d383a321936c773ae9fd3156306127"
        case .fetchTopMovie():
            return "3/movie/top_rated?api_key=02d383a321936c773ae9fd3156306127"
        }
    }
    
    var method: NamespaceHTTPMethod {
        return .get
    }
    
}
