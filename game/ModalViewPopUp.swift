//
//  ModalViewPopUp.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-17.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class ModalViewPopUp: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    var teamID: Int?
    var points: Int?
    var time: String?
    var game: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let gameNr = game{
            if (gameNr == 0){
        }
            if let game = game{
                if let points = points{
                    label.text = "\(points) points"
                    textView.text = LocalDataBase().setTextViewInModalView(points: points, game: game)
                }
            }
        }
    }
    
    @IBAction func continueButton(_ sender: UIButton) {
        if let team = teamID{
            if let p = points{
                LocalDataBase.nrOfRounds = LocalDataBase.nrOfRounds + 1
                LocalDataBase.teamArray[team].addPoints(p)
                LocalDataBase.teamArray[team].isUp = false
                LocalDataBase.teamArray[getNextTeam(teamID: team)].isUp = true
            }
        }
        if (checkIfTeamsWin(points: 40)){
            performSegue(withIdentifier: "gameOverSegue", sender: self)
        }
        else{
          performSegue(withIdentifier: "backToStartSegue", sender: self)
        }
    }
    
    func checkIfTeamsWin(points: Int)->Bool{
        for team in LocalDataBase.teamArray{
            if(team.points>points){
                return true
            }
        }
        return false
    }
    
    @IBAction func editScroreButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func getNextTeam(teamID: Int) -> Int{
        let nrOfTeams = LocalDataBase.teamArray.count
        if(teamID == (nrOfTeams-1)){
            return 0
        }
        else{
            return (teamID + 1)
        }
    }
    
}
