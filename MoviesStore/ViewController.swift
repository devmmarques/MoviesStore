//
//  ViewController.swift
//  MoviesStore
//
//  Created by Marco Marques on 17/04/19.
//  Copyright © 2019 Marco Marques. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let service = MovieService(apiService: APIService())
        service.fetchReleases { [weak self] result in
            switch result {
            case let .success(response):
                print(response)
            case .failure(let error):
                print(error)
            }
        }
    }


}

