//
//  popUpViewController.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-09.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit


class popUpViewController: UIViewController {
    
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var popUpLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var popUpTitleLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var buttonPressedView: UIView!
    @IBOutlet weak var scoreButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var menuButton: FloatingActionButton!

    var gameNumber: Int?
    var teamID: Int?
    var score = 0
    let random = 0
    var subjectNumber = 0
    var tapGesture = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ------UI---------

       
        closeMenu()
        buttonPressedView.layer.cornerRadius = 150
        
        if let gameNumber = gameNumber {
            if (gameNumber == 0){
                buttonPressedView.backgroundColor = UIColor(hexString: "#dbd16d")
                menuButton.backgroundColor = UIColor(hexString: "#dbd16d")
                startButton.backgroundColor = UIColor(hexString: "#dbd16d")
                popUpLabel.textColor = UIColor(hexString: "#dbd16d")
            }
            else if(gameNumber == 1){
                buttonPressedView.backgroundColor = UIColor(hexString: "#cc7297")
                menuButton.backgroundColor = UIColor(hexString: "#cc7297")
                startButton.backgroundColor = UIColor(hexString: "#cc7297")
                popUpLabel.textColor = UIColor(hexString: "#cc7297")
                
            }
            else if(gameNumber == 2){
                buttonPressedView.backgroundColor = UIColor(hexString: "#568da0")
                menuButton.backgroundColor = UIColor(hexString: "#568da0")
                startButton.backgroundColor = UIColor(hexString: "#568da0")
                popUpLabel.textColor = UIColor(hexString: "#568da0")
                
            }
            else if(gameNumber == 3){
                buttonPressedView.backgroundColor = UIColor(hexString: "#8f6886")
                menuButton.backgroundColor = UIColor(hexString: "#8f6886")
                startButton.backgroundColor = UIColor(hexString: "#8f6886")
                popUpLabel.textColor = UIColor(hexString: "#8f6886")
            }
            else if(gameNumber == 4){
                buttonPressedView.backgroundColor = UIColor(hexString: "#b4b75f")
                menuButton.backgroundColor = UIColor(hexString: "#b4b75f")
                startButton.backgroundColor = UIColor(hexString: "#b4b75f")
                popUpLabel.textColor = UIColor(hexString: "#b4b75f")
            }
            popUpLabel.text = LocalDataBase.keysOfGamesArray[gameNumber]
            
            //*********************************
            

            popUpTitleLabel.text = LocalDataBase().getSubjectFrom(list: gameNumber)
            
            //******************************
            
            if let teamID = teamID{
                textView.text = LocalDataBase().setTextViewInPopUp(team: LocalDataBase.teamArray[teamID], gameNumber: gameNumber, title: popUpTitleLabel.text!)
            }
            
        }
    }
    
   
    
    @IBAction func startGameButton(_ sender: UIButton) {
        if let number = gameNumber{
            if (number == 0 || number == 1 || number == 4){
                performSegue(withIdentifier: "wordsCharadesHumSegue", sender: self)
            }
            else if(number == 2){
                performSegue(withIdentifier: "teamChallangeSegue", sender: self)
            }
            else{
                performSegue(withIdentifier: "figureItOutSegue", sender: self)
            }
        }
        
     
    }
    

    @IBAction func button(_ sender: FloatingActionButton) {
        UIView.animate(withDuration: 0.3, animations: {
            if(self.buttonPressedView.transform == .identity){
                self.closeMenu()
            }
            else {
                self.tapGesture = UITapGestureRecognizer(target: self, action: #selector(StartingPage.handleTap))
                self.tapGesture.numberOfTapsRequired = 1
                self.tapGesture.numberOfTouchesRequired = 1
                self.view.addGestureRecognizer(self.tapGesture)
                self.view.isUserInteractionEnabled = true
                self.buttonPressedView.transform = .identity
            }
            
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: [], animations: {
            if(self.buttonPressedView.transform == .identity){
                self.helpButton.transform = .identity
                self.scoreButton.transform = .identity
                self.exitButton.transform = .identity
                self.settingsButton.transform = .identity
            }
        })
    }
    
    func closeMenu(){
        self.buttonPressedView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
        self.settingsButton.transform = CGAffineTransform(translationX: 15, y: 0)
        self.helpButton.transform = CGAffineTransform(translationX: 15, y: -8)
        self.exitButton.transform = CGAffineTransform(translationX: 0, y: -15)
        self.scoreButton.transform = CGAffineTransform(translationX: 8, y: -9)
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuButton.transform != .identity){
                self.menuButton.transform = .identity
                self.closeMenu()
            }
        })
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? WordsCharadesHum{
            destination.teamID = teamID
            destination.game = gameNumber
        }
        if let destination = segue.destination as? TeamChallengePopUp{
            destination.teamID = teamID
            destination.game = gameNumber
           
        }
        if let destination = segue.destination as? CanYouFigureItOutPopUp{
            destination.teamID = teamID
            destination.game = gameNumber
            
        }
        if let destination = segue.destination as? Rules{
            if let gameNr = gameNumber{
                if (gameNr == 0){
                    destination.firstViewString = "withOtherWords"
                }
                    
                else if (gameNr == 1){
                    destination.firstViewString = "charades"
                }
                else if (gameNr == 2){
                    destination.firstViewString = "teamChallenge"
                }
                else if (gameNr == 3){
                    destination.firstViewString = "canYouFigureItOut"
                }
                else if (gameNr == 4){
                    destination.firstViewString = "humTheSong"
                }
                
            }
            
        }
        
    }
}


