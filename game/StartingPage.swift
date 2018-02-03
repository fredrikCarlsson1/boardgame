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
    
    
    
    var colorArray: [(color1: UIColor, color2: UIColor)] = []
    
    let c1 = UIColor.init(hexString: "#cb356b")
    let c2 = UIColor.init(hexString: "#bd3f32")
    let c3 = UIColor.init(hexString: "#f3904f")
    let c4 = UIColor.init(hexString: "#3b4371")
    let c5 = UIColor.init(hexString: "#642b73")
    let c6 = UIColor.init(hexString: "#c6426e")
    let c7 = UIColor.init(hexString: "#283c86")
    let c8 = UIColor.init(hexString: "#45a247")
    let c9 = UIColor.init(hexString: "#000000")
    let c10 = UIColor.init(hexString: "#0f9b0f")
    let c11 = UIColor.init(hexString: "#EF3B36")
    let c12 = UIColor.init(hexString: "#EF3B36")
    
    let color1 = UIColor(hexString: "#A73737")
    let color2 = UIColor(hexString: "#7A2828")
    
    
    var colorIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        closeMenu()
        
        startButton.pulsateSlow()
  
        
        startButton.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        startButton.layer.shadowOffset = CGSize(width:0, height:2.75)
        startButton.layer.shadowRadius = 1.75
        startButton.layer.shadowOpacity = 0.45
        
        //animateBackGroundColor()
        
    }
    
    @IBAction func startBut(_ sender: UIButton) {
        performSegue(withIdentifier: "startToAddPlayerSegue", sender: self)
    }
    
    
    func animateBackGroundColor(){
        colorIndex = colorIndex + 1
        if (colorIndex == colorArray.count-1){
            colorIndex = 0
        }
        
        UIView.transition(with: self.uiView, duration: 3, options: [.transitionCrossDissolve, .allowUserInteraction], animations: {
            self.uiView.firstColor = self.colorArray[self.colorIndex].color1; self.uiView.secondColor = self.colorArray[self.colorIndex].color2
        }){ (success) in
            self.animateBackGroundColor()
        }
        
    }
    
    @IBAction func menuTapped(_ sender: FloatingActionButton) {
        UIView.animate(withDuration: 0.3, animations: {
            if (self.menuView.transform == .identity){
                self.closeMenu()
            }
            else {
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
    
    
    
    
}
