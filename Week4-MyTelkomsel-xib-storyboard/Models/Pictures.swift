//
//  Pictures.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 08/03/23.
//

import Foundation

struct Pictures {
    var image: String
    var label: String?
}

public struct PicturesProvider {
    static func promos() -> [Pictures] {
        return [
            Pictures(image: "promo1", label: ""),
            Pictures(image: "promo2", label: ""),
//            Pictures(image: "promo3", label: "")
        ]
    }
    
    static func vouchers() -> [Pictures] {
        return [
            Pictures(image: "voucher1", label: "Double Benefits from DOUBLE UNTUNG"),
            Pictures(image: "voucher2", label: "Join Undi-Undi Hepi 2020!")
        ]
    }
}
