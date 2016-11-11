//
//  StupidGame.swift
//  Card Game
//
//  Created by Farr, Aaron on 11/11/16.
//  Copyright © 2016 Farr, Aaron. All rights reserved.
//

import UIKit


class StupidGame
{
    //Declartaion section
    lazy var turn = 1;
    lazy var players = 4;
    lazy var handSize = 5;
    lazy var stupidDeck = [Deck]()
    
    //inits
    init()
    {
        Deck.shuffleDeck()
        
        
    }
    
    //Methods
    func startGame() -> Void
    {
        
    }
    
    
}
