//
//  DurationCell.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 07/03/23.
//

import UIKit

class DurationCell: UITableViewCell {

    @IBOutlet weak var background: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var viewBg: UIView!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var durationImage: UIImageView!
    
    static let identifier = "durationCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupDurationUI() {
        titleLabel.text = "Masa Aktif Paket"
        durationLabel.text = "30 HARI"
        
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        durationLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        
        titleLabel.textColor = UIColor(rgb: 0x1E272E)
        durationLabel.textColor = UIColor(rgb: 0xEC2028)
        
        durationImage.image = UIImage(named: "durationred")
        
        viewBg.layer.cornerRadius = 18
        viewBg.layer.masksToBounds = true
        viewBg.backgroundColor = UIColor(rgb: 0xF1F2F6)
        background.backgroundColor = UIColor(rgb: 0xF5F5F5)
        containerView.backgroundColor = UIColor.white
    }
    
}
