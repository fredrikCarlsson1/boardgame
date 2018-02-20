//
//  NewGameViewController.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-15.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class NewGameViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var nrOfTeamsPicker: UIPickerView!
    @IBOutlet weak var addPlayersToTeamLabel: UILabel!
    
    @IBOutlet weak var scrollImage: UIImageView!
    
    @IBOutlet weak var helpView: UIView!
    
    var tapGesture = UITapGestureRecognizer()
    let nrSelection = [2,3,4,5]
    var teamsSelected = 0
    var pictureArray = [#imageLiteral(resourceName: "Team_work_icon_purple"), #imageLiteral(resourceName: "Team_work_yellow"), #imageLiteral(resourceName: "Team_work_blue"), #imageLiteral(resourceName: "Team_work_iconpink"), #imageLiteral(resourceName: "Team_work_green")]
    let team1 = UIButton()
    let team2 = UIButton()
    let team3 = UIButton()
    let team4 = UIButton()
    let team5 = UIButton()
    
    
    let team1CheckView = UIImageView()
    let team2CheckView = UIImageView()
    let team3CheckView = UIImageView()
    let team4CheckView = UIImageView()
    let team5CheckView = UIImageView()
    
    let team1Label = UILabel()
    let team2Label = UILabel()
    let team3Label = UILabel()
    let team4Label = UILabel()
    let team5Label = UILabel()
    var rotationAngle:CGFloat!
    var teamID: Int?
    var random: Int?
    
    
    @IBOutlet weak var helpViewTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        helpViewTextView.text = NSLocalizedString("newGameHelpText", comment: "")
        scrollView.isScrollEnabled = true
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: CGFloat(150*teamsSelected))
        rotationAngle = -90 * (.pi/180)
        let y = nrOfTeamsPicker.frame.origin.y
        nrOfTeamsPicker.transform = CGAffineTransform(rotationAngle: rotationAngle)
        self.nrOfTeamsPicker.frame = CGRect(x: -100, y: y, width: view.frame.width + 200, height: 70
        )
        nrOfTeamsPicker.selectRow(2, inComponent: 0, animated: true)
        nrOfTeamsPicker.delegate = self
        nrOfTeamsPicker.dataSource = self
        if (teamsSelected>0){
            nrOfTeamsPicker.selectRow(teamsSelected-2, inComponent: 0, animated: true)
        }
        team1.setBackgroundImage(#imageLiteral(resourceName: "Team_work_icon_purple"), for: .normal)
        team2.setBackgroundImage(#imageLiteral(resourceName: "Team_work_yellow"), for: .normal)
        team3.setBackgroundImage(#imageLiteral(resourceName: "Team_work_blue"), for: .normal)
        team4.setBackgroundImage(#imageLiteral(resourceName: "Team_work_iconpink"), for: .normal)
        team5.setBackgroundImage(#imageLiteral(resourceName: "Team_work_green"), for: .normal)
        
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
        
        if(teamsSelected == 0){
            teamsSelected = 2
            removeButtonsFromScreen()
            var i = 0
            for team in 1...teamsSelected{
                i = i+1
                let tmpString = NSLocalizedString("team_names", comment: "")
                let newTeam = Team(name: String(format: tmpString, i), points: 0, id: team-1, isUp: false)
                LocalDataBase.teamArray.append(newTeam)
            }
            random = Int(arc4random_uniform(UInt32(LocalDataBase.teamArray.count)))
            selectStartingTeam()
        }
        if(teamsSelected>2){
            scrollImage.isHidden = false
            
        }
        else{
            scrollImage.isHidden = true
        }
        addButtonsToScreen()
        
    }
    

    
    
    func selectStartingTeam(){
        if let rand = random{
            LocalDataBase.teamArray[rand].isUp = true
        }
    }
    
    
    
    @objc func buttonAction(sender: UIButton!) {
        let btnTag: UIButton = sender
        teamID = btnTag.tag
        performSegue(withIdentifier: "selectPlayerSegue", sender: self)
        
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 80
        
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        label.text = String(nrSelection[row])
        label.font = UIFont.systemFont(ofSize: 40, weight: .thin)
        label.textAlignment = .center
        view.addSubview(label)
        
        view.transform = CGAffineTransform(rotationAngle: (90 * (.pi/180)))
        
        return view
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return nrSelection.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        LocalDataBase.teamArray.removeAll()
        removeButtonsFromScreen()
        teamsSelected = Int(nrSelection[row])
        
        if(teamsSelected>2){
            scrollImage.isHidden = false
            
        }
        else{
            scrollImage.isHidden = true
        }
        var i = 1
        for team in 1...teamsSelected{
            let tmpString = NSLocalizedString("team_names", comment: "")
            let newTeam = Team(name: String(format: tmpString, i), points: 0, id: team-1, isUp: false)
            LocalDataBase.teamArray.append(newTeam)
            i = i+1
        }
        random = Int(arc4random_uniform(UInt32(LocalDataBase.teamArray.count)))
        selectStartingTeam()
        addButtonsToScreen()
    }
    
    func addButtonsToScreen(){
        let scrollWidth = scrollView.frame.size.width
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: CGFloat(150*teamsSelected))
        team1.frame = CGRect(x: scrollWidth/2-50, y: 0, width: 100, height: 100)
        team2.frame = CGRect(x: scrollWidth/2-50 , y: 150, width: 100, height: 100)
        team3.frame = CGRect(x: scrollWidth/2-50, y: 300, width: 100, height: 100)
        team4.frame = CGRect(x: scrollWidth/2-50, y: 450, width: 100, height: 100)
        team5.frame = CGRect(x: scrollWidth/2-50, y: 600, width: 100, height: 100)
        team1Label.frame = CGRect(x: scrollWidth/2-50, y: 105, width: 100, height: 25)
        team1Label.text = NSLocalizedString("team", comment: "") + " 1"
        team1Label.textAlignment = .center
        team1Label.layer.masksToBounds = true
        team1Label.layer.cornerRadius = 12
        team1Label.textAlignment = .center
        team1Label.font = UIFont.boldSystemFont(ofSize: 17)
        team1Label.layer.borderColor = UIColor.black.cgColor
        team1Label.layer.borderWidth = 1
        
        team1CheckView.frame = CGRect(x: scrollWidth-40, y: 30, width: 40, height: 40)
        team2CheckView.frame = CGRect(x: scrollWidth-40 , y: 180, width: 40, height: 40)
        team3CheckView.frame = CGRect(x: scrollWidth-40, y: 339, width: 40, height: 40)
        team4CheckView.frame = CGRect(x: scrollWidth-40, y: 480, width: 40, height: 40)
        team5CheckView.frame = CGRect(x: scrollWidth-40, y: 630, width: 40, height: 40)
        if(LocalDataBase.teamArray.count == 2){
            if(LocalDataBase.teamArray[0].players.count >= 2){
                team1CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
            
            if(LocalDataBase.teamArray[1].players.count >= 2){
                team2CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
            
        }
        if(LocalDataBase.teamArray.count == 3){
            if(LocalDataBase.teamArray[0].players.count >= 2){
                team1CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
            
            if(LocalDataBase.teamArray[1].players.count >= 2){
                team2CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
            
            if(LocalDataBase.teamArray[2].players.count >= 2){
                team3CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
            
        }
        
        if(LocalDataBase.teamArray.count == 4){
            if(LocalDataBase.teamArray[0].players.count >= 2){
                team1CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
            
            if(LocalDataBase.teamArray[1].players.count >= 2){
                team2CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
            
            if(LocalDataBase.teamArray[2].players.count >= 2){
                team3CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
            
            if(LocalDataBase.teamArray[3].players.count >= 2){
                team4CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
            
            
        }
        if(LocalDataBase.teamArray.count == 5){
            if(LocalDataBase.teamArray[0].players.count >= 2){
                team1CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
           
            if(LocalDataBase.teamArray[1].players.count >= 2){
                team2CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
            
            if(LocalDataBase.teamArray[2].players.count >= 2){
                team3CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
           
            if(LocalDataBase.teamArray[3].players.count >= 2){
                team4CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
           
            if(LocalDataBase.teamArray[4].players.count >= 2){
                team5CheckView.image = #imageLiteral(resourceName: "checkMark")
            }
            
            
        }
        
        team2Label.frame = CGRect(x: scrollWidth/2-50, y: 255, width: 100, height: 25)
        team2Label.text = NSLocalizedString("team", comment: "") + " 2"
        team2Label.textAlignment = .center
        team2Label.layer.masksToBounds = true
        team2Label.layer.cornerRadius = 12
        team2Label.textAlignment = .center
        team2Label.font = UIFont.boldSystemFont(ofSize: 17)
        team2Label.layer.borderColor = UIColor.black.cgColor
        team2Label.layer.borderWidth = 1
        team3Label.frame = CGRect(x: scrollWidth/2-50, y: 405, width: 100, height: 25)
        team3Label.text = NSLocalizedString("team", comment: "") + " 3"
        team3Label.textAlignment = .center
        team3Label.layer.masksToBounds = true
        team3Label.layer.cornerRadius = 12
        team3Label.textAlignment = .center
        team3Label.font = UIFont.boldSystemFont(ofSize: 17)
        team3Label.layer.borderColor = UIColor.black.cgColor
        team3Label.layer.borderWidth = 1
        team4Label.frame = CGRect(x: scrollWidth/2-50, y: 555, width: 100, height: 25)
        team4Label.text = NSLocalizedString("team", comment: "") + " 4"
        team4Label.textAlignment = .center
        team4Label.layer.masksToBounds = true
        team4Label.layer.cornerRadius = 12
        team4Label.textAlignment = .center
        team4Label.font = UIFont.boldSystemFont(ofSize: 17)
        team4Label.layer.borderColor = UIColor.black.cgColor
        team4Label.layer.borderWidth = 1
        team5Label.frame = CGRect(x: scrollWidth/2-50, y: 705, width: 100, height: 25)
        team5Label.text = NSLocalizedString("team", comment: "") + " 5"
        team5Label.textAlignment = .center
        team5Label.layer.masksToBounds = true
        team5Label.layer.cornerRadius = 12
        team5Label.textAlignment = .center
        team5Label.font = UIFont.boldSystemFont(ofSize: 17)
        team5Label.layer.borderColor = UIColor.black.cgColor
        team5Label.layer.borderWidth = 1
        
        team1.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        team2.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        team3.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        team4.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        team5.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        team1.tag = 1
        team2.tag = 2
        team3.tag = 3
        team4.tag = 4
        team5.tag = 5
        
        if(teamsSelected == 2){
            scrollView.addSubview(team1)
            scrollView.addSubview(team2)
            scrollView.addSubview(team1Label)
            scrollView.addSubview(team2Label)
            scrollView.addSubview(team1CheckView)
            scrollView.addSubview(team2CheckView)
        }
        if(teamsSelected == 3){
            scrollView.addSubview(team1)
            scrollView.addSubview(team2)
            scrollView.addSubview(team3)
            scrollView.addSubview(team1Label)
            scrollView.addSubview(team2Label)
            scrollView.addSubview(team3Label)
            scrollView.addSubview(team1CheckView)
            scrollView.addSubview(team2CheckView)
            scrollView.addSubview(team3CheckView)
            
            
        }
        if(teamsSelected == 4){
            scrollView.addSubview(team1)
            scrollView.addSubview(team2)
            scrollView.addSubview(team3)
            scrollView.addSubview(team4)
            scrollView.addSubview(team1Label)
            scrollView.addSubview(team2Label)
            scrollView.addSubview(team3Label)
            scrollView.addSubview(team4Label)
            scrollView.addSubview(team1CheckView)
            scrollView.addSubview(team2CheckView)
            scrollView.addSubview(team3CheckView)
            scrollView.addSubview(team4CheckView)
        }
        if(teamsSelected == 5){
            scrollView.addSubview(team1)
            scrollView.addSubview(team2)
            scrollView.addSubview(team3)
            scrollView.addSubview(team4)
            scrollView.addSubview(team5)
            scrollView.addSubview(team1Label)
            scrollView.addSubview(team2Label)
            scrollView.addSubview(team3Label)
            scrollView.addSubview(team4Label)
            scrollView.addSubview(team5Label)
            scrollView.addSubview(team1CheckView)
            scrollView.addSubview(team2CheckView)
            scrollView.addSubview(team3CheckView)
            scrollView.addSubview(team4CheckView)
            scrollView.addSubview(team5CheckView)
            
        }
    }
    
    func removeButtonsFromScreen(){
        if(teamsSelected == 2){
            team1.removeFromSuperview()
            team2.removeFromSuperview()
            team1Label.removeFromSuperview()
            team2Label.removeFromSuperview()
            team1CheckView.removeFromSuperview()
            team2CheckView.removeFromSuperview()
        }
        if(teamsSelected == 3){
            team1.removeFromSuperview()
            team2.removeFromSuperview()
            team3.removeFromSuperview()
            team1Label.removeFromSuperview()
            team2Label.removeFromSuperview()
            team3Label.removeFromSuperview()
            team1CheckView.removeFromSuperview()
            team2CheckView.removeFromSuperview()
            team3CheckView.removeFromSuperview()
            
            
        }
        if(teamsSelected == 4){
            team1.removeFromSuperview()
            team2.removeFromSuperview()
            team3.removeFromSuperview()
            team4.removeFromSuperview()
            team1Label.removeFromSuperview()
            team2Label.removeFromSuperview()
            team3Label.removeFromSuperview()
            team4Label.removeFromSuperview()
            team1CheckView.removeFromSuperview()
            team2CheckView.removeFromSuperview()
            team3CheckView.removeFromSuperview()
            team4CheckView.removeFromSuperview()
            
        }
        if(teamsSelected == 5){
            team1.removeFromSuperview()
            team2.removeFromSuperview()
            team3.removeFromSuperview()
            team4.removeFromSuperview()
            team5.removeFromSuperview()
            team1Label.removeFromSuperview()
            team2Label.removeFromSuperview()
            team3Label.removeFromSuperview()
            team4Label.removeFromSuperview()
            team5Label.removeFromSuperview()
            team1CheckView.removeFromSuperview()
            team2CheckView.removeFromSuperview()
            team3CheckView.removeFromSuperview()
            team4CheckView.removeFromSuperview()
            team5CheckView.removeFromSuperview()
            
        }
    }
    
    func createAlert(message: String){
        let alert = UIAlertController(title: NSLocalizedString("missing_info_in_alert", comment: ""), message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var menuButton: FloatingActionButton!
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuButton.transform != .identity){
                self.menuButton.transform = .identity
                self.helpView.isHidden = true
            }
        })
    }
    
    @IBAction func helpButton(_ sender: FloatingActionButton) {
        if(self.menuButton.transform != .identity){
            helpView.isHidden = false
            self.tapGesture = UITapGestureRecognizer(target: self, action: #selector(StartingPage.handleTap))
            self.tapGesture.numberOfTapsRequired = 1
            self.tapGesture.numberOfTouchesRequired = 1
            self.view.addGestureRecognizer(self.tapGesture)
        }
        else{
            UIView.animate(withDuration: 0.3, animations: {
                
                self.menuButton.transform = .identity
                self.helpView.isHidden = true
            })
        }
    }
    
    @IBAction func closeHelpView(_ sender: UIButton) {
        self.menuButton.transform = .identity
        self.helpView.isHidden = true
    }
    
    
    @IBAction func startGameButton(_ sender: UIButtonX) {
        var hasTwoPlayersOrMore = true
        if(LocalDataBase.teamArray.count > 0){
            for team in LocalDataBase.teamArray{
                if(team.players.count<2){
                    hasTwoPlayersOrMore = false
                    break
                }
            }
        }
        if(teamsSelected==0){
            createAlert(message: NSLocalizedString("select_at_least_2_teams", comment: ""))
        }
        else if(hasTwoPlayersOrMore == false){
            createAlert(message: NSLocalizedString("select_at_least_2_players", comment: ""))
        }
            
        else {
            performSegue(withIdentifier: "startGameSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AddPlayerViewController {
            destination.number = teamID
            destination.nrOfTeams = teamsSelected
            
        }
    }
}
