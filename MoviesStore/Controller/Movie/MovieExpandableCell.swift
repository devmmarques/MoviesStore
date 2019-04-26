//
//  MovieExpandableCell.swift
//  MoviesStore
//
//  Created by Marco Marques on 18/04/19.
//  Copyright © 2019 Marco Marques. All rights reserved.
//

import UIKit

final class MovieExpandableCell: UICollectionViewCell {

    // MARK: Outlets
    @IBOutlet weak var viewMoview: UIView!
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var imageMovie: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
   
    func configure(movie: Movie) {
        
        self.titleMovie.text = movie.titleOriginal
        self.imageMovie.imageFromURL(urlString: EnvironmentConfig.hostImage + movie.posterPath)
    }
}
