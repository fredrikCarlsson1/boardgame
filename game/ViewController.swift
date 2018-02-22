//
//  ViewController.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-09.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit
import AVFoundation
var audioPlayer = AVAudioPlayer()

class ViewController: UIViewController {
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var menuView: UIViewX!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var scoreButton: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var menuButton: FloatingActionButton!
    @IBOutlet weak var labelView: UIView!
    
    var currentSong = 0
    
    var imageArray = [UIImage]()
    var labelArray = [UIImage]()
    var timer = Timer()
    var seconds = 5
    var time2 = 10
    var randomNr = 0
    var gameNr = 0
    var teamID = 0
    var tapGesture = UITapGestureRecognizer()
    
    let team1 = UIButton()
    let team2 = UIButton()
    let team3 = UIButton()
    let team4 = UIButton()
    let team5 = UIButton()

    let myLabel1 = UILabel()
    let myLabel2 = UILabel()
    let myLabel3 = UILabel()
    let myLabel4 = UILabel()
    let myLabel5 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        closeMenu()
        imageArray = [#imageLiteral(resourceName: "citat"),#imageLiteral(resourceName: "tumme"),#imageLiteral(resourceName: "lag"),#imageLiteral(resourceName: "stege"),#imageLiteral(resourceName: "not")]
        labelArray = [#imageLiteral(resourceName: "yellow"),#imageLiteral(resourceName: "pink"),#imageLiteral(resourceName: "blue"),#imageLiteral(resourceName: "purple"),#imageLiteral(resourceName: "green")]
        button.setBackgroundImage(#imageLiteral(resourceName: "startknapp"), for: .normal)
        for team in LocalDataBase.teamArray{
            if (team.isUp == true){
                teamID = team.id
            }
            textView.text = LocalDataBase().setLabelTextUnderStartButton(team: LocalDataBase.teamArray[teamID], nrOfRounds: LocalDataBase.nrOfRounds, sortedTeamArray: LocalDataBase().getSortedTeams())
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let sortedByPoints = LocalDataBase().getSortedTeams()
        team1.setBackgroundImage(#imageLiteral(resourceName: "Team_work_icon_purple"), for: .normal)
        team1.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        team2.setBackgroundImage(#imageLiteral(resourceName: "Team_work_yellow"), for: .normal)
        team2.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        team3.setBackgroundImage(#imageLiteral(resourceName: "Team_work_blue"), for: .normal)
        team3.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        team4.setBackgroundImage(#imageLiteral(resourceName: "Team_work_iconpink"), for: .normal)
        team4.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        team5.setBackgroundImage(#imageLiteral(resourceName: "Team_work_green"), for: .normal)
        team5.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        team1.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        team1.layer.shadowOffset = CGSize(width:0, height:2.75)
        team1.layer.shadowRadius = 1.75
        team1.layer.shadowOpacity = 0.55
        
        team2.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        team2.layer.shadowOffset = CGSize(width:0, height:2.75)
        team2.layer.shadowRadius = 1.75
        team2.layer.shadowOpacity = 0.55
        
        team3.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        team3.layer.shadowOffset = CGSize(width:0, height:2.75)
        team3.layer.shadowRadius = 1.75
        team3.layer.shadowOpacity = 0.55
        
        team4.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        team4.layer.shadowOffset = CGSize(width:0, height:2.75)
        team4.layer.shadowRadius = 1.75
        team4.layer.shadowOpacity = 0.55
        
        team5.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        team5.layer.shadowOffset = CGSize(width:0, height:2.75)
        team5.layer.shadowRadius = 1.75
        team5.layer.shadowOpacity = 0.55
        
        
        
        let stackViewWidthForEachSubview = (Int(stackView.frame.width)/LocalDataBase.teamArray.count)
        let myLabelView1 = UIImageView(frame: CGRect(x: 10, y: 115, width: stackViewWidthForEachSubview-20, height: 30))
        let image11 = textToImageTeamLabel(drawText: LocalDataBase.teamArray[0].name as NSString, inImage: #imageLiteral(resourceName: "purple"))
        myLabelView1.image = image11
        
        let myView1 = UIImageView(frame: CGRect(x: 5, y: 5, width: 35, height: 35))
        let image1 = textToImage(drawText: String(LocalDataBase.teamArray[0].points), inImage: #imageLiteral(resourceName: "purplePoints"), atPoint: CGPoint(x: 90, y: 25))
        myView1.image = image1
        myView1.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        myView1.layer.shadowOffset = CGSize(width:0, height:2.75)
        myView1.layer.shadowRadius = 1.75
        myView1.layer.shadowOpacity = 0.55
        
        team1.addSubview(myView1)
        team1.addSubview(myLabelView1)
        
        let myLabelView2 = UIImageView(frame: CGRect(x: 10, y: 115, width: stackViewWidthForEachSubview-20, height: 30))
        let image22 = textToImageTeamLabel(drawText: LocalDataBase.teamArray[1].name as NSString, inImage: #imageLiteral(resourceName: "yellow"))
        myLabelView2.image = image22
        let myView2 = UIImageView(frame: CGRect(x: 5, y: 5, width: 35, height: 35))
        let image2 = textToImage(drawText: String(LocalDataBase.teamArray[1].points), inImage: #imageLiteral(resourceName: "yellowPoints"), atPoint: CGPoint(x: 90, y: 25))
        myView2.image = image2
        myView2.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        myView2.layer.shadowOffset = CGSize(width:0, height:2.75)
        myView2.layer.shadowRadius = 1.75
        myView2.layer.shadowOpacity = 0.55
        team2.addSubview(myLabelView2)
        team2.addSubview(myView2)
        
        if (LocalDataBase.teamArray.count >= 3){
            let myLabelView3 = UIImageView(frame: CGRect(x: 10, y: 115, width: stackViewWidthForEachSubview-20, height: 30))
            let image33 = textToImageTeamLabel(drawText: LocalDataBase.teamArray[2].name as NSString, inImage: #imageLiteral(resourceName: "blue"))
            myLabelView3.image = image33
            
            let myView3 = UIImageView(frame: CGRect(x: 5, y: 5, width: 35, height: 35))
            let image3 = textToImage(drawText: String(LocalDataBase.teamArray[2].points), inImage: #imageLiteral(resourceName: "bluePoints"), atPoint: CGPoint(x: 90, y: 25))
            myView3.image = image3
            myView3.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
            myView3.layer.shadowOffset = CGSize(width:0, height:2.75)
            myView3.layer.shadowRadius = 1.75
            myView3.layer.shadowOpacity = 0.55
            team3.addSubview(myLabelView3)
            team3.addSubview(myView3)
        }
        if (LocalDataBase.teamArray.count >= 4){
            let myLabelView4 = UIImageView(frame: CGRect(x: 10, y: 115, width: stackViewWidthForEachSubview-20, height: 30))
            let image44 = textToImageTeamLabel(drawText: LocalDataBase.teamArray[2].name as NSString, inImage: #imageLiteral(resourceName: "pink"))
            myLabelView4.image = image44
      
            let myView4 = UIImageView(frame: CGRect(x: 5, y: 5, width: 35, height: 35))
            let image4 = textToImage(drawText: String(LocalDataBase.teamArray[3].points), inImage: #imageLiteral(resourceName: "pinkPoints"), atPoint: CGPoint(x: 90, y: 25))
            myView4.image = image4
            myView4.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
            myView4.layer.shadowOffset = CGSize(width:0, height:2.75)
            myView4.layer.shadowRadius = 1.75
            myView4.layer.shadowOpacity = 0.55
            team4.addSubview(myView4)
            team4.addSubview(myLabelView4)
        }
        if (LocalDataBase.teamArray.count >= 5){
            let myLabelView5 = UIImageView(frame: CGRect(x: 10, y: 115, width: stackViewWidthForEachSubview-20, height: 30))
            let image55 = textToImageTeamLabel(drawText: LocalDataBase.teamArray[2].name as NSString, inImage: #imageLiteral(resourceName: "green"))
            myLabelView5.image = image55
            
            let myView5 = UIImageView(frame: CGRect(x: 5, y: 5, width: 35, height: 35))
            let image5 = textToImage(drawText: String(LocalDataBase.teamArray[4].points), inImage: #imageLiteral(resourceName: "greenPoints"), atPoint: CGPoint(x: 90, y: 25))
            myView5.image = image5
            myView5.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
            myView5.layer.shadowOffset = CGSize(width:0, height:2.75)
            myView5.layer.shadowRadius = 1.75
            myView5.layer.shadowOpacity = 0.55
            team5.addSubview(myView5)
            team5.addSubview(myLabelView5)
        }
      
        team1.tag = 1
        team2.tag = 2
        team3.tag = 3
        team4.tag = 4
        team5.tag = 5
        team1.layer.cornerRadius = 50
        team2.layer.cornerRadius = 50
        team3.layer.cornerRadius = 50
        team4.layer.cornerRadius = 50
        team5.layer.cornerRadius = 50
        
        var buttonArray = [team1, team2, team3, team4, team5]
        let teams = LocalDataBase.teamArray.count
       

        for team in LocalDataBase().getSortedTeams(){
            if (team.isUp){
                teamID = team.id
                buttonArray[team.id].pulsateTeam()
            }
        }
        
        //Place teamImages on screen in order by points
        if(teams == 2){
 
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[0].id], at: 0)
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[1].id], at: 1)
            myLabelView1.frame = CGRect(x: 5, y: 115, width: stackViewWidthForEachSubview-40, height: 30)
            myLabelView2.frame = CGRect(x: 5, y: 115, width: stackViewWidthForEachSubview-40, height: 30)
            stackView.layoutMargins = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 30)
            stackView.isLayoutMarginsRelativeArrangement = true
            if #available(iOS 11.0, *) {
                stackView.setCustomSpacing(40, after: buttonArray[sortedByPoints[0].id])
            } else {
                // Fallback on earlier versions
            }
        }
        if(teams == 3){
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[0].id], at: 0)
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[1].id], at: 1)
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[2].id], at: 2)
        }
        if(teams == 4){
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[0].id], at: 0)
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[1].id], at: 1)
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[2].id], at: 2)
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[3].id], at: 3)
        }
        if(teams == 5){
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[0].id], at: 0)
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[1].id], at: 1)
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[2].id], at: 2)
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[3].id], at: 3)
            stackView.insertArrangedSubview(buttonArray[sortedByPoints[4].id], at: 4)
        }

    }
    
    //Without this code, the teamName and teamScore wont update if showTeams Update
    override func viewWillDisappear(_ animated: Bool) {
        myLabel1.text = ""
        myLabel2.text = ""
        if (LocalDataBase.teamArray.count >= 3){
            myLabel3.text = ""
        }
        else if (LocalDataBase.teamArray.count >= 4){
            myLabel4.text = ""
        }
        else if (LocalDataBase.teamArray.count >= 5){
            myLabel5.text = ""
        }
    }
    
    

    
   func closeMenu(){
        menuView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.helpButton.transform = CGAffineTransform(translationX: 0, y: 15)
        
        self.settingsButton.transform = CGAffineTransform(translationX: 11, y: 11)
        self.scoreButton.transform = CGAffineTransform(translationX: 13, y: 4)
        self.exitButton.transform = CGAffineTransform(translationX: 15, y: 0)
    }
    
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
    
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuButton.transform != .identity){
                self.menuButton.transform = .identity
                self.closeMenu()
            }
        })
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            textView.isHidden = true
            timer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(ViewController.clock), userInfo: nil, repeats: true)
            timer.fire()
        }
    }
   
    //Draw text to Points label
    func textToImage(drawText text: String, inImage image: UIImage, atPoint point: CGPoint) -> UIImage {
        UIGraphicsBeginImageContext(image.size)
        image.draw(in: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
        let font=UIFont.boldSystemFont(ofSize: 350)
        let text_style=NSMutableParagraphStyle()
        text_style.alignment=NSTextAlignment.center
        let text_color=UIColor.black
        let attributes=[NSAttributedStringKey.font:font, NSAttributedStringKey.paragraphStyle:text_style, NSAttributedStringKey.foregroundColor:text_color]
        let text_h=font.lineHeight
        let text_y=(image.size.height-text_h)/2
        let text_rect=CGRect(x: 0, y: text_y-18, width: image.size.width, height: text_h)
        text.draw(in: text_rect.integral, withAttributes: attributes)
        let result=UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return result!
    }
    // Draw text to Game label
    func textToImageLabel(drawText text: NSString, inImage image: UIImage) -> UIImage {
        UIGraphicsBeginImageContext(image.size)
        image.draw(in: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
        let font=UIFont(name: "Helvetica", size: 71)!
        let text_style=NSMutableParagraphStyle()
        text_style.alignment=NSTextAlignment.center
        let text_color=UIColor.white
        let attributes=[NSAttributedStringKey.font:font, NSAttributedStringKey.paragraphStyle:text_style, NSAttributedStringKey.foregroundColor:text_color]
        let text_h=font.lineHeight
        let text_y=(image.size.height-text_h)/2
        let text_rect=CGRect(x: 0, y: text_y-18, width: image.size.width, height: text_h)
        text.draw(in: text_rect.integral, withAttributes: attributes)
        let result=UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return result!
    }
    //Draw text to teamLabel
    func textToImageTeamLabel(drawText text: NSString, inImage image: UIImage) -> UIImage {
        UIGraphicsBeginImageContext(image.size)
        image.draw(in: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
        let font=UIFont(name: "Helvetica", size: 140)!
        let text_style=NSMutableParagraphStyle()
        text_style.alignment=NSTextAlignment.center
        let text_color=UIColor.black
        let attributes=[NSAttributedStringKey.font:font, NSAttributedStringKey.paragraphStyle:text_style, NSAttributedStringKey.foregroundColor:text_color]
        let text_h=font.lineHeight
        let text_y=(image.size.height-text_h)/2
        let text_rect=CGRect(x: 0, y: text_y-18, width: image.size.width, height: text_h)
        text.draw(in: text_rect.integral, withAttributes: attributes)
        let result=UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return result!
    }
    
    // Goes of after pressing start-button
    @objc func clock() {
        
        button.isEnabled = false
        team1.isEnabled = false
        team2.isEnabled = false
        team3.isEnabled = false
        team4.isEnabled = false
        team5.isEnabled = false
        menuButton.isEnabled = false
      
        
        let random = Int(arc4random_uniform(UInt32(LocalDataBase.keysOfGamesArray.count)))
        
        if(random != randomNr){
            randomNr = random
        }
        else if (random == randomNr && random != 4){
            randomNr = random+1
        }
        else if(random == randomNr && randomNr == 4){
            randomNr = random-1
        }
        
        seconds = seconds-1
        button.setBackgroundImage(imageArray[randomNr], for: .normal)
        button.pulsate()
        
        
        if (seconds == 0){
            button.pulsateSelected()
            
            gameNr = randomNr
            
            let labelImageView = UIImageView(frame: CGRect(x: -10, y: 10, width: 220, height: 54))
            let labelImage = textToImageLabel(drawText: String(LocalDataBase.keysOfGamesArray[randomNr]) as NSString, inImage: labelArray[randomNr])
        
            labelImageView.image = labelImage
            labelImageView.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:0.8).cgColor
            labelImageView.layer.shadowOffset = CGSize(width:0, height:2.75)
            labelImageView.layer.shadowRadius = 0.75
            labelImageView.layer.shadowOpacity = 0.35
            labelView.addSubview(labelImageView)
            
            labelView.alpha = 0.0
            
            UIView.animate(withDuration: 2.4, delay: 0.8,
                           options: [UIViewAnimationOptions.curveEaseOut], animations: {
                            self.labelView.alpha = 1.0
                            
            }, completion: nil)
            
            timer.invalidate()
            currentSong = 1
            playMusic()
            timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(ViewController.wait), userInfo: nil, repeats: true)
        }
    }
    
    @objc func wait(){
        time2 = time2-1
        
        if(time2 == 0){
            if(LocalDataBase.soundOn == true){
                audioPlayer.stop()
            }
            timer.invalidate()
            performSegue(withIdentifier: "popUpSegue", sender: self)
        }
    }
    
    func playMusic(){
        if(LocalDataBase.soundOn == true){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "gum", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        }
        catch{
            print(error)
        }
        audioPlayer.play()
        }
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let btnTag: UIButton = sender
        teamID = btnTag.tag-1
        performSegue(withIdentifier: "showPlayersSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? popUpViewController {
            destination.gameNumber = gameNr
            destination.teamID = teamID
        }
        
        if let destination = segue.destination as? showTeamsViewController {
            destination.teamID = teamID
        }
        if let destination = segue.destination as? Rules{
            destination.firstViewString = "startGameInstructions"
        }
        
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
                self.exitButton.transform = .identity
                self.settingsButton.transform = .identity
                self.scoreButton.transform = .identity
                self.helpButton.transform = .identity
            }
        })
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuButton.transform != .identity){
                self.menuButton.transform = .identity
                self.closeMenu()
            }
        })
        LocalDataBase.cardDeck = LocalDataBase.tempCardDeck
        LocalDataBase().updateTheListCount()

        textView.isHidden = true
        timer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(ViewController.clock), userInfo: nil, repeats: true)
        timer.fire()
    }
    
}

