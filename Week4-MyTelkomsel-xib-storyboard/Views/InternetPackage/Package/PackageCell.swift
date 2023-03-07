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
    @IBOutlet weak var durationImage: UIImageView!
    
    static let identifier = "packageCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupPackageUI() {
        layer.borderColor = UIColor(rgb: 0xF1F2F6).cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 4
        layer.masksToBounds = true
        quotaLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        priceAfterLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        priceBeforeLabel.font = UIFont.systemFont(ofSize: 12)
        quotaDurationLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        quotaNameLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "Rp99.000")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length))
        priceBeforeLabel.attributedText = attributeString
        
        durationImage.image = UIImage(named: "duration")?.withRenderingMode(.alwaysOriginal)
        bookmarkButton.image = UIImage(systemName: "bookmark.fill")?.withTintColor(UIColor(rgb: 0xCED6E0)).withRenderingMode(.alwaysOriginal)
        
        quotaDurationBg.layer.cornerRadius = 12
        
        quotaLabel.textColor = UIColor(rgb: 0x1E272E)
        priceBeforeLabel.textColor = UIColor(rgb: 0x747D8C)
        priceAfterLabel.textColor = UIColor(rgb: 0xEC2028)
        quotaDurationBg.backgroundColor = UIColor(rgb: 0xF1F2F6)
    }

}
