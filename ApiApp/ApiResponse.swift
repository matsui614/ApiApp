//
//  ApiResponse.swift
//  ApiApp
//
//  Created by 松居昴希 on 2025/03/12.
//
import RealmSwift

struct ApiResponse: Decodable {
    var results: Result
    struct Result: Decodable {
        var shop: [Shop]
        
        struct Shop: Decodable {
            var id: String
            var name: String
            var address: String  // 住所を追加
            var logo_image: String
            var coupon_urls: CouponUrls
            
            struct CouponUrls: Decodable {
                var pc: String
                var sp: String
            }
            // ここから
                      var isFavorite: Bool {
                          if try! Realm().object(ofType: FavoriteShop.self, forPrimaryKey: self.id) != nil {
                              return true
                          } else {
                              return false
                          }
                      }
                      // ここまで追加
        }
    }
}
