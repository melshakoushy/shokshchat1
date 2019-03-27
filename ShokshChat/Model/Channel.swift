//
//  Channel.swift
//  ShokshChat
//
//  Created by Mahmoud Elshakoushy on 3/15/19.
//  Copyright © 2019 Elshakoushy. All rights reserved.
//


import Foundation

struct Channel : Decodable {
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
}
