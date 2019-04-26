//
//  MoviesViewController.swift
//  MoviesStore
//
//  Created by Marco Marques on 18/04/19.
//  Copyright © 2019 Marco Marques. All rights reserved.
//

import UIKit

final class MoviesViewController: UIViewController {
    
    private var isStatusBarHidden = false
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private lazy var presenter: MoviesPresenter = {
        let presenter = MoviesPresenter(viewProtocol: self, serviceAPI: MovieService())
        return presenter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    override var prefersStatusBarHidden: Bool {
        return isStatusBarHidden
    }
    
    private func configure() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        collectionView.register(UINib(nibName: "MovieExpandableCell", bundle: nil), forCellWithReuseIdentifier: "MovieExpandableCell")
        
        presenter.fetchReleases()
    }
}

extension MoviesViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.presenter.getCountCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieExpandableCell", for: indexPath) as! MovieExpandableCell
        
        if let movie = self.presenter.getMovie(index: indexPath.row) {
            cell.configure(movie: movie)
        }
        return cell
    }
}


extension MoviesViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
    }
}

extension MoviesViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let padding: CGFloat =  15
        let collectionViewSize = collectionView.frame.size.width - padding
        
        return CGSize(width: collectionViewSize/2, height: 240)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 1, bottom: 1, right: 1) //.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5.0
    }
}

extension MoviesViewController: MoviesProtocol {
    
    
    func show() {
        self.collectionView.reloadData()
    }
    
    func showLoading() {
        
    }
    
    func dismissLoading() {
        
    }
    
    func show(error: Error) {
        
    }
}
