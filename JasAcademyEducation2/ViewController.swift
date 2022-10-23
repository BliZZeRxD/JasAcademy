//
//  ViewController.swift
//  JasAcademyEducation2
//
//  Created by Ayan on 10/23/22.
//

import UIKit

class ViewController: UIViewController {

    let myNib = String(describing: MovieCell.self)
    @IBOutlet weak var moviesCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moviesCollection.dataSource = self
        moviesCollection.delegate = self
        let nib = UINib(nibName: myNib, bundle: .main)
        moviesCollection.register(nib, forCellWithReuseIdentifier: myNib)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 200)
    }
}
//extension ViewController: UICollectionViewDelegate{
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//    }
//}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moviesName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: myNib, for: indexPath) as! MovieCell
        cell.movieImage.image = moviesImage[indexPath.row]
        cell.movieName.text = moviesName[indexPath.row]
        cell.movieDescription.text = movieDescription[indexPath.row]
        let rating = moviesRating[indexPath.row]
        cell.rating.text = "\(rating)"
        switch rating {
        case 0...7:
            cell.ratingView.backgroundColor = .yellow
        case 7...10:
//            #2AA65C
            cell.ratingView.backgroundColor = .green
        default:
            break
        }
        cell.movieImage.layer.cornerRadius = 5
        cell.ratingView.layer.cornerRadius = 10
        return cell
    }
}
