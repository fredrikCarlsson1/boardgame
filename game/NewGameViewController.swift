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
    
    let nrSelection = [2,3,4,5]
    var teamsSelected = 0
    var pictureArray = [#imageLiteral(resourceName: "giraff"), #imageLiteral(resourceName: "mario"), #imageLiteral(resourceName: "elefant"), #imageLiteral(resourceName: "brandbil"), #imageLiteral(resourceName: "brandman")]
    let team1 = UIButton()
    let team2 = UIButton()
    let team3 = UIButton()
    let team4 = UIButton()
    let team5 = UIButton()
    let team1Label = UILabel()
    let team2Label = UILabel()
    let team3Label = UILabel()
    let team4Label = UILabel()
    let team5Label = UILabel()
    
    var rotationAngle:CGFloat!
    var teamID: Int?
    var random: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.isScrollEnabled = true
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: 750)
        rotationAngle = -90 * (.pi/180)
        
        let y = nrOfTeamsPicker.frame.origin.y
        nrOfTeamsPicker.transform = CGAffineTransform(rotationAngle: rotationAngle)
        self.nrOfTeamsPicker.frame = CGRect(x: -100, y: y, width: view.frame.width + 200, height: 100)
        nrOfTeamsPicker.selectRow(2, inComponent: 0, animated: true)
        
        nrOfTeamsPicker.delegate = self
        nrOfTeamsPicker.dataSource = self
        if (teamsSelected>0){
            nrOfTeamsPicker.selectRow(teamsSelected-2, inComponent: 0, animated: true)
        }
        team1.setBackgroundImage(#imageLiteral(resourceName: "elefant"), for: .normal)
        team2.setBackgroundImage(#imageLiteral(resourceName: "giraff"), for: .normal)
        team3.setBackgroundImage(#imageLiteral(resourceName: "mario"), for: .normal)
        team4.setBackgroundImage(#imageLiteral(resourceName: "brandman"), for: .normal)
        team5.setBackgroundImage(#imageLiteral(resourceName: "mario"), for: .normal)
        
        if(teamsSelected == 0){
            teamsSelected = 2
            removeButtonsFromScreen()
            var i = 0
            for team in 1...teamsSelected{
                i = i+1
                let newTeam = Team(name: ("Team \(i)"), points: 0, id: team-1, isUp: false)
                LocalDataBase.teamArray.append(newTeam)
            }
            random = Int(arc4random_uniform(UInt32(LocalDataBase.teamArray.count)))
            selectStartingTeam()
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
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        label.text = String(nrSelection[row])
        label.font = UIFont.systemFont(ofSize: 50, weight: .thin)
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
        var i = 0
        for team in 1...teamsSelected{
            i = i+1
            let newTeam = Team(name: ("Team \(i)"), points: 0, id: team-1, isUp: false)
            LocalDataBase.teamArray.append(newTeam)
            
            
        }
        random = Int(arc4random_uniform(UInt32(LocalDataBase.teamArray.count)))
        selectStartingTeam()
        addButtonsToScreen()
        
        
    }
    
    func addButtonsToScreen(){
        let scrollWidth = scrollView.frame.size.width
        
        team1.frame = CGRect(x: scrollWidth/2-50, y: 0, width: 100, height: 100)
        team2.frame = CGRect(x: scrollWidth/2-50 , y: 150, width: 100, height: 100)
        team3.frame = CGRect(x: scrollWidth/2-50, y: 300, width: 100, height: 100)
        team4.frame = CGRect(x: scrollWidth/2-50, y: 450, width: 100, height: 100)
        team5.frame = CGRect(x: scrollWidth/2-50, y: 600, width: 100, height: 100)
        team1Label.frame = CGRect(x: scrollWidth/2-50, y: 105, width: 100, height: 25)
        team1Label.text = "Team 1"
        team1Label.textAlignment = .center
        team1Label.layer.masksToBounds = true
        team1Label.layer.cornerRadius = 12
        team1Label.textAlignment = .center
        team1Label.font = UIFont.boldSystemFont(ofSize: 17)
        team1Label.layer.borderColor = UIColor.black.cgColor
        team1Label.layer.borderWidth = 1
        team2Label.frame = CGRect(x: scrollWidth/2-50, y: 255, width: 100, height: 25)
        team2Label.text = "Team 2"
        team2Label.textAlignment = .center
        team2Label.layer.masksToBounds = true
        team2Label.layer.cornerRadius = 12
        team2Label.textAlignment = .center
        team2Label.font = UIFont.boldSystemFont(ofSize: 17)
        team2Label.layer.borderColor = UIColor.black.cgColor
        team2Label.layer.borderWidth = 1
        team3Label.frame = CGRect(x: scrollWidth/2-50, y: 405, width: 100, height: 25)
        team3Label.text = "Team 3"
        team3Label.textAlignment = .center
        team3Label.layer.masksToBounds = true
        team3Label.layer.cornerRadius = 12
        team3Label.textAlignment = .center
        team3Label.font = UIFont.boldSystemFont(ofSize: 17)
        team3Label.layer.borderColor = UIColor.black.cgColor
        team3Label.layer.borderWidth = 1
        team4Label.frame = CGRect(x: scrollWidth/2-50, y: 555, width: 100, height: 25)
        team4Label.text = "Team 4"
        team4Label.textAlignment = .center
        team4Label.layer.masksToBounds = true
        team4Label.layer.cornerRadius = 12
        team4Label.textAlignment = .center
        team4Label.font = UIFont.boldSystemFont(ofSize: 17)
        team4Label.layer.borderColor = UIColor.black.cgColor
        team4Label.layer.borderWidth = 1
        team5Label.frame = CGRect(x: scrollWidth/2-50, y: 705, width: 100, height: 25)
        team5Label.text = "Team 5"
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
        }
        if(teamsSelected == 3){
            scrollView.addSubview(team1)
            scrollView.addSubview(team2)
            scrollView.addSubview(team3)
            scrollView.addSubview(team1Label)
            scrollView.addSubview(team2Label)
            scrollView.addSubview(team3Label)
            
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
            
        }
    }
    
    func removeButtonsFromScreen(){
        if(teamsSelected == 2){
            team1.removeFromSuperview()
            team2.removeFromSuperview()
            team1Label.removeFromSuperview()
            team2Label.removeFromSuperview()
        }
        if(teamsSelected == 3){
            team1.removeFromSuperview()
            team2.removeFromSuperview()
            team3.removeFromSuperview()
            team1Label.removeFromSuperview()
            team2Label.removeFromSuperview()
            team3Label.removeFromSuperview()
            
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
        }
    }
    
    func createAlert(message: String){
        let alert = UIAlertController(title: "Missing information", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
            createAlert(message: "Select at least 2 teams")
        }
        else if(hasTwoPlayersOrMore == false){
            createAlert(message: "Add at least 2 players to every team to begin playing")
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
