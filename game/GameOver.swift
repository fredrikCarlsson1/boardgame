//
//  GameOver.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-29.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class GameOver: UIViewController {
    var winningTeam: Int?
    var data = [Player]()
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        addGameToPlayers()
        addPointToWinningPlayers(team: LocalDataBase().getSortedTeams()[0])
        
    }
    
    var filePath: String {
        let manager = FileManager.default
        let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first
        return url!.appendingPathComponent("Data").path
    }
    
    private func loadData(){
        if let ourData = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as? [Player]{
            data = ourData
        }
    }
  
    func addGameToPlayers(){
        for dataPlayer in data {
            for teams in LocalDataBase.teamArray{
                for player in teams.players{
                    if(dataPlayer.playerID == player.playerID){
                        dataPlayer.games = dataPlayer.games! + 1
                        NSKeyedArchiver.archiveRootObject(data, toFile: filePath)
                    }
                }
            }
        }
    }

    @IBAction func backToStartButton(_ sender: UIButton) {
        LocalDataBase.teamArray.removeAll()
        performSegue(withIdentifier: "gameOverToStartSegue", sender: self)
        
    }
    
    
    func addPointToWinningPlayers(team: Team){
        for dataPlayer in data{
            for player in team.players{
                if (dataPlayer.playerID == player.playerID){
                    dataPlayer.wins = dataPlayer.wins! + 1
                    NSKeyedArchiver.archiveRootObject(data, toFile: filePath)
                }
            }
        }
    }
    


}
