//
//  NetworkManger.swift
//  InStock
//
//  Created by Rezk on 01/03/2023.
//

import Foundation
import Alamofire

protocol NetworkMangerProtocol {
    static func fetchData<T : Decodable>( apiLink : String ,complitionHandler: @escaping (T?) -> Void)
}

class NetworkManger : NetworkMangerProtocol {
    
    
    
    
    
    static func fetchData<T : Decodable>(apiLink : String , complitionHandler: @escaping (T?) -> Void){
        
        AF.request(apiLink).response{
            response in
            if let data = response.data {
                do{
                    let result = try JSONDecoder().decode(T.self, from: data)
                    complitionHandler(result)
                }
                catch{
                    complitionHandler(nil)
                }
            }
        }
        
    }
    
}

class CouponNetwork
{
    func addNewCoupon(coupon: Coupon, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        let urlPost = URL(string: "https://b61bfc9ff926e2344efcd1ffd0d0b751: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@mad-ios-1.myshopify.com/admin/api/2023-01/price_rules/1380096934165/discount_codes.json")
        
        var urlReq = URLRequest(url: urlPost!)
        
        urlReq.httpMethod = "POST"
        
        urlReq.httpShouldHandleCookies = false
        do {
            //asDictinonary method to cast class data model to dictionary
            let requestBody = try JSONSerialization.data(withJSONObject: coupon.asDictionary() , options: .prettyPrinted)
            
            urlReq.httpBody = requestBody
            
            urlReq.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlReq.addValue("application/json", forHTTPHeaderField: "Accept")
        }catch let error {
            print(error.localizedDescription)
        }
        URLSession.shared.dataTask(with: urlReq) { Data, HTTPURLResponse, error in
            if(Data != nil && Data?.count != 0){
                let response = String(data: Data!, encoding: .utf8)
                print(response!)
            }
        }.resume()
    }}



