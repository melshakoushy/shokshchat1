//
//  MessageService.swift
//  ShokshChat
//
//  Created by Mahmoud Elshakoushy on 3/15/19.
//  Copyright © 2019 Elshakoushy. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannel(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            if response.result.error == nil {
                guard let data = response.data else {return}
                
                do {
                    self.channels = try JSONDecoder().decode([Channel].self , from: data)
                } catch let error {
                    debugPrint(error as Any)
                }
              print(self.channels)
                
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
        
    
}
