//
//  BuyPackageViewController.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 07/03/23.
//

import UIKit

class BuyPackageViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var packageView: UIView!
    @IBOutlet weak var internetPackageLabel: UILabel!
    @IBOutlet weak var packageNameLabel: UILabel!
    @IBOutlet weak var detailPackageLabel: UILabel!
    @IBOutlet weak var backToHomeButton: UIButton!
    
    var model: InternetPackage?
    var aString: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupSuccessUI()
        setupSuccessData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func setupSuccessData() {
        packageNameLabel.text = model?.packageName
        if let dataDetail = model?.packageDetails {
            for (index, item) in dataDetail.enumerated() where index != dataDetail.count - 1 {
                aString?.append("\(item.quantity) \(item.type) + ")
            }
            aString?.append("\(dataDetail.last?.quantity ?? "") \(dataDetail.last?.type ?? "")")
        }
        
        detailPackageLabel.text = aString
        detailPackageLabel.contentMode = .scaleAspectFill
    }
        
    func setupSuccessUI() {
        successImage.image = UIImage(named: "success")
        titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.text = "Pembayaran Berhasil"
        
        subtitleLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        subtitleLabel.textAlignment = .center
        subtitleLabel.textColor = UIColor.lightGray
        subtitleLabel.text = "Pembayaran paket internet telah berhasil. Kami akan memberitahu kamu jika paket sudah diaktifkan."
        subtitleLabel.numberOfLines = 0
        
        packageView.layer.borderColor = UIColor.lightGray.cgColor
        packageView.layer.borderWidth = 1
        
        internetPackageLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        internetPackageLabel.textAlignment = .center
        internetPackageLabel.text = "PAKET INTERNET"
        
        packageNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        packageNameLabel.textAlignment = .center
//        packageNameLabel.text = "Combo OMG! 6.5 GB"
        
        detailPackageLabel.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        detailPackageLabel.textAlignment = .center
        detailPackageLabel.textColor = UIColor.lightGray
//        detailPackageLabel.text = "4.5 GB Internet + 2 GB OMG! + 60 SMS Tsel + 100 Mins Voice Tsel"
        detailPackageLabel.numberOfLines = 0
        
        backToHomeButton.addTarget(self, action: #selector(backToHomeButtonTapped(_:)), for: .touchUpInside)
        backToHomeButton.backgroundColor = UIColor(rgb: 0xEC2028)
        backToHomeButton.setTitle("Kembali ke Home", for: .normal)
        backToHomeButton.setTitleColor(UIColor.white, for: .normal)
        backToHomeButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        
        backToHomeButton.layer.cornerRadius = 4
        backToHomeButton.layer.masksToBounds = true
        
        }
        @objc func backToHomeButtonTapped(_ sender: Any) {
            self.navigationController?.popToRootViewController(animated: true)
    }
    
}
