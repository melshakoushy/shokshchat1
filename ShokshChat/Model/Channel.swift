//
//  Channel.swift
//  ShokshChat
//
//  Created by Mahmoud Elshakoushy on 3/15/19.
//  Copyright © 2019 Elshakoushy. All rights reserved.
//

import Foundation

struct Channel : Decodable {
    
    public private(set) var _id: String!
    public private(set) var name: String!
    public private(set) var description: String!
    public private(set) var __v: Int?
}
