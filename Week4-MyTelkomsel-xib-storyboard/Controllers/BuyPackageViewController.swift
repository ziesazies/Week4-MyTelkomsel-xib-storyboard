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
    var listOfPackage: String? = ""
    
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
        successImage.image = UIImage(named: "success")
        
        packageNameLabel.text = model?.packageName
        if let dataDetail = model?.packageDetails {
            for (index, item) in dataDetail.enumerated() where index != dataDetail.count - 1 {
                listOfPackage?.append("\(item.quantity) \(item.type) + ")
            }
            listOfPackage?.append("\(dataDetail.last?.quantity ?? "") \(dataDetail.last?.type ?? "")")
        }
        
        detailPackageLabel.text = listOfPackage
    }
        
    func setupSuccessUI() {
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
        
        detailPackageLabel.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        detailPackageLabel.textAlignment = .center
        detailPackageLabel.textColor = UIColor.lightGray
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
