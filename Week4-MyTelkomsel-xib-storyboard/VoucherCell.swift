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
    
    func setupVoucherUI() {
        voucherImage.image = UIImage(named: "voucher1")
        voucherDescLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        voucherDescLabel.textColor = UIColor(rgb: 0x1E272E)
        voucherDescLabel.numberOfLines = 2
        voucherDescLabel.text = "Double Benefits from DOUBLE UNTUNG"
    }

}
