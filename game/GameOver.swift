//
//  GameOver.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-29.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit
import AVFoundation

class GameOver: UIViewController {
    var winningTeam: Int?
    var data = [Player]()
    var labelArray = [UILabel]()
    var pointsArray = [UILabel]()
    var colorArray = [UIColor(hexString: "#8f6886"), UIColor(hexString: "#DBAB2A"), UIColor(hexString: "#568da0"), UIColor(hexString: "#cc7297"), UIColor(hexString: "#b4b75f")]
    var i = 0
    var soundPlayer = AVAudioPlayer()
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var winningTeamLabel: UILabel!
    @IBOutlet weak var teamResultsView: UIView!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        playMusic()
        addGameToPlayers()
        addPointToWinningPlayers(team: LocalDataBase().getSortedTeams()[0])
        winningTeamLabel.text = LocalDataBase().getSortedTeams()[0].name
        winningTeamLabel.textColor = colorArray[LocalDataBase().getSortedTeams()[0].id]
        var nameString = NSLocalizedString("gameOver1", comment: "")
        var nr = 0
        let lastPlayerIndex = LocalDataBase().getSortedTeams()[0].players.count-1
        for player in LocalDataBase().getSortedTeams()[0].players{
            if(nr == lastPlayerIndex){
                let tmpString = NSLocalizedString("gameOver2", comment: "")
                let string = String(format: tmpString, player.name)
                nameString = nameString + string
                
            }else{
                nameString = nameString + "\(player.name) "
            }
            nr = nr+1
        }
        
        textView.text = nameString
        var i = 0
        for team in LocalDataBase().getSortedTeams(){
            let teamLabel = UILabel()
            let positionLabel = UILabel(frame: CGRect(x: 10, y: 40*i, width: 30, height: 30))
            let pointsLabel = UILabel(frame: CGRect(x: Int(teamResultsView.frame.width-100), y: 40*i, width: 100, height: 30))
            teamLabel.text = team.name
            positionLabel.text = "\(i+1)."
            pointsLabel.text = "\(team.points) " + NSLocalizedString("points", comment: "")
            positionLabel.font = UIFont.boldSystemFont(ofSize: 18)
            pointsLabel.font = UIFont.boldSystemFont(ofSize: 18)
            teamResultsView.addSubview(teamLabel)
            teamResultsView.addSubview(positionLabel)
            teamResultsView.addSubview(pointsLabel)
            pointsLabel.alpha = 0.0
            teamLabel.font = UIFont(name: "LillyMae-Regular", size: 30)
            teamLabel.textColor =  colorArray[team.id]
            labelArray.append(teamLabel)
            pointsArray.append(pointsLabel)
            i = i+1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if(LocalDataBase.soundOn == true){
            soundPlayer.stop()
        }
    }
    
    
    func getIndexForColor()->Int{
        if(i == colorArray.count-1){
            i = 0
        }
        else {
            i = i+1
        }
        return i
    }
    
//        func animateBackGroundColor(){
//            
//            UIView.transition(with: self.winningTeamLabel, duration: 0.5, options: [.transitionCrossDissolve, .allowUserInteraction], animations: {
//                self.label.textColor = self.colorArray[self.getIndexForColor()]
//            }){ (success) in
//                self.animateBackGroundColor()
//            }
//        }
    
    override func viewDidAppear(_ animated: Bool) {
        var i = 0
        for teamLabel in labelArray{
            UIView.animate(withDuration: 2, delay: TimeInterval(0+i), options: [.curveLinear], animations: {
                teamLabel.frame =  CGRect(x: 45, y: 40*i, width: 80, height: 30)
            })
            
            UIView.animate(withDuration: 2, delay: 0.8,options: [UIViewAnimationOptions.curveEaseOut], animations: {
                self.pointsArray[i].alpha = 1.0
            }, completion: nil)
            
            i = i+1
        }
        //animateBackGroundColor()
        
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        nukeAllAnimations()
//    }
    
    func nukeAllAnimations() {
        self.view.subviews.forEach({$0.layer.removeAllAnimations()})
        self.view.layer.removeAllAnimations()
        self.view.layoutIfNeeded()
    }
    
    func playMusic(){
    if(LocalDataBase.soundOn == true){
    do{
    soundPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Fireworks", ofType: "mp3")!))
    soundPlayer.prepareToPlay()
    }
    catch{
    print(error)
    }
    soundPlayer.play()
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
