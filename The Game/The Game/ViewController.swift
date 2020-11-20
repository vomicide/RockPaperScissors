//
//  ViewController.swift
//  The Game
//
//  Created by smkn1cibinong on 19/11/20.
//  Copyright © 2020 Lisna Wati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
    
class SinglePlayerViewController: UIViewController {

    @IBOutlet weak var computerPlayerHand: UIImageView!
    
    @IBOutlet weak var humanPlayerHand: UIImageView!
    
    @IBOutlet weak var computerScoreResult: UILabel!
    
    @IBOutlet weak var humanScoreResult: UILabel!
    
    @IBOutlet weak var winBG: UIView!
    
    @IBOutlet weak var winText: UILabel!
    
    @IBOutlet weak var winPic: UIImageView!
    
    
    // Declaring The Score
    var computerScore = 90
    var humanScore = 90
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rockTapped(_ sender: Any) {
        
        //Randomize the computer
        let computerHand = Int.random(in: 1...3)
            
        // Make the image sync with the random number
        computerPlayerHand.image = UIImage(named: "\(computerHand)")
        humanPlayerHand.image = UIImage(named: "\(1)")
        
        // Compare All
        if computerHand == 2 {
            
            computerScore += 1
            computerScoreResult.text = String(computerScore)
            
        }
        else if computerHand == 3 {
            
            humanScore += 1
            humanScoreResult.text = String(humanScore)
            
        }
        else {
            // Nothing
        }
        
        for i in stride(from: 90, to: 190, by: 5) {
            
            if computerScore == i && computerScore > humanScore {
                winBG.superview?.bringSubviewToFront(winBG)
                winText.text = "CPU"
            } else if humanScore == i && humanScore > computerScore {
                winBG.superview?.bringSubviewToFront(winBG)
                winText.text = "YOU"
            } else {
                // Nothing
            }
            
        }
        
    }
    
    @IBAction func paperTapped(_ sender: Any) {
        //Randomize the computer
        let computerHand = Int.random(in: 1...3)
            
        // Make the image sync with the random number
        computerPlayerHand.image = UIImage(named: "\(computerHand)")
        humanPlayerHand.image = UIImage(named: "\(2)")
        
        // Compare All
        if computerHand == 1 {
            
            humanScore += 1
            humanScoreResult.text = String(humanScore)
            
        }
        else if computerHand == 3 {
            
            computerScore += 1
            computerScoreResult.text = String(computerScore)
            
        }
        else {
            // Nothing
        }
        
        for i in stride(from: 90, to: 190, by: 5) {
            
            if computerScore == i && computerScore > humanScore {
                winBG.superview?.bringSubviewToFront(winBG)
                winText.text = "CPU"
            } else if humanScore == i && humanScore > computerScore {
                winBG.superview?.bringSubviewToFront(winBG)
                winText.text = "YOU"
            } else {
                // Nothing
            }
            
        }
        
    }
    
    @IBAction func scissorsTapped(_ sender: Any) {
        //Randomize the computer
        let computerHand = Int.random(in: 1...3)
            
        // Make the image sync with the random number
        computerPlayerHand.image = UIImage(named: "\(computerHand)")
        humanPlayerHand.image = UIImage(named: "\(3)")
        
        // Compare All
        if computerHand == 1 {
            
            computerScore += 1
            computerScoreResult.text = String(computerScore)
            
        }
        else if computerHand == 2 {
            
            humanScore += 1
            humanScoreResult.text = String(humanScore)
            
        }
        else {
            // Nothing
        }
        
        for i in stride(from: 90, to: 190, by: 5) {
            
            if computerScore == i && computerScore > humanScore {
                winBG.superview?.bringSubviewToFront(winBG)
                winText.text = "CPU"
            } else if humanScore == i && humanScore > computerScore {
                winBG.superview?.bringSubviewToFront(winBG)
                winText.text = "YOU"
            } else {
                // Nothing
            }
            
        }
        
    }
    
    @IBAction func continueTapped(_ sender: Any) {
        
           winBG.superview?.sendSubviewToBack(winBG)
           view.superview?.bringSubviewToFront(view)
           
       }
    
}
