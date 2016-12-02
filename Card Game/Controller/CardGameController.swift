//
//  CardGameController.swift
//  Card Game
//
//  Created by Farr, Aaron on 10/27/16.
//  Copyright © 2016 Farr, Aaron. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    
    
   
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var cardButton2: UIButton!
    
 //   @IBOutlet weak var cardLabel: UILabel!
    
    @IBOutlet weak var CardLabelCount: UILabel!
    
    private lazy var currentDeck = PlayingCardDeck()
    private lazy var clickCount = Int()
    internal var firstGame = StupidGame()
   
    
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
        
    }
    
    @IBAction func flipCard(sender: UIButton) {
        
      
        self.firstGame.startGame()
        CardLabelCount.text = self.firstGame.getScore()
     //   cardButton.setTitle("\(firstGame.hand[0])", forState: UIControlState.Normal)
        
        
        
        
        
        if let currentCard = firstGame.hand[0] as? PlayingCard
        {
            cardButton.setTitle(currentCard.getCardData(), forState: UIControlState.Normal)
        }
        else
        {
           firstGame.drawCards()

        }
        
    }
    
}
