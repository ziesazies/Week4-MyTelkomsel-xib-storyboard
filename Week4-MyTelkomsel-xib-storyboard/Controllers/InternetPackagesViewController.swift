//
//  ViewController.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 06/03/23.
//

import UIKit

class InternetPackagesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTable()
    }
    
    func setupTable() {
        title = "Paket Internet"
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "InternetPackagesTableCell", bundle: nil), forCellReuseIdentifier: InternetPackagesTableCell.identifier)
        tableView.register(UINib(nibName: "PromoTableCell", bundle: nil), forCellReuseIdentifier: PromoTableCell.identifier)
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
            
            return cell
            
        default:
            return UITableViewCell()
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
}
