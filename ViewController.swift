//
//  ViewController.swift
//  Concentration
//
//  Created by Mayank Aggarwal on 2018-06-28.
//  Copyright © 2018 Mayank Aggarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var myFlipCount = 0 {       //every time flipCount is updated (didSet), it will call this function
        didSet {
            updateFlip.text = "Flips: \(myFlipCount)";
        }
    }
    var myEmojis = ["👻", "🎃", "🧛‍♀️", "🎃", "🎅🏼", "🧛🏻‍♂️", "🧟‍♂️", "🧛🏻‍♂️", "🧛‍♀️", "👻", "🧟‍♂️", "🎅🏼"];
    
    @IBOutlet var myButtons: [UIButton]!            //Initialized by dragging.
    @IBOutlet weak var updateFlip: UILabel!
    @IBAction func touchCard(_ sender: UIButton)
    {
        if let myCardNumber = myButtons.index(of: sender)     //let= const, ! = assume optional is set, if let: if it is in the set state, then execute otherwise won't. index(of:) returns optional.
        {
             flipMyCard(withEmoji: "\(myEmojis[myCardNumber])", onButton: sender);
              print("You selected this card: \(myCardNumber)");
        }
        else
        {
            print("Sorry, the card is not found");
        }
    }
    func flipMyCard(withEmoji emoji: String, onButton myButton: UIButton)
    {
        //want to change color: to white and change text to emoji
        myFlipCount = myFlipCount + 1;
        print("flip card called by \(emoji)");
        if myButton.currentTitle == emoji
        {
            myButton.setTitle("", for: UIControlState.normal);
            myButton.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1);
        }
        else
        {
            myButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);
            myButton.setTitle(emoji,for: UIControlState.normal);
        }
    }
}

