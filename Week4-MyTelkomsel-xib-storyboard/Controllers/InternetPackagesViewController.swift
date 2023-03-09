//
//  ViewController.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 06/03/23.
//

import UIKit

protocol InternetPackagesViewControllerDelegate {
    func navigateToDetail(model: InternetPackage)
}

class InternetPackagesViewController: UIViewController, InternetPackagesViewControllerDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var delegate: InternetPackagesViewControllerDelegate?
    
    let dataInternetPackage = InternetPackageProvider.all()
    let dataDirumahAja = InternetPackageProvider.dirumahAja()
    let dataPromos = PicturesProvider.promos()
    let dataVouchers = PicturesProvider.vouchers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Paket Internet"
        delegate = self
        setupInternetPackageTable()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func navigateToDetail(model: InternetPackage) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "DetailPackageViewController") as! DetailPackageViewController
        
        viewController.dataDetail = model
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func setupInternetPackageTable() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        
        tableView.register(UINib(nibName: "InternetPackagesTableCell", bundle: nil), forCellReuseIdentifier: InternetPackagesTableCell.identifier)
        tableView.register(UINib(nibName: "PromoTableCell", bundle: nil), forCellReuseIdentifier: PromoTableCell.identifier)
        tableView.register(UINib(nibName: "VoucherTableCell", bundle: nil), forCellReuseIdentifier: VoucherTableCell.identifier)
    }

}

extension InternetPackagesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: PromoTableCell.identifier, for: indexPath) as? PromoTableCell else { return UITableViewCell() }
            cell.setupCollection()
            cell.pictureModel = dataPromos
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: InternetPackagesTableCell.identifier, for: indexPath) as? InternetPackagesTableCell else { return UITableViewCell() }
            cell.setupCollection()
            cell.delegate = self
            cell.internetPackage = dataInternetPackage
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: InternetPackagesTableCell.identifier, for: indexPath) as? InternetPackagesTableCell else { return UITableViewCell() }
            cell.setupCollection()
            cell.delegate = self
            cell.internetPackage = dataInternetPackage
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: VoucherTableCell.identifier, for: indexPath) as? VoucherTableCell
            else { return UITableViewCell() }
            cell.setupCollection()
            cell.pictures = dataVouchers
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: InternetPackagesTableCell.identifier, for: indexPath) as? InternetPackagesTableCell else { return UITableViewCell() }
            cell.setupCollection()
            cell.delegate = self
            cell.internetPackage = dataDirumahAja
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
            return self.tableView.frame.size.height / 6
        case 1:
            return self.tableView.frame.size.height / 6
        case 2:
            return self.tableView.frame.size.height / 6
        case 3:
            return self.tableView.frame.size.height / 4
        case 4:
            return self.tableView.frame.size.height / 6
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionView = UIView()
        let label = UILabel(frame: CGRect(x: 16, y: 0, width: tableView.bounds.width - (20*2), height: 20))
        
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
        case 4:
            label.textColor = UIColor.black
            label.text = "#DirumahAja"
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
        return 5
    }
    
}
