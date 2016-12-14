//
//  PlayingCardDeck.swift
//  Card Game
//
//  Created by Farr, Aaron on 10/31/16.
//  Copyright © 2016 Farr, Aaron. All rights reserved.
//

import Foundation


class PlayingCardDeck : Deck
{
    lazy var pCards = [PlayingCard]()
    
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for rank in 1 ..< PlayingCard.maxRank()
            {
                let currentCard = PlayingCard(withRank: rank, ofSuit: suit)
                
                self.pCards.append(currentCard)
            }
        }
        let test = PlayingCard()
        test.suit = "ads"
        
    }
    
    
    
    func orderDeck() -> Void
    {
        var temp = [PlayingCard]()
        for suit in PlayingCard.validSuits()
        {
            
            for rank in 1 ..< PlayingCard.maxRank()
            {
                let index = pCards.index(where:
                    {
                        ($0).suit == suit && ($0).rank == rank
                })
                let tempCard = pCards.remove(at: index!)
                temp.append(tempCard)
            }
        }
        
    }
    
   
}
