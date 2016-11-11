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
    lazy var cards = [PlayingCard]()
    
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank < PlayingCard.maxRank(); rank += 1
            {
                let currentCard = PlayingCard(withRank: rank, ofSuit: suit)
                
                cards.append(currentCard)
            }
        }
        var test = PlayingCard()
        test.suit = "ads"
        
    }
    
    
    
    func orderDeck() -> Void
    {
        
    }
}