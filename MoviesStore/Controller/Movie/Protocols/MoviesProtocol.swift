//
//  MoviesProtocol.swift
//  MoviesStore
//
//  Created by Marco Marques on 25/04/19.
//  Copyright © 2019 Marco Marques. All rights reserved.
//

import Foundation

protocol MoviesProtocol: AnyObject {
    func show()
    func showLoading()
    func dismissLoading()
    func show(error: Error)
}
