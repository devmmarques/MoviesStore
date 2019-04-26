//
//  EnvironmentConfig.swift
//  MoviesStore
//
//  Created by Marco Marques on 17/04/19.
//  Copyright © 2019 Marco Marques. All rights reserved.
//

import Foundation

struct EnvironmentConfig {
    
    private static var environments: [String: Any]? {
        guard let dict: [String: Any] = Bundle.main.infoDictionary?["EnvironmentConfig"] as? [String: Any] else { return nil }
        return dict
    }
    
    static var host: String {
        guard let value = environments?["HOST"] as? String else { return "" }
        return value
    }
    
    static var token: String {
        guard let value = environments?["TOKEN"] as? String else { return "" }
        return value
    }
    
    static var hostImage: String {
        guard let value = environments?["HOST_IMAGE"] as? String else { return "" }
        return value
    }
}
