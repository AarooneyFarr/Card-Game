//
//  Deck.swift
//  Card Game
//
//  Created by Farr, Aaron on 10/31/16.
//  Copyright © 2016 Farr, Aaron. All rights reserved.
//

import UIKit

class Deck
{
    lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        var tempDeck = [Card]()
        while cards.count > 0
        {
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            
            let removedCard = cards.removeAtIndex(randomSpot)
            tempDeck.append(removedCard)
            
        }
        self.cards = tempDeck
    }
    
    func drawCard() -> Card?
    {
        if self.cards.count > 0
        {
            return cards.removeAtIndex(0)
            
        }
        else
        {
            return nil
        }
    }
    func drawRandomCard() ->Card?
    {
        if cards.count > 0
        {
            let randomIndex = (Int)(arc4random() % (UInt32) (cards.count))
            return cards.removeAtIndex(randomIndex)
        }
        else
        {
            return nil
        }
        
    }
    
    init()
    {
    
    }
    
}