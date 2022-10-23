//
//  MovieCell.swift
//  JasAcademyEducation2
//
//  Created by Ayan on 10/23/22.
//

import UIKit

class MovieCell: UICollectionViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var ratingView: UIView!
    @IBOutlet weak var rating: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
