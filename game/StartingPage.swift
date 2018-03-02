//
//  StartingPage.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-18.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class StartingPage: UIViewController {
    
    @IBOutlet weak var uiView: UIViewX!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var menuView: UIViewX!
    @IBOutlet weak var playerButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var menuButton: FloatingActionButton!
    
    
    @IBOutlet weak var getMoreCardsButtonOutlet: UIButton!
    
    
    var tapGesture = UITapGestureRecognizer()
   
    override func viewDidLoad() {
        super.viewDidLoad()
         if(CoreDataHandler.fetchCardDecksInSettings()?.count != 0){
           LocalDataBase.tempCardDeck.removeAll()
            for deck in CoreDataHandler.fetchCardDecksInSettings()!{
                LocalDataBase.tempCardDeck.append(Int(deck.numbers))
            }
        }
    
        closeMenu()
        LocalDataBase().upDateCoreDateOnFirstLaunch()
        
        startButton.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        startButton.layer.shadowOffset = CGSize(width:0, height:2.75)
        startButton.layer.shadowRadius = 1.75
        startButton.layer.shadowOpacity = 0.45
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        startButton.pulsateSlow()
        
    }
    
    @IBAction func startBut(_ sender: UIButton) {
        performSegue(withIdentifier: "startToAddPlayerSegue", sender: self)
    }

    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuButton.transform != .identity){
                self.menuButton.transform = .identity
                self.closeMenu()
            }
        })
        
    }
    
    
    @IBAction func menuTapped(_ sender: FloatingActionButton) {
        
        UIView.animate(withDuration: 0.3, animations: {
            if (self.menuView.transform == .identity){
                self.closeMenu()
               
            }
            else {
                self.tapGesture = UITapGestureRecognizer(target: self, action: #selector(StartingPage.handleTap))
                self.tapGesture.numberOfTapsRequired = 1
                self.tapGesture.numberOfTouchesRequired = 1
                self.view.addGestureRecognizer(self.tapGesture)
                self.view.isUserInteractionEnabled = true
                self.menuView.transform = .identity
            }
        })
        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: [], animations: {
            if (self.menuView.transform == .identity){
                self.playerButton.transform = .identity
                self.settingsButton.transform = .identity
                self.helpButton.transform = .identity
                
            }
        })
    }
    
    @IBAction func playersButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showPlayerListSegue", sender: self)
    }
    @IBAction func settingsBut(_ sender: UIButton) {
        performSegue(withIdentifier: "startToSettingsSegue", sender: self)
    }
    
    @IBAction func helpBut(_ sender: UIButton) {
        performSegue(withIdentifier: "startToRulesSegue", sender: self)
    }
    
    
    func closeMenu(){
        menuView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.playerButton.transform = CGAffineTransform(translationX: 0, y: 15)
        
        self.settingsButton.transform = CGAffineTransform(translationX: 11, y: 11)
        self.helpButton.transform = CGAffineTransform(translationX: 15, y: 0)
    }
    
    
    @IBAction func showPlayersButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showPlayerListSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? Rules{
            destination.firstViewString = "shortGameInstructions"
        }
    }
    
    
    
}
