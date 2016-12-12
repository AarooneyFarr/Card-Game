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
    private lazy var currentDeck = PlayingCardDeck()
    private lazy var clickCount = Int()
    
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
    }
    
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var cardLabel: UILabel!
    
    @IBAction func cardButtonClicked(_ sender: Any) {
        
        clickCount += 1
        let words = "the card has been clicked \(clickCount) times"
        cardLabel.text = words
        
        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
        else
        {
            currentDeck = PlayingCardDeck()
        }
    }
    
}
