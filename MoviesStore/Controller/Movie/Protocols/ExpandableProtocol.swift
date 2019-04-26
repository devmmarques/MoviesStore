//
//  Expandable.swift
//  MoviesStore
//
//  Created by Marco Marques on 18/04/19.
//  Copyright © 2019 Marco Marques. All rights reserved.
//

import UIKit

protocol ExpandableProtocol {
    func collapse()
    func expand(in collectionView: UICollectionView)
}
