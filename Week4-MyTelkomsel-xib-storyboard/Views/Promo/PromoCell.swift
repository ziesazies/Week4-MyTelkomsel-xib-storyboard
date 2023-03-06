//
//  PromoCell.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 06/03/23.
//

import UIKit

class PromoCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var promoImage: UIImageView!
    
    static let identifier = "promoCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupPromoUI() {
        promoImage.image = UIImage(named: "thumb1")
        containerView.layer.cornerRadius = 4
        containerView.layer.masksToBounds = true
    }

}
