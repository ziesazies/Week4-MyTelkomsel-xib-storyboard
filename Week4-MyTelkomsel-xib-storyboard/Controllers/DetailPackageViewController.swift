//
//  DetailPackageViewController.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 07/03/23.
//

import UIKit

class DetailPackageViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var buyButton: UIButton!
    
    var dataDetail: InternetPackage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupDetailNavigationBar()
        setupDetailTable()
        setupBuyButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func setupDetailNavigationBar() {
        title = "Detail Paket"
        let backButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: UIBarButtonItem.Style.plain, target: navigationController, action: #selector(UINavigationController.popViewController(animated:)))
        backButton.tintColor = UIColor.black
        navigationItem.leftBarButtonItem = backButton
        navigationController?.interactivePopGestureRecognizer?.delegate = self
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .never
        
    }
    
    func setupDetailTable() {
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        tableView.register(UINib(nibName: "DetailPriceCell", bundle: nil), forCellReuseIdentifier: DetailPriceCell.identifier)
        tableView.register(UINib(nibName: "DurationCell", bundle: nil), forCellReuseIdentifier: DurationCell.identifier)
        tableView.register(UINib(nibName: "DetailPackageCell", bundle: nil), forCellReuseIdentifier: DetailPackageCell.identifier)
        tableView.register(UINib(nibName: "DescriptionCell", bundle: nil), forCellReuseIdentifier: DescriptionCell.identifier)
    }
    
    func setupBuyButton() {
        buyButton.backgroundColor = UIColor(rgb: 0xEC2028)
        buyButton.setTitle("BELI SEKARANG", for: .normal)
        buyButton.setTitleColor(UIColor.white, for: .normal)
        buyButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        buyButton.addTarget(self, action: #selector(buyButtonTapped(_:)), for: .touchUpInside)
        
        buyButton.layer.cornerRadius = 4
        buyButton.layer.masksToBounds = true
        addTopShadow(forView: bottomView)
    }
    
    func addTopShadow(forView view: UIView, shadowHeight height: CGFloat = 5) {
                let shadowPath = UIBezierPath()
                shadowPath.move(to: CGPoint(x: 0, y: 0))
                shadowPath.addLine(to: CGPoint(x: view.bounds.width, y:0))
                shadowPath.addLine(to: CGPoint(x: view.bounds.width-20, y: view.bounds.height ))
                shadowPath.addLine(to: CGPoint(x: view.bounds.width-20, y: view.bounds.height))
                shadowPath.close()

                view.layer.shadowColor = UIColor.black.cgColor
                view.layer.shadowOpacity = 0.3
                view.layer.masksToBounds = false
                view.layer.shadowPath = shadowPath.cgPath
                view.layer.shadowRadius = 4
            }
    
    @objc func buyButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "BuyPackageViewController") as! BuyPackageViewController
        viewController.model = self.dataDetail
        navigationController?.pushViewController(viewController, animated: true)
    }
}


extension DetailPackageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailPriceCell.identifier) as? DetailPriceCell else { return UITableViewCell() }
            cell.setupDetailPriceUI()
            if let dataPrice = dataDetail {
                cell.setupDetailPriceData(before: dataPrice.priceBefore, after: dataPrice.priceAfter)
                
            }
            return cell
            
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DurationCell.identifier) as? DurationCell else { return UITableViewCell() }
            cell.setupDurationUI()
            cell.durationLabel.text = dataDetail?.duration
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailPackageCell.identifier, for: indexPath) as? DetailPackageCell else { return UITableViewCell() }
            cell.setupDetailUI()
            cell.setupDetailData(model: dataDetail)
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DescriptionCell.identifier, for: indexPath) as? DescriptionCell else { return UITableViewCell() }
            cell.setupDescriptionUI()
            cell.setupDescriptionData(model: dataDetail)
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
