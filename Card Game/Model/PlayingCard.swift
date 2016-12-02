//
//  PlayingCard.swift
//  Card Game
//
//  Created by Farr, Aaron on 10/25/16.
//  Copyright © 2016 Farr, Aaron. All rights reserved.
//

import UIKit


class PlayingCard : Card
{
    internal var rank : Int
    
    
    internal var suit : String
    
    
    internal var color : UIColor
    
    
    internal var frontImage : UIImage
    
    override init()
    {
        
        self.frontImage = UIImage(named: "coded with love")!
        self.color = UIColor.redColor()
        self.rank = 0
        self.suit = String()
        super.init()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        
        self.frontImage = UIImage(named: "coded with love")!
        self.color = UIColor.redColor()
        self.rank = withRank
        self.suit = ofSuit
        super.init()
    }
    
    override func toString() ->String
    {
        let facing : String
        
        if self.isUp()
        {
            facing = " face up"
            
        }
        else
        {
            facing = " face down"
        }
        
        let description = "This Playing Card has a face value of \(rank), and a color of \(color), the back image is \(self.getBackImage) and is of suit \(self.suit) suit and is \(facing)"
        return description
    }
    
   func getRank() ->Int
   {
    return self.rank
   }
    
   func setRank(rank: Int)
   {
        self.rank = rank
    }
    func getSuit() -> String
    {
        return self.suit
    }
    func setSuit(suit: String)
    {
        self.suit = suit
    }
    func getColor() ->UIColor
    {
        return self.color
        
    }
    func setColor(color: UIColor)
    {
        self.color = color
    }
    func getFrontImage() -> UIImage
    {
        return frontImage
        
    }
    func getCardData() -> String{
        let data = "\(PlayingCard.validRanks()[rank]) \(suit)"
        return data
    }
    func setFrontImage(frontImage: UIImage)
    {
        self.frontImage = frontImage
    }
    
    //The modifier class in front of func means that this mthod is visible
    //without creating an instance of the class in question
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    class func validSuits() -> [String]
    {
        return ["♥️","♠️","♦️","♣️"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
}