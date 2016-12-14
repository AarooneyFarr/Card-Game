//
//  Card.swift
//  Card Game
//
//  Created by Farr, Aaron on 10/25/16.
//  Copyright © 2016 Farr, Aaron. All rights reserved.
//

import UIKit

class Card
{
  
    
    var isFaceUp = false
    
    init()
    {
    
        isFaceUp = false
        
        
    }
    
    func toString() ->String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
  
    
    func isUp() ->Bool
    {
        return isFaceUp
    }
    
    func setIsFacing(_ isFaceUp : Bool) ->Void
    {
        self.isFaceUp = isFaceUp
    }
    
}
