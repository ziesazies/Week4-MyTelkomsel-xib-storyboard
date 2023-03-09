//
//  InternetPackagesTableCell.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 06/03/23.
//

import UIKit

class InternetPackagesTableCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier = "internetPackagesTable"
    
    var delegate: InternetPackagesViewControllerDelegate?
    
    var internetPackage: [InternetPackage]?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCollection() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "PackageCell", bundle: nil), forCellWithReuseIdentifier: PackageCell.identifier)
    }
}

extension InternetPackagesTableCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PackageCell.identifier, for: indexPath) as? PackageCell else{return UICollectionViewCell()}
        
        cell.setupPackageUI()
        if let data = internetPackage {
            cell.setupPackageData(model: data[indexPath.row])
        }
        return cell
    }
    
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return internetPackage?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 248, height: 116)
        return CGSize(width: collectionView.frame.size.width / 1.6, height: collectionView.frame.size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let model = internetPackage?[indexPath.row] {
            delegate?.navigateToDetail(model: model)
        }
    }
}
