//
//  DetailPackageViewController.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 07/03/23.
//

import UIKit

class DetailPackageViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var buyButton: UIButton!
    
    var model: InternetPackage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTableDetail()
    }
    
    func setupTableDetail() {
        tableView.register(UINib(nibName: "DetailPriceCell", bundle: nil), forCellReuseIdentifier: DetailPriceCell.identifier)
        tableView.register(UINib(nibName: "DurationCell", bundle: nil), forCellReuseIdentifier: DurationCell.identifier)
        tableView.register(UINib(nibName: "DetailPackageCell", bundle: nil), forCellReuseIdentifier: DetailPackageCell.identifier)
        tableView.register(UINib(nibName: "DescriptionCell", bundle: nil), forCellReuseIdentifier: DescriptionCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorStyle = .none
        
        buyButton.backgroundColor = UIColor(rgb: 0xEC2028)
        buyButton.setTitle("BELI SEKARANG", for: .normal)
        buyButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        buyButton.setTitleColor(UIColor.white, for: .normal)
        buyButton.addTarget(self, action: #selector(buyButtonTapped(_:)), for: .touchUpInside)
        
        buyButton.layer.cornerRadius = 4
        buyButton.layer.masksToBounds = true
        
    }
    
    @objc func buyButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "BuyPackageViewController") as! BuyPackageViewController
        viewController.model = self.model
        navigationController?.pushViewController(viewController, animated: true)
    }
}


extension DetailPackageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailPriceCell.identifier) as? DetailPriceCell else { return UITableViewCell() }
            
            cell.setupDetailPriceUI()
            
            return cell
            
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DurationCell.identifier) as? DurationCell else { return UITableViewCell() }
            
            cell.setupDurationUI()
            cell.durationLabel.text = model?.duration
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailPackageCell.identifier, for: indexPath) as? DetailPackageCell else { return UITableViewCell() }
            cell.setupDetailUI()
            cell.setupDetailData(model: model)
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DescriptionCell.identifier, for: indexPath) as? DescriptionCell else { return UITableViewCell() }
            cell.setupDescriptionUI()
            cell.setupDescriptionData(model: model)
            
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return UITableView.automaticDimension
        case 1:
            return UITableView.automaticDimension
        case 2:
            return UITableView.automaticDimension
        case 3:
            return UITableView.automaticDimension
        default:
            return 0
        }
    }
}
