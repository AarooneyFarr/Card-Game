//
//  PlayingCard.swift
//  Card Game
//
//  Created by Farr, Aaron on 10/25/16.
//  Copyright © 2016 Farr, Aaron. All rights reserved.
//

import UIKit


class PlayingCard : card
{
    internal var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
        
    }
    
    internal var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
            
        }
    }
    
    internal var color : UIColor
    {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    
    internal var frontImage : UIImage
    {
        get{
            return self.frontImage
        }
        set(frontImage){
            self.frontImage = frontImage
            
        }
    }
    
    override init()
    {
        super.init()
        frontImage = UIImage(named: "coded with love")!
        color = UIColor.redColor()
        rank = 0
        suit = String()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        super.init()
        frontImage = UIImage(named: "coded with love")!
        color = UIColor.redColor()
        rank = 0
        suit = String()
    }
    
    override func toString() ->String
    {
        let facing : String
        
        if self.isUp()
        {
            facing = " is face up"
            
        }
        else
        {
            facing = " is face down"
        }
        
        let description = "This PlayingCard has a face value of \(rank), and a color of\(color), the back image is\(self.getBackImage) and is of suit \(suit) suit and is \(facing)"
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