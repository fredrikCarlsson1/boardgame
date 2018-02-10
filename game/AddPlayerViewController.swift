//
//  AddPlayerViewController.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-13.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit


class AddPlayerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var number: Int?
    var nrOfTeams: Int?
    var player: Player?
    var data = [Player]()
    var comesFromAddPlayer = false
    
    @IBOutlet weak var playerTableView: UITableView!
    
    
//
//    override func viewWillAppear(_ animated: Bool) {
//        playerTableView.reloadData()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        
        playerTableView.layer.cornerRadius = 15
        
        if let newPlayer = player{
            if (newPlayer.name != ""){
                if (checkIfNameIsInArray(player: newPlayer) == false){
                    if data.count>0{
                        newPlayer.playerID = data[data.count-1].playerID!+1
                    }
                    else {
                        newPlayer.playerID = 0
                    }
                    newPlayer.games = 0
                    newPlayer.wins = 0
                    self.saveData(player: newPlayer)
                }
            }
        }
        playerTableView.reloadData()
        
        
        if let teams = nrOfTeams{
            nrOfTeams = teams
        }
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        if (number != nil){
            performSegue(withIdentifier: "saveSelectedPlayersSegue", sender: self)
        }else if(comesFromAddPlayer==true){
            performSegue(withIdentifier: "unwindSegueToVC1", sender: self)
        }
        else{
            dismiss(animated: true, completion: nil)
            
        }
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    func checkIfNameIsInArray(player: Player) -> Bool{
        for player1 in data{
            if (player.name.lowercased() == player1.name.lowercased()){
                return true
            }
        }
        return false
    }
    
    func createAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(ACTION) in alert.dismiss(animated: true, completion: nil)
            
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)->  UITableViewCell{
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "basicCell")
        cell.textLabel?.text = data[indexPath.row].name
        
        if let teamID = number{
            for player1 in LocalDataBase.teamArray[teamID-1].players {
                if(data[indexPath.row].playerID == player1.playerID){
                    cell.accessoryType = UITableViewCellAccessoryType.checkmark
                }
            }
        }
        let clearView = UIView()
        clearView.backgroundColor = UIColor.clear
        UITableViewCell.appearance().selectedBackgroundView = clearView
        
        cell.backgroundColor = .clear
        cell.tintColor = .black
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = indexPath.row
        if let teamID = number {
            
            if(teamID>0){
                
                if (tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark) {
                    let player = data[indexPath.row]
                    LocalDataBase.teamArray[teamID-1].removePlayerFromTeam(playerID: player.playerID!)
                    
                    tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
                }
                else{
                    let player = data[indexPath.row]
                    LocalDataBase.teamArray[teamID-1].addPlayerToTeam(player: player)
                    
                    tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
                }
            }
        }
        
        if (number == nil){
            performSegue(withIdentifier: "showPlayers", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlayerViewController {
            destination.player = data[(playerTableView.indexPathForSelectedRow?.row)!]
        }
        if let destination = segue.destination as? NewGameViewController {
            if let nr = nrOfTeams{
                destination.teamsSelected = nr
            }
        }
        if let destination = segue.destination as? AddPlayerPopUpViewController {
            if let teamID = number{
                destination.teamID = teamID
            }
            if let nr = nrOfTeams{
                destination.teamsSelected = nr
            }
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if(editingStyle == UITableViewCellEditingStyle.delete){
            if let teamID = number{
                for player in LocalDataBase.teamArray[teamID-1].players{
                    if(player.playerID == data[indexPath.row].playerID){
                        LocalDataBase.teamArray[teamID-1].removePlayerFromTeam(playerID: player.playerID!)
                    }
                }
            }
            data.remove(at: indexPath.row)
            NSKeyedArchiver.archiveRootObject(data, toFile: filePath)
            playerTableView.reloadData()
            
        }
    }
    
    
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
    
    private func saveData(player: Player){
        data.append(player)
        NSKeyedArchiver.archiveRootObject(data, toFile: filePath)
    }

    @IBAction func enterNewPlayerButton(_ sender: UIButton) {
        performSegue(withIdentifier: "enterNewPlayerSegue", sender: self)
    }
 
    
}
