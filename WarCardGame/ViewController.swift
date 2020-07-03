//
//  ViewController.swift
//  WarCardGame
//
//  Created by mac on 03/07/20.
//  Copyright © 2020 Mac Leonardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LeftPoints: UILabel!
    
    @IBOutlet weak var RightPoints: UILabel!
    
    @IBOutlet weak var LeftCard: UIImageView!
    
    @IBOutlet weak var RightCard: UIImageView!
    
    var scoreLeft : Int = 0
    var scoreRight : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DealButton(_ sender: Any) {
        
        let cardNumberLeft = Int.random(in: 2...14)
        let cardNumberRight = Int.random(in: 2...14)
        
        LeftCard.image = UIImage(named: "card\(cardNumberLeft)")
        RightCard.image = UIImage(named: "card\(cardNumberRight)")
        
        if(cardNumberLeft > cardNumberRight){
            scoreLeft += 1
        } else if (cardNumberLeft < cardNumberRight){
            scoreRight += 1
        } else {
            print("tie")
        }
        
        LeftPoints.text = String(scoreLeft)
        RightPoints.text = String(scoreRight)
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        scoreLeft = 0
        scoreRight = 0
        
        LeftPoints.text = String(scoreLeft)
        RightPoints.text = String(scoreRight)
    }
    
}

