//
//  AddPlayerPopUpViewController.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-25.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class AddPlayerPopUpViewController: UIViewController {
    var teamID: Int?
    var player: Player?
    var teamsSelected: Int?
    
    @IBOutlet weak var textField: UITextField!
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    @IBAction func dismissPopUp(_ sender: UIButton) {
        performSegue(withIdentifier: "saveNewPlayerSegue", sender: self)
    }
    
 
    @IBAction func saveNewPlayer(_ sender: UIButton) {
        player = Player(name: textField.text!)
        performSegue(withIdentifier: "saveNewPlayerSegue", sender: self)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AddPlayerViewController{
            if let newPlayer = player{
            destination.player = newPlayer
            }
            if let teamID = teamID{
                destination.number = teamID
            }
            if let nrOfTeams = teamsSelected{
                destination.nrOfTeams = nrOfTeams
            }
            destination.comesFromAddPlayer = true
            
        }
    }



}
