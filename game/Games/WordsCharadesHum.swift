//
//  WordsCharadesHum.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-18.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit
import AVFoundation

class WordsCharadesHum: UIViewController {
  
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var checkBox1: BEMCheckBox!
    @IBOutlet weak var checkBox2: BEMCheckBox!
    @IBOutlet weak var checkBox3: BEMCheckBox!
    @IBOutlet weak var checkBox4: BEMCheckBox!
    @IBOutlet weak var checkBox5: BEMCheckBox!
    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var doneOutlet: UIButtonX!
    
 
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var menuView: UIViewX!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var scoreButton: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var menuButton: FloatingActionButton!
    
    var tapGesture = UITapGestureRecognizer()
    var timer = Timer()
    var seconds = 45
    var soundPlayer = AVAudioPlayer()
    var audioArray = ["end_bell"]
    
    var score = 0
    var teamID: Int?
    var game: Int?

 
    override func viewDidLoad() {
        super.viewDidLoad()
        closeMenu()
        
    
        timeLabel.layer.masksToBounds = true
        timeLabel.layer.cornerRadius = 25
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WordsCharadesHum.startTimer), userInfo: nil, repeats: true)
        
        
        
        if let game = game {
            let gameNumber = LocalDataBase().getIndexForEachList(index: game)
                gameLabel.text = LocalDataBase.keysOfGamesArray[game]
                    titleLabel.text = LocalDataBase().getSubjectFrom(list: game)
            
                if (game == 0){
                    seconds = 30
                    timeLabel.backgroundColor = UIColor(hexString: "#dbd16d")
                    menuView.backgroundColor = UIColor(hexString: "#dbd16d")
                     menuButton.backgroundColor = UIColor(hexString: "#dbd16d")
                    doneOutlet.backgroundColor = UIColor(hexString: "#dbd16d")
                    gameLabel.textColor = UIColor(hexString: "#dbd16d")
                    
                    titleLabel.text = LocalDataBase().withOtherWordsList[gameNumber].title
                    label1.text = LocalDataBase().withOtherWordsList[gameNumber].word1
                    label2.text = LocalDataBase().withOtherWordsList[gameNumber].word2
                    label3.text = LocalDataBase().withOtherWordsList[gameNumber].word3
                    label4.text = LocalDataBase().withOtherWordsList[gameNumber].word4
                    label5.text = LocalDataBase().withOtherWordsList[gameNumber].word5
                    
                    
                }
                else if(game == 1){
                    seconds = 45
                    timeLabel.backgroundColor = UIColor(hexString: "#cc7297")
                    menuView.backgroundColor = UIColor(hexString: "#cc7297")
                    menuButton.backgroundColor = UIColor(hexString: "#cc7297")
                    doneOutlet.backgroundColor = UIColor(hexString: "#cc7297")
                    gameLabel.textColor = UIColor(hexString: "#cc7297")
                    titleLabel.text = LocalDataBase().charadeList[gameNumber].title
                    label1.text = LocalDataBase().charadeList[gameNumber].word1
                    label2.text = LocalDataBase().charadeList[gameNumber].word2
                    label3.text = LocalDataBase().charadeList[gameNumber].word3
                    label4.text = LocalDataBase().charadeList[gameNumber].word4
                    label5.text = LocalDataBase().charadeList[gameNumber].word5
                    
                }
                else if(game == 4){
                    seconds = 60
                    timeLabel.backgroundColor = UIColor(hexString: "#b4b75f")
                    menuView.backgroundColor = UIColor(hexString: "#b4b75f")
                    menuButton.backgroundColor = UIColor(hexString: "#b4b75f")
                    doneOutlet.backgroundColor = UIColor(hexString: "#b4b75f")
                    gameLabel.textColor = UIColor(hexString: "#b4b75f")
                    titleLabel.text = LocalDataBase().humTheSongList[gameNumber].title
                    label1.text = LocalDataBase().humTheSongList[gameNumber].word1
                    label2.text = LocalDataBase().humTheSongList[gameNumber].word2
                    label3.text = LocalDataBase().humTheSongList[gameNumber].word3
                    label4.text = LocalDataBase().humTheSongList[gameNumber].word4
                    label5.text = LocalDataBase().humTheSongList[gameNumber].word5
                
            }
        }
        
        timeLabel.text = String(seconds)
        
        //UI ------------
        gameView.layer.cornerRadius = 20
        gameView.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        gameView.layer.shadowOffset = CGSize(width:0, height:2.75)
        gameView.layer.shadowRadius = 1.75
        gameView.layer.shadowOpacity = 0.45
        
        
    }
    
    

    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuButton.transform != .identity){
                self.menuButton.transform = .identity
                self.closeMenu()
                self.continueTimer()
            }
        })
        
    }
    
    @IBAction func pauseButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuView.transform == .identity){
                self.closeMenu()
                self.continueTimer()
            }
            else {
                self.pausTimer()
                self.tapGesture = UITapGestureRecognizer(target: self, action: #selector(StartingPage.handleTap))
                self.tapGesture.numberOfTapsRequired = 1
                self.tapGesture.numberOfTouchesRequired = 1
                self.view.addGestureRecognizer(self.tapGesture)
                self.view.isUserInteractionEnabled = true
                self.menuView.transform = .identity
            }
            
        })
        
        UIView.animate(withDuration: 0.6, delay: 0.2, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: [], animations: {
            if(self.menuView.transform == .identity){
                self.helpButton.transform = .identity
                self.scoreButton.transform = .identity
                self.exitButton.transform = .identity
                self.settingsButton.transform = .identity
            }
        })
    }
    
    func closeMenu(){
        self.menuView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
        self.settingsButton.transform = CGAffineTransform(translationX: 15, y: 0)
        self.helpButton.transform = CGAffineTransform(translationX: 15, y: -8)
        self.exitButton.transform = CGAffineTransform(translationX: 0, y: -15)
        self.scoreButton.transform = CGAffineTransform(translationX: 8, y: -9)
        
        
    }
    
    
    @IBAction func doneButton(_ sender: UIButton) {
        timer.invalidate()
        performSegue(withIdentifier: "wordsCharHumToModalSegue", sender: self)
    }
    
    
    
    @IBAction func checkBox1Button(_ sender: BEMCheckBox) {
        if(checkBox1.on == true){
            score = score+1
        } else if(checkBox1.on == false){
            score = score-1
        }
        if(checkBox1.on == true &&
            checkBox2.on == true &&
            checkBox3.on == true &&
            checkBox4.on == true &&
            checkBox5.on == true){
            timer.invalidate()
            performSegue(withIdentifier: "wordsCharHumToModalSegue", sender: self)
        }
    }
    
    @IBAction func checkBox2Button(_ sender: BEMCheckBox) {
        if(checkBox2.on == true){
            score = score+1
        } else if(checkBox2.on == false){
            score = score-1
        }
        if(checkBox1.on == true &&
            checkBox2.on == true &&
            checkBox3.on == true &&
            checkBox4.on == true &&
            checkBox5.on == true){
            timer.invalidate()
            performSegue(withIdentifier: "wordsCharHumToModalSegue", sender: self)
        }
    }
    
    @IBAction func checkBox3Button(_ sender: BEMCheckBox) {
        if(checkBox3.on == true){
            score = score+1
        } else if(checkBox3.on == false){
            score = score-1
        }
        if(checkBox1.on == true &&
            checkBox2.on == true &&
            checkBox3.on == true &&
            checkBox4.on == true &&
            checkBox5.on == true){
            timer.invalidate()
            performSegue(withIdentifier: "wordsCharHumToModalSegue", sender: self)
        }
    }
    
    @IBAction func checkBox4Button(_ sender: BEMCheckBox) {
        if(checkBox4.on == true){
            score = score+1
        } else if(checkBox4.on == false){
            score = score-1
        }
        if(checkBox1.on == true &&
            checkBox2.on == true &&
            checkBox3.on == true &&
            checkBox4.on == true &&
            checkBox5.on == true){
            timer.invalidate()
            performSegue(withIdentifier: "wordsCharHumToModalSegue", sender: self)
        }
    }
    
    @IBAction func checkBox5Button(_ sender: BEMCheckBox) {
        if(checkBox5.on == true){
            score = score+1
        } else if(checkBox5.on == false){
            score = score-1
        }
        
        if(checkBox1.on == true &&
            checkBox2.on == true &&
            checkBox3.on == true &&
            checkBox4.on == true &&
            checkBox5.on == true){
            timer.invalidate()
            performSegue(withIdentifier: "wordsCharHumToModalSegue", sender: self)
        }
    }
    
    
    func playMusic(){
        if(LocalDataBase.soundOn == true){
        do{
            soundPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: audioArray[0], ofType: "mp3")!))
            soundPlayer.prepareToPlay()
        }
        catch{
            print(error)
        }
        soundPlayer.play()
        }
    }
    
    func pausTimer(){
        timer.invalidate()
    }
    func continueTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WordsCharadesHum.startTimer), userInfo: nil, repeats: true)
    }
    
    
    @objc func startTimer() {
        seconds=seconds-1
        timeLabel.text = String(seconds)
        
        if (seconds == 0){
            playMusic()
            timer.invalidate()
            performSegue(withIdentifier: "wordsCharHumToModalSegue", sender: self)
            
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ModalViewPopUp {
            destination.points = score
            if let team = teamID{
                destination.teamID = team
            }
            if let gameNr = game{
                destination.game = gameNr
            }

        }
        if let destination = segue.destination as? Rules{
            if let gameNr = game{
                if (gameNr == 0){
                    destination.firstViewString = "withOtherWords"
                }
                else if (gameNr == 1){
                    destination.firstViewString = "charades"
                }
                else if (gameNr == 4){
                    destination.firstViewString = "humTheSong"
                }
                
            }
            
        }
        
    }
    
}
