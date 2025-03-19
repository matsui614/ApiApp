//
//  FavoriteShop.swift
//  ApiApp
//
//  Created by 松居昴希 on 2025/03/18.
//


import RealmSwift

class FavoriteShop: Object {
    // 店舗id
    @Persisted(primaryKey: true) var id = ""

    // 店舗名
    @Persisted var name = ""

    // 店舗画像URL
    @Persisted var logoImageURL = ""

    // クーポン画面URL
    @Persisted var couponURL = ""
    
    // 住所を保存できるように追加
    @Persisted var address: String = "" 

}
