//
//  AlertView.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-19.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class AlertView: UIViewController {
    var score = 5
    var teamID: Int?
    var answer: String?
    var gameNumber: Int?
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let gameNumber = gameNumber{
            if (gameNumber == 2){
                textView.text = NSLocalizedString("alertViewQuestion", comment: "")
                
            }
            else if (gameNumber == 3){
                if let answer = answer{
                    let tmpString = NSLocalizedString("alertViewAnswer", comment: "")
                    textView.text = String(format: tmpString, answer, String(score))
                    
                }
            }
        }
    }

    @IBAction func noButton(_ sender: UIButton) {
        score = 0
        performSegue(withIdentifier: "alertToModalSegue", sender: self)
        
    }
    
    @IBAction func yesButton(_ sender: UIButton) {
        performSegue(withIdentifier: "alertToModalSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ModalViewPopUp{
            if let team = teamID{
                destination.teamID = team
            }
                destination.points = score
            if let gameNr = gameNumber{
                destination.game = gameNr
            }
            
        }
    }
}
