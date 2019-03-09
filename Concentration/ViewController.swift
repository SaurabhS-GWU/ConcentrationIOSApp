//
//  ViewController.swift
//  Concentration
//
//  Created by Saurabh Shetty on 3/5/19.
//  Copyright © 2019 Saurabh Shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    var game = Concentration() 
    //var flipCount: Int = 0 we do not need to mention the type in Swift. 
    var flipCount = 0{
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    //array of buttons
    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var flipCountLabel: UILabel!
   
   var emojiChoices = ["👻","☠️","👻","☠️"]
    @IBAction func touchCard(_ sender: UIButton) {
       
        flipCount += 1
        if  let cardNumber = cardButtons.lastIndex(of: sender){
            
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }else{
            print("chosen card was not in cardButtons")
        }
        
    }
    
//    @IBAction func touchSecondCard(_ sender: UIButton) {
//        flipCount += 1
//
//        flipCard(withEmoji: "☠️", on: sender)
//    } //remove function because we do not want to repeat lines of code. solved by adding an array of buttons.
    func flipCard(withEmoji emoji: String, on button : UIButton){
       
        print("flipcard(withEmoji: \(emoji)");
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

