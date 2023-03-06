//
//  PackageCell.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 06/03/23.
//

import UIKit

class PackageCell: UICollectionViewCell {
    
    @IBOutlet weak var quotaLabel: UILabel!
    @IBOutlet weak var priceBeforeLabel: UILabel!
    @IBOutlet weak var priceAfterLabel: UILabel!
    @IBOutlet weak var quotaDurationBg: UIView!
    @IBOutlet weak var quotaDurationLabel: UILabel!
    @IBOutlet weak var quotaNameLabel: UILabel!
    @IBOutlet weak var bookmarkButton: UIImageView!
    
    static let identifier = "packageCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
