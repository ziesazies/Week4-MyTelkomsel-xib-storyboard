//
//  DescriptionCell.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 07/03/23.
//

import UIKit

class DescriptionCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var descriptionStack: UIStackView!
    @IBOutlet weak var background: UIView!
    
    static let identifier = "descriptionCell"
    
    var dummyDesc: [String] = ["Kuota Internet dengan akses di semua jaringan (2G/3G/4G).",
"Kuota Nelpon ke Sesama Telkomsel","Kuota 2 GB OMG! untuk akses Youtube, Facebook, Instagram, MAXstream, Viu, iFlix, Klik Film, Bein Sport, dan Nickelodeon Play berlaku 30 hari.",
"Termasuk berlangganan 30 hari."]
    
    var namaPaket = "Internet OMG!"
    var durasiPaket = "30 Hari"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupDescriptionUI() {
        descriptionStack.spacing = 8
        descriptionStack.distribution = .fill
        
        titleLabel.text = "Deskripsi Paket"
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        titleLabel.textColor = UIColor(rgb: 0x1E272E)
        
        subTitleLabel.text = "Paket Internet \(namaPaket) berlaku untuk \(durasiPaket), dengan rincian kuota:"
        subTitleLabel.numberOfLines = 0
        subTitleLabel.font = UIFont.systemFont(ofSize: 14)
        subTitleLabel.textColor = UIColor(rgb: 0x1E272E)
        
        
        background.backgroundColor = UIColor(rgb: 0xF5F5F5)
        containerView.backgroundColor = UIColor.white
        
        dummyDesc.forEach { text in
            let stackView = UIStackView()
            stackView.alignment = .top
            stackView.axis = .horizontal
            stackView.distribution = .fill
            stackView.spacing = 8
           
            let pointBullet = UILabel()
            pointBullet.text = "\u{2022}"
            pointBullet.textAlignment = .left
            pointBullet.font = UIFont.systemFont(ofSize: 14, weight: .heavy)
            
            let label = UILabel()
            label.numberOfLines = 0
            label.text = text
            label.font = UIFont.systemFont(ofSize: 14)
            label.textAlignment = .left
            
           stackView.addArrangedSubview(pointBullet)
            stackView.addArrangedSubview(label)
            self.descriptionStack.addArrangedSubview(stackView)
        }
    }
}
