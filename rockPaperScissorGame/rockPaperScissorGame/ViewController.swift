//
//  ViewController.swift
//  rockPaperScissorGame
//
//  Created by smkn1cibinong on 16/11/20.
//  Copyright © 2020 Lisna Wati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // Declaring the IBOutlet
    @IBOutlet weak var blueHandView: UIImageView!
    
    @IBOutlet weak var blueResultsView: UILabel!
    
    @IBOutlet weak var redHandView: UIImageView!
    
    @IBOutlet weak var redResultsView: UILabel!
    
    @IBOutlet weak var resultOfTheGame: UIImageView!
    
    @IBOutlet weak var roundGame: UILabel!
    
    // Declaring the score
    var blueScore = 0
    var redScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Option tapped rock
    @IBAction func rockTapped(_ sender: Any) {
        
        resultOfTheGame.isHidden = true
        
        // Make the blue random
        let blueHand = Int.random(in: 1...3)
        
        // Update the image view
        blueHandView.image = UIImage(named: "\(blueHand)")
        redHandView.image = UIImage(named: "\(1)")
        
        // Compare all
        if blueHand == 2 {
            
            blueScore += 1
            blueResultsView.text = String(blueScore)
        }
        else if blueHand == 3 {
            
            redScore += 1
            redResultsView.text = String(redScore)
        }
        else {
            // Tie
        }
        
        for i in stride(from: 0, to: 50, by: 5) {
        if redScore == i && redScore > blueScore {
            
            resultOfTheGame.image = UIImage(named: "win")
            resultOfTheGame.isHidden = false
            
        } else if blueScore == i && blueScore > redScore {
            
            resultOfTheGame.image = UIImage(named: "lose")
            resultOfTheGame.isHidden = false
            }
        }
    }
    
    // Option tapped paper
    @IBAction func paperTapped(_ sender: Any) {
        
        resultOfTheGame.isHidden = true
        
        // Make the blue random
        let blueHand = Int.random(in: 1...3)
        
        // Update the image view
        blueHandView.image = UIImage(named: "\(blueHand)")
        redHandView.image = UIImage(named: "\(2)")
        
        // Compare all
        if blueHand == 1 {
            
            redScore += 1
            redResultsView.text = String(redScore)
            
        }
        else if blueHand == 3 {
            
            blueScore += 1
            blueResultsView.text = String(blueScore)
            
        }
        else {
            // Tie
        }
        
         for i in stride(from: 0, to: 50, by: 5) {
            
            if redScore == i && redScore > blueScore {
                resultOfTheGame.image = UIImage(named: "win")
                resultOfTheGame.isHidden = false
                
            } else if blueScore == i && blueScore > redScore {
                
                resultOfTheGame.image = UIImage(named: "lose")
                resultOfTheGame.isHidden = false
                
                }
            }
        }
    
    // Option tapped scissors
    @IBAction func scissorsTapped(_ sender: Any) {
        
        resultOfTheGame.isHidden = true
        
        // Make the blue random
        let blueHand = Int.random(in: 1...3)
        
        // Update the image view
        blueHandView.image = UIImage(named: "\(blueHand)")
        redHandView.image = UIImage(named: "\(3)")
        
        // Compare all
        if blueHand == 1 {
            
            blueScore += 1
            blueResultsView.text = String(blueScore)
        }
        else if blueHand == 2 {
            
            redScore += 1
            redResultsView.text = String(redScore)
        }
        else {
            // Tie
        }
        
       for i in stride(from: 0, to: 50, by: 5) {
        
            if redScore == i && redScore > blueScore {
                resultOfTheGame.image = UIImage(named: "win")
                resultOfTheGame.isHidden = false
                
            } else if blueScore == i && blueScore > redScore {
                resultOfTheGame.image = UIImage(named: "lose")
                resultOfTheGame.isHidden = false
                
                }
            }
        }
    
    // Reseting the score
    @IBAction func resetButton(_ sender: Any) {
        
        blueScore = 0
        blueResultsView.text = String(blueScore)
        
        redScore = 0
        redResultsView.text = String(redScore)
        
        resultOfTheGame.isHidden = true
    }
    
}

