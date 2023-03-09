//
//  InternetPackage.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 08/03/23.
//

import Foundation

struct InternetPackage {
    var packageName: String
    var quota: String
    var priceBefore: String
    var priceAfter: String
    var duration: String
    var packageDetails: [Details]
    var packageDescription: [String]
}

struct Details {
    var type: String
    var quantity: String
}

public struct InternetPackageProvider {
    static func all() -> [InternetPackage] {
        return [
            InternetPackage(packageName: "Combo OMG!", quota: "35 GB", priceBefore: "Rp181.000", priceAfter: "Rp177.000", duration: "30 Hari", packageDetails:
                           [
                            Details(type: "Internet", quantity: "33 GB"),
                            Details(type: "OMG!", quantity: "2 GB"),
                            Details(type: "SMS TSEL", quantity: "200 SMS"),
                            Details(type: "Prime Video Mobile", quantity: "30 DAY"),
                            Details(type: "Voice TSEL", quantity: "200 MINUTE")
                           ],
                           packageDescription:
                                [
                                    "Kuota Internet dengan akses di semua jaringan (2G/3G/4G).",
                                    "Kuota 2 GB OMG! untuk akses YouTube, Facebook, Instagram, MAXstream, VIU, Klik Film berlaku 30 hari.",
                                    "600 menit telepon ke sesama Telkomsel.",
                                    "Langganan Prime Video Mobile 1 bulan. Prime Video Mobile hanya dapat diakses pada aplikasi Prime Video melalui handphone."
                           ]),
            InternetPackage(packageName: "Best Deal Internet", quota: "37 GB", priceBefore: "Rp190.000", priceAfter: "Rp171.000", duration: "30 Hari", packageDetails:
                                [
                                    Details(type: "MAXstream", quantity: "2 GB"),
                                    Details(type: "Internet", quantity: "35 GB")
                                ],
                           packageDescription:
                                [
                                    "Dapatkan paket BestDeal dengan harga spesial di sini."
                                ]),
            InternetPackage(packageName: "Combo SAKTI", quota: "55 GB", priceBefore: "Rp135.000", priceAfter: "Rp134.000", duration: "30 Hari", packageDetails:
                                [
                                Details(type: "SosChat,Video,Gms,Msc,TikTok", quantity: "20 GB"),
                                Details(type: "Internet", quantity: "35 GB"),
                                Details(type: "SMS TSEL", quantity: "400 SMS"),
                                Details(type: "Voice TSEL", quantity: "200 MINUTE"),
                                Details(type: "Prime Video Mobile", quantity: "30 DAY")
                                ],
                            packageDescription:
                                [
                                    "Kuota Internet dapat digunakan di semua jaringan 2G/3G/4G/5G.",
                                    "Telepon ke sesama pelanggan Telkomsel.",
                                    "SMS ke sesama pelanggan Telkomsel.",
                                    "Kuota utama akan menjadi prioritas konsumsi pertama bagi pelanggan, kemudian diikuti kuota Apps untuk beberapa Apps sesuai ketentuan.",
                                    "Kuota Apps akan otomatis dapat digunakan jika kuota utama telah habis pada aplikasi sesuai ketentuan yaitu: WhatsApp, LINE, MusicMAX, GamesMAX, MAXstream, Facebook, Instagram, YouTube, TikTok dan Zoom.",
                                    "Akses Internet ke kuota Apps berlaku kuota pemakaian batas wajar. Bila kuota pemakaian batas wajar sudah habis, kecepatan akan disusaikan menjadi 128 kbps (tanpa memotong pulsa pelanggan) selama masa aktif paket berlaku.",
                                    "Akses internet ke aplikasi lain diluar kuota Apps jika kuota utama telah habis tetap bisa dilakukan dengan kecepatan maksimum 128 kbps (tanpa memotong pulsa pelanggan) selama masa aktif paket masih berlaku."
                                    
                            ]
                           ),
            InternetPackage(packageName: "GigaMAX Fit", quota: "6 GB", priceBefore: "", priceAfter: "Rp25.000", duration: "30 Hari", packageDetails:
                                [
                                    Details(type: "WeTV", quantity: "30 DAY"),
                                    Details(type: "Langganan Basic", quantity: "30 HARI"),
                                    Details(type: "Vidio Gold", quantity: "30 DAY"),
                                    Details(type: "MAXstream", quantity: "5 GB"),
                                    Details(type: "Internet", quantity: "1 GB"),
                                    Details(type: "VIU", quantity: "30 DAY"),
                                    Details(type: "Genflix", quantity: "30 DAY"),
                                    Details(type: "Sushiroll", quantity: "30 DAY")
                                ],
                           packageDescription:
                                [
                                    "Kuota Internet 1GB dan MAXstream 5GB berlaku 30 hari.",
                                    "Langganan MAXstream, Genflix, Sushiroll, Vidio Gold, VIU, WETV 30 hari.",
                                    "Akses premium tayangan di MAXstream (Original MAXstream, Film dan Serial Asia, Hollywood, Bollywood, Anime hingga channel hiburan, lokal dan internasional) selama 30 hari kecuali film/serial HBO GO.",
                                    "Kuota MAXstream dapat digunakan saat mengakses aplikasi MAXstream, TikTok, Disney+ Hotstar, Prime Video, CATCHPLAY+, Lionsgate Play, Netflix, Genflix, HBO GO, RCTI+, Sushiroll, Snack Video, TrueID, UseeTV Go, Vidio, Vision+, VIU, WETV (tidak termasuk langganan Disney+ Hotstar, Prime Video, HBO GO, Netflix, RCTI+, TrueID, UseeTV Go dan Vision+)."
                           ]),
            InternetPackage(packageName: "Paket ComboFit", quota: "3.5GB", priceBefore: "", priceAfter: "Rp55.000", duration: "30 Hari", packageDetails:
                                [
                                    Details(type: "ALLIANZ", quantity: "30 HARI"),
                                    Details(type: "Data Allnet", quantity: "1.5 GB"),
                                    Details(type: "FITA Premium", quantity: "30 HARI"),
                                    Details(type: "Kuota FITA", quantity: "2 GB")
                                ],
                           packageDescription:
                                [
                                    "Kuota Internet 1.5GB dengan akses di semua jaringan (2G/3G/4G).",
                                    "Kuota 2GB Fita untuk akses aplikasi Fita.",
                                    "Termasuk berlangganan Fita Premium 30 hari.",
                                    "Fita premium termasuk seluruh akses aplikasi Fita, Multiplier Poin, dan diskon yellowfit.",
                                    "Bonus data hingga 20GB dengan melakukan aktivitas kesehatan dan mengumpulkan Poin Fita.",
                                    "1 Voucher Asuransi kecelakaan diri Allianz berlaku 30 hari."
                                ])
        ]
    }
    static func dirumahAja() -> [InternetPackage] {
        return [
            InternetPackage(packageName: "RuangGuru", quota: "30 GB", priceBefore: "", priceAfter: "FREE", duration: "30 HARI", packageDetails:[], packageDescription: []),
            InternetPackage(packageName: "RuangGuru", quota: "30 GB", priceBefore: "", priceAfter: "FREE", duration: "30 HARI", packageDetails:[], packageDescription: []),
            InternetPackage(packageName: "RuangGuru", quota: "30 GB", priceBefore: "", priceAfter: "FREE", duration: "30 HARI", packageDetails:[], packageDescription: []),
            InternetPackage(packageName: "RuangGuru", quota: "30 GB", priceBefore: "", priceAfter: "FREE", duration: "30 HARI", packageDetails:[], packageDescription: []),
            InternetPackage(packageName: "RuangGuru", quota: "30 GB", priceBefore: "", priceAfter: "FREE", duration: "30 HARI", packageDetails:[], packageDescription: []),
            InternetPackage(packageName: "RuangGuru", quota: "30 GB", priceBefore: "", priceAfter: "FREE", duration: "30 HARI", packageDetails:[], packageDescription: []),
        ]
    }
}
