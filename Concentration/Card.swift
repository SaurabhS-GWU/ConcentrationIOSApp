//
//  Card.swift
//  Concentration
//
//  Created by Saurabh Shetty on 3/9/19.
//  Copyright © 2019 Saurabh Shetty. All rights reserved.
//

import Foundation
//structs and classes almost same. struct is value type and class is reference type. Arrays, Ints etc are structs. Reference type lives in the heap.
struct Card{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int 
}
