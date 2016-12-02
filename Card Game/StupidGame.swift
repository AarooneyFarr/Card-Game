//
//  StupidGame.swift
//  Card Game
//
//  Created by Farr, Aaron on 11/11/16.
//  Copyright © 2016 Farr, Aaron. All rights reserved.
//

import Foundation


class StupidGame
{
    //Declartaion section
    lazy var turn = 1;
    lazy var players = 4;
    lazy var handSize = 4;
    internal var stupidDeck : PlayingCardDeck
    internal var hand : [PlayingCard]
    internal var score : Int
    
    //inits
    init()
    {
        self.stupidDeck = PlayingCardDeck()
        self.hand = [PlayingCard]()
        self.score = 0
        
    }
    
    //Methods
    func startGame() -> Void
    {
        stupidDeck.shuffleDeck()
        drawCards()
        playMatchGame()
        
    }
    
    func drawCards() -> Void
    {
        
        
        hand.append((stupidDeck.drawRandomCard() as? PlayingCard)!)
        hand.append((stupidDeck.drawRandomCard() as? PlayingCard)!)
        hand.append((stupidDeck.drawRandomCard() as? PlayingCard)!)
        
    }
    func checkMatch()-> Bool
    {
        let hasMatch : Bool
        if( hand[0].rank == hand[1].rank) || (hand[1].rank == hand[2].rank) || (hand[0].rank == hand[2].rank)
        {
            hasMatch = true
        }
        else
        {
            hasMatch = false
        }
        return hasMatch
    }
    
    func playMatchGame() -> Void
    {
     
       
        if stupidDeck.cards.count > 0
        {
            if checkMatch()
            {
                score += 5
            }
            else
            {
                score -= 2
            }
        }
        
        hand.removeAll()
       
    }
    
    func getScore() -> String
    {
      //  var scoreString = String(score)
        return String(hand.count)
    }
}
