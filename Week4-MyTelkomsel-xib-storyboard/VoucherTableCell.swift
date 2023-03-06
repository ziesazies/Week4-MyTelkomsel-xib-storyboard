//
//  VoucherTableCell.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 06/03/23.
//

import UIKit

class VoucherTableCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier = "voucherTableCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCollection() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "VoucherCell", bundle: nil), forCellWithReuseIdentifier: VoucherCell.identifier)
    }
}

extension VoucherTableCell: UICollectionViewDelegateFlowLayout {
    
}

extension VoucherTableCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VoucherCell.identifier, for: indexPath) as? VoucherCell else { return UICollectionViewCell() }
        
        cell.setupVoucherUI()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 248, height: 172)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 24, bottom: 16, right: 24)
    }
    
    
    
}
