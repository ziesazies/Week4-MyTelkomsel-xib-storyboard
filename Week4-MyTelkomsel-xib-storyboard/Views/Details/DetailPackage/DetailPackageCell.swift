//
//  DetailPackageCell.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 07/03/23.
//

import UIKit

class DetailPackageCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    
    var packageNameList: [String] = ["Internet", "OMG", "SMS Tsel", "Voice Tsel"]
    var quotaCount: [String] = ["4.5GB", "2GB", "60 SMS", "100 Mins"]
    
    static let identifier = "detailPackageCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupDetailUI() {
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        titleLabel.text = "Rincian Paket"
        titleLabel.textColor = UIColor(rgb: 0x1E272E)
        
        self.stackView.spacing = 16
        
        for i in 0..<packageNameList.count {
            let stackView = UIStackView()
            stackView.alignment = .fill
            stackView.axis = .horizontal
            stackView.distribution = .fillEqually
            
            let label1 = UILabel()
            label1.text = packageNameList[i]
            label1.textAlignment = .left
            label1.font = UIFont.systemFont(ofSize: 14)
            
            let label2 = UILabel()
            label2.text = quotaCount[i]
            label2.textAlignment = .right
            label2.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            
            stackView.addArrangedSubview(label1)
            stackView.addArrangedSubview(label2)
            
            self.stackView.addArrangedSubview(stackView)
            
        }
    }
}
