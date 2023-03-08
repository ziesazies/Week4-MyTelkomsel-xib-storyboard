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
    
    static let identifier = "detailPackageCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupDetailData(model: InternetPackage?) {
        if let detail = model {
            for i in 0..<detail.packageDetails.count {
                let stackView = UIStackView()
                stackView.alignment = .fill
                stackView.axis = .horizontal
                stackView.distribution = .fillEqually
                
                let label1 = UILabel()
//                label1.text = packageNameList[i]
                label1.text = detail.packageDetails[i].type
                label1.textAlignment = .left
                label1.font = UIFont.systemFont(ofSize: 14)
                
                let label2 = UILabel()
//                label2.text = quotaCount[i]
                label2.text = detail.packageDetails[i].quantity
                label2.textAlignment = .right
                label2.font = UIFont.systemFont(ofSize: 14, weight: .bold)
                
                stackView.addArrangedSubview(label1)
                stackView.addArrangedSubview(label2)
                
                self.stackView.addArrangedSubview(stackView)
            }
            
        }
        
    }
    
    func setupDetailUI() {
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        titleLabel.text = "Rincian Paket"
        titleLabel.textColor = UIColor(rgb: 0x1E272E)
        
        self.stackView.spacing = 4
        
    }
}
