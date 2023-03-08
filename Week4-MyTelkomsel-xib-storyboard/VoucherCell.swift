//
//  VoucherCell.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 06/03/23.
//

import UIKit

class VoucherCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var voucherImage: UIImageView!
    @IBOutlet weak var voucherDescLabel: UILabel!
    
    static let identifier = "voucherCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupVoucherData(model: Pictures?) {
        if let picture = model {
            voucherImage.image = UIImage(named: picture.image)
            voucherDescLabel.text = picture.label
        }
    }
    func setupVoucherUI() {
        voucherDescLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        voucherDescLabel.textColor = UIColor(rgb: 0x1E272E)
        voucherDescLabel.numberOfLines = 2
        self.contentView.layer.cornerRadius = 2
        self.contentView.layer.masksToBounds = true
        
        layer.masksToBounds = false
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 2, height: 2)
        layer.shadowColor = UIColor.black.cgColor
    }

}
