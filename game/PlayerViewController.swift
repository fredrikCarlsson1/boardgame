//
//  PlayerViewController.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-14.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nrOfGamesLabel: UILabel!
    @IBOutlet weak var nrOfWinsLabel: UILabel!
    @IBOutlet weak var procentWinsLabel: UILabel!
    
    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let player = player{
        nameLabel.text = player.name
            if let games = player.games{
                nrOfGamesLabel.text = String(games)
            }
            if let wins  = player.wins{
                nrOfWinsLabel.text = String(wins)
                if let games = player.games{
                    let procent = (Double(wins)/Double(games)*100)
                    procentWinsLabel.text = "\(Int(procent)) procent"
                }
            }
        }
    }
    
    @IBAction func exitBackground(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func exitButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func doneButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
