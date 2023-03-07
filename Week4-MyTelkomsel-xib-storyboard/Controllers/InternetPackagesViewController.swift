//
//  ViewController.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 06/03/23.
//

import UIKit

protocol InternetPackagesViewControllerDelegate {
    func navigateToDetail()
}

class InternetPackagesViewController: UIViewController, InternetPackagesViewControllerDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var delegate: InternetPackagesViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        delegate = self
        setupTable()
    }
    
    func navigateToDetail() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "DetailPackageViewController") as! DetailPackageViewController
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func setupTable() {
        title = "Paket Internet"
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "InternetPackagesTableCell", bundle: nil), forCellReuseIdentifier: InternetPackagesTableCell.identifier)
        tableView.register(UINib(nibName: "PromoTableCell", bundle: nil), forCellReuseIdentifier: PromoTableCell.identifier)
        tableView.register(UINib(nibName: "VoucherTableCell", bundle: nil), forCellReuseIdentifier: VoucherTableCell.identifier)
        
        tableView.separatorStyle = .none
    }

}

extension InternetPackagesViewController: UITableViewDelegate {
    
}

extension InternetPackagesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: PromoTableCell.identifier, for: indexPath) as? PromoTableCell else { return UITableViewCell() }
            
            cell.setupCollection()
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: InternetPackagesTableCell.identifier, for: indexPath) as? InternetPackagesTableCell else { return UITableViewCell() }
            cell.setupCollection()
            cell.delegate = self
            
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: InternetPackagesTableCell.identifier, for: indexPath) as? InternetPackagesTableCell else { return UITableViewCell() }
            cell.setupCollection()
            cell.delegate = self
            
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: VoucherTableCell.identifier, for: indexPath) as? VoucherTableCell
            else { return UITableViewCell() }
            cell.setupCollection()
            
            return cell
        default:
            return UITableViewCell()
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 110
        case 1:
            return 136
        case 2:
            return 136
        case 3:
            return 192
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionView = UIView()
        let label = UILabel(frame: CGRect(x: 24, y: 0, width: tableView.bounds.width - (20*2), height: 20))
        
        switch section {
        case 0:
            return nil
        case 1:
            label.textColor = UIColor.black
            label.text = "Langganan Kamu"
            label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        case 2:
            label.textColor = UIColor.black
            label.text = "Popular"
            label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        case 3:
            label.textColor = UIColor.black
            label.text = "Cari Voucher, Yuk!"
            label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        default:
            return nil
        }
        sectionView.addSubview(label)
        return sectionView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 0.0001 : 20
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
}
