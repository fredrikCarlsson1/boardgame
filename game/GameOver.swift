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
    var labelArray = [UILabel]()
    var pointsArray = [UILabel]()
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var winningTeamLabel: UILabel!
    @IBOutlet weak var teamResultsView: UIView!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        addGameToPlayers()
        addPointToWinningPlayers(team: LocalDataBase().getSortedTeams()[0])
        winningTeamLabel.text = LocalDataBase().getSortedTeams()[0].name
        var nameString = "Good job "
        var nr = 0
         let lastPlayerIndex = LocalDataBase().getSortedTeams()[0].players.count-1
        for player in LocalDataBase().getSortedTeams()[0].players{
            if(nr == lastPlayerIndex){
                nameString = nameString + "and \(player.name)! You were simply the best today! Let´s hope your opponents improves until next time"
            }else{
            nameString = nameString + "\(player.name) "
            }
            nr = nr+1
        }
        textView.text = nameString
        var i = 0
        for team in LocalDataBase().getSortedTeams(){
            let teamLabel = UILabel()
            let positionLabel = UILabel(frame: CGRect(x: 10, y: 30*i, width: 30, height: 30))
            let pointsLabel = UILabel()
            teamLabel.text = team.name
            positionLabel.text = "\(i+1)."
            pointsLabel.text = "\(team.points) points"
            positionLabel.font = UIFont.boldSystemFont(ofSize: 18)
            teamResultsView.addSubview(teamLabel)
            teamResultsView.addSubview(positionLabel)
            teamResultsView.addSubview(pointsLabel)
            labelArray.append(teamLabel)
            pointsArray.append(pointsLabel)
            i = i+1
        }
    }
    
//    func animateBackGroundColor(){
//
//        UIView.transition(with: self.winningTeamLabel, duration: 3, options: [.transitionCrossDissolve, .allowUserInteraction], animations: {
//            self.winningTeamLabel.firstColor = .white
//        }){ (success) in
//            self.animateBackGroundColor()
//        }
//
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        var i = 0
        for teamLabel in labelArray{
            teamLabel.frame = CGRect(x: -40, y: -100, width: 200, height: 20)
            UIView.animate(withDuration: 2, delay: TimeInterval(0+i), options: [.curveEaseIn], animations: {
                 teamLabel.frame = CGRect(x: 40, y: 30*i, width: 200, height: 30)
                })
            UIView.animate(withDuration: 2, delay: TimeInterval(0+i), options: [.curveLinear], animations: {
                self.pointsArray[i].frame =  CGRect(x: Int(self.teamResultsView.frame.width)-80, y: 30*i, width: 80, height: 30)
            })
            i = i+1
        }
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
