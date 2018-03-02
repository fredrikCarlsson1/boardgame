//
//  ModalViewPopUp.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-17.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit
import AVFoundation

class ModalViewPopUp: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var continueTextView: UITextView!
    var teamID: Int?
    var points: Int?
    var time: String?
    var game: Int?
    var soundPlayer = AVAudioPlayer()
    var audioArray = ["0points", "1point", "Ahhh", "3points", "4points", "5points"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueTextView.text = NSLocalizedString("continueOrEdit", comment: "")
        
        if let game = game{
            LocalDataBase().updateTheListCount(index: game)
            if let points = points{
                label.text = "\(points) " + NSLocalizedString("points", comment: "")
                textView.text = LocalDataBase().setTextViewInModalView(points: points, game: game)
                
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let points = points{
            playMusic(points: points)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if(LocalDataBase.soundOn == true){
            soundPlayer.stop()
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
        if (checkIfTeamsWin(points: 29)){
            performSegue(withIdentifier: "gameOverSegue", sender: self)
        }
        else{
            performSegue(withIdentifier: "backToStartSegue", sender: self)
        }
    }
    
    func playMusic(points: Int){
        if(LocalDataBase.soundOn == true){
            do{
                soundPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: audioArray[points], ofType: "mp3")!))
                soundPlayer.prepareToPlay()
            }
            catch{
                print(error)
            }
            soundPlayer.play()
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
