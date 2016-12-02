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
        
        
        
        
        /* clickCount += 1
        let words = "clicked \(clickCount) times "
        CardLabelCount.text = words
        
        if let currentCard = currentDeck.drawCard() as? PlayingCard
        {
            cardButton.setTitle(currentCard.getCardData(), forState: UIControlState.Normal)
        }
        else
        {
            CardLabelCount.text = "The deck was exhausted"
            currentDeck = PlayingCardDeck()
        }*/
        
    }
    
}
