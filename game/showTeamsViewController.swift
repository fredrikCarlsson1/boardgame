//
//  showTeamsViewController.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-16.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class showTeamsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var i = 1
    
    @IBOutlet weak var playerTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let team = teamID{
            return LocalDataBase.teamArray[team].players.count
        }
        else{
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "basicCell")
        
        if let team = teamID{
            cell.textLabel?.text = LocalDataBase.teamArray[team].players[indexPath.row].name
        }
        let clearView = UIView()
        clearView.backgroundColor = UIColor.clear
        UITableViewCell.appearance().selectedBackgroundView = clearView
        
        cell.textLabel?.textAlignment = .center
        cell.backgroundColor = .clear
        cell.tintColor = .black
        
        return cell
    }
    
    
    
    var teamID: Int?
    
    
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var teamNameTextView: UITextFieldX!
    @IBOutlet weak var scoreTextView: UITextFieldX!
    @IBOutlet weak var editButtonOutlet: UIButton!
    var data = [Player]()
    var player: Player?
    
    
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        for player in data{
            if let team = teamID{
             if(LocalDataBase.teamArray[team].players[indexPath.row].name == player.name){
                self.player = player
                performSegue(withIdentifier: "teamToPlayerSegue", sender: self)
            }
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlayerViewController{
            if let selectedPlayer = player{
                destination.player = selectedPlayer
            }
        }
    }
    
    
    @IBAction func editTeamButton(_ sender: UIButton) {
        if(editButtonOutlet.title(for: .normal) == NSLocalizedString("edit", comment: "")){
            editButtonOutlet.setTitle(NSLocalizedString("done", comment: ""), for: .normal)
            teamNameTextView.isHidden = false
            scoreTextView.isHidden = false
            
        }
        else if(editButtonOutlet.title(for: .normal) == NSLocalizedString("done", comment: "")){
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AddPlayerViewController.dismissKeyboard))
            view.addGestureRecognizer(tap)
            if let team = teamID{
                if(teamNameTextView.text != ""){
                    LocalDataBase.teamArray[team].name = teamNameTextView.text!
                    teamLabel.text = teamNameTextView.text

                }
                
                if(scoreTextView.text != ""){
                    let newScore = processData(data: Int(scoreTextView.text!))
                    LocalDataBase.teamArray[team].points = newScore
                    scoreLabel.text = "\(newScore ) " + NSLocalizedString("points", comment: "")
                    
                }
            }
            teamNameTextView.isHidden = true
            scoreTextView.isHidden = true
            editButtonOutlet.setTitle(NSLocalizedString("edit", comment: ""), for: .normal)
        }
    }
    
    func processData(data: Int?) -> Int {
        guard let result = data else {
            return LocalDataBase.teamArray[teamID!].points
        }
        
        return result
    }
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        if let index = teamID {
            teamLabel.text = String(LocalDataBase.teamArray[index].name)
            scoreLabel.text = "\(LocalDataBase.teamArray[index].points) " + NSLocalizedString("points", comment: "")
            teamNameTextView.placeholder = String(LocalDataBase.teamArray[index].name)
            scoreTextView.placeholder =
            String(LocalDataBase.teamArray[index].points)

        }
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
          self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doneButton(_ sender: UIButton) {
        if let team = teamID{
            if let textView = teamNameTextView.text{
                if(textView != ""){
                    LocalDataBase.teamArray[team].name = textView
                }
            }
            if let points = scoreTextView.text {
                if(points != ""){
                    LocalDataBase.teamArray[team].points = Int(points)!
                }
            }
        }
        self.dismiss(animated: true, completion: nil)

    }
    
    @IBAction func dismissBackground(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

    
}
