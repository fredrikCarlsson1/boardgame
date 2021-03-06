//
//  CanYouFigureItOutPopUp.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-18.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit


class CanYouFigureItOutPopUp: UIViewController {
    var teamID: Int?
    var game: Int?
    var titleNr = LocalDataBase.canYouFigureItOutCount
    var answer: String?
    var hintNumber = 5
    var tapGesture = UITapGestureRecognizer()
    
    
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var hintButton: UIButtonX!
    @IBOutlet weak var menuView: UIViewX!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var scoreButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var fatTextView: UITextView!
    @IBOutlet weak var menuButton: FloatingActionButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        closeMenu()
        pointsLabel.text = String("\(hintNumber) \(NSLocalizedString("points", comment: ""))")
        subjectLabel.text = LocalDataBase().canYouFigureItOutList[titleNr].subject
        fatTextView.text = ("\(NSLocalizedString("firstClue", comment: "")) \n\(LocalDataBase().canYouFigureItOutList[titleNr].clue1) ")
        
    }
        

    @IBAction func nextHintButton(_ sender: UIButton) {
        hintNumber=hintNumber-1
        pointsLabel.text=String("\(hintNumber) \(NSLocalizedString("points", comment: ""))")
        if(hintNumber == 4){
            fatTextView.text = ("\(NSLocalizedString("secondClue", comment: "")) \n\(LocalDataBase().canYouFigureItOutList[titleNr].clue2)")
            textView.text = ("\(NSLocalizedString("firstClue", comment: "")) \n\(LocalDataBase().canYouFigureItOutList[titleNr].clue1)")
        }
        else if(hintNumber == 3){
            fatTextView.text = ("\(NSLocalizedString("thirdClue", comment: "")) \n\(LocalDataBase().canYouFigureItOutList[titleNr].clue3) ")
            
            textView.text = ("\(NSLocalizedString("secondClue", comment: "")) \n\(LocalDataBase().canYouFigureItOutList[titleNr].clue2)\n---\n\(NSLocalizedString("firstClue", comment: "")) \n \(LocalDataBase().canYouFigureItOutList[titleNr].clue1)")
        }
        else if(hintNumber == 2){
            fatTextView.text = ("\(NSLocalizedString("fourthClue", comment: ""))\n\(LocalDataBase().canYouFigureItOutList[titleNr].clue4)")
            
            textView.text = ("\(NSLocalizedString("thirdClue", comment: "")) \(LocalDataBase().canYouFigureItOutList[titleNr].clue3) \n---\n \(NSLocalizedString("secondClue", comment: "")) \n\(LocalDataBase().canYouFigureItOutList[titleNr].clue2) \n---\n\(NSLocalizedString("firstClue", comment: "")) \n \(LocalDataBase().canYouFigureItOutList[titleNr].clue1)")
        }
        else if(hintNumber == 1){
            hintButton.isEnabled = false
            hintButton.backgroundColor = .gray
            hintButton.titleLabel?.textColor = .gray
                fatTextView.text = ("\(NSLocalizedString("fifthClue", comment: ""))\n \(LocalDataBase().canYouFigureItOutList[titleNr].clue5)")
            
                textView.text = ("\(NSLocalizedString("fourthClue", comment: "")) \n\(LocalDataBase().canYouFigureItOutList[titleNr].clue4)\n---\n \(NSLocalizedString("thirdClue", comment: "")) \n \(LocalDataBase().canYouFigureItOutList[titleNr].clue3) \n---\n \(NSLocalizedString("secondClue", comment: "")) \n\(LocalDataBase().canYouFigureItOutList[titleNr].clue2) \n---\n\(NSLocalizedString("firstClue", comment: "")) \n \(LocalDataBase().canYouFigureItOutList[titleNr].clue1)")
            
            
            
        }
        
    }
    
    @IBAction func guessButton(_ sender: UIButton) {
        answer = LocalDataBase().canYouFigureItOutList[titleNr].answer
        performSegue(withIdentifier: "figureToAlertSegue", sender: self)
      
    }
    
    @IBAction func pauseButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuView.transform == .identity){
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
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuButton.transform != .identity){
                self.menuButton.transform = .identity
                self.closeMenu()
            }
        })
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AlertView {
            if let team = teamID{
                destination.teamID = team
            }
            if let answer = answer{
                destination.answer = answer
            }
            destination.gameNumber = 3
            destination.score = hintNumber
        }
        if let destination = segue.destination as? Rules{
            destination.firstViewString = "canYouFigureItOut"
        }
    }
}
