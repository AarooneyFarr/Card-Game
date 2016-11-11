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
    private var backImage : UIImage
   
    
    private var isFaceUp : Bool
        

    
    init()
    {
        backImage = UIImage(named: "card back")!
        isFaceUp = false
        
        
    }
    
    func toString() ->String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
        
    }
    
    func setBackImage(newImage: UIImage)
    {
        backImage = newImage
    }
    
    func isUp() ->Bool
    {
        return isFaceUp
    }
    
    func setIsFacing(isFaceUp : Bool) ->Void
    {
        self.isFaceUp = isFaceUp
    }
    
}
