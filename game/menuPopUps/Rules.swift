//
//  Rules.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-29.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class Rules: UIViewController {
    

    @IBOutlet weak var textView2: UITextView!
    @IBOutlet weak var buttonOutlet: UIButtonX!
    @IBOutlet weak var instructionView: UIViewX!
    var firstViewString: String?
    
    var stringTupleArray = [(key: String, value: String)]()
 
    let shortInstructions = NSLocalizedString("shortGameInstructions", comment: "")
    let nrOfTeamsAndPlayers = NSLocalizedString("nrOfPlayersAndTeams", comment: "")
    let startGameInstructions = NSLocalizedString("startTheGameInstructions", comment: "")
    
    let withOtherWords = NSLocalizedString("withOtherWordsInstructions", comment: "")
    let charades = NSLocalizedString("charadesInstructions", comment: "")
    let teamChallenge = NSLocalizedString("teamChallengeInstructions", comment: "")
    let canYouFigureItOut = NSLocalizedString("canYouFigureItOutInstructions", comment: "")
    let humTheSong = NSLocalizedString("humTheSongInstructions", comment: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stringTupleArray = [("shortGameInstructions", shortInstructions), ("nrOfTeamsAndPlayers",nrOfTeamsAndPlayers),("startGameInstructions",startGameInstructions),  ("withOtherWords",self.withOtherWords), ("charades",self.charades), ("teamChallenge",self.teamChallenge), ("canYouFigureItOut", self.canYouFigureItOut), ("humTheSong", self.humTheSong)]

        setSecondTextView()
      
    }
    
    override func viewDidLayoutSubviews() {
        textView2.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
    }
    
    
    
    func setFirstTextView()->String{
        var tmpString = shortInstructions
        for string in stringTupleArray{
            if let firstString = firstViewString{
                if(string.key == firstString){
                    tmpString = string.value
                }
            }
        }
        return tmpString
    }
    
    func setSecondTextView(){
        
        var tmpString = ""
        for string in stringTupleArray {
            if let secondString = firstViewString{
               
                if(string.key != secondString){
                    
                    tmpString = tmpString + "*****\n\n" + string.value
                }
            }
            else{
                for string in stringTupleArray{
                    tmpString =  tmpString + string.value
                }
            }
        }
        textView2.text = setFirstTextView() + tmpString
        }
        
    
    
    
    @IBAction func dismissBackgroundButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doneButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
