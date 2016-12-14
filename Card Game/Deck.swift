//
//  Deck.swift
//  Card Game
//
//  Created by Farr, Aaron on 10/31/16.
//  Copyright © 2016 Farr, Aaron. All rights reserved.
//

import Foundation

class Deck
{
    
    init()
    {
    
    }
    
    lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        var tempDeck = [Card]()
        while cards.count > 0
        {
            // chooses a valid random intex in the range of 0... cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            // takes the card form the deck.the deckdecreases count.
            let removedCard = self.cards.remove(at: randomSpot)
            // add the removed card to the end of the temporary deck
            tempDeck.append(removedCard)
        }
        // change the state deck with the temporary deck
        self.cards = tempDeck
    }
    
    func cutDeck() -> Void
        
        
    {
        
    }
    func drawCard() -> Card?
    {
        if self.cards.count > 0
        {
            return cards.remove(at: 0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card?
    {
        if cards.count > 0
        {
            let randomIndex = (Int)(arc4random() % (UInt32) (cards.count))
            return cards.remove(at: randomIndex)
        }
        else
        {
            return nil
        }
    }
    
}
