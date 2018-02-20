 //
 //  ShowOwnQuestions.swift
 //  game
 //
 //  Created by Fredrik Carlsson on 2018-02-04.
 //  Copyright © 2018 Fredrik Carlsson. All rights reserved.
 //
 
 import UIKit
 
 class ShowOwnQuestions: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    struct Objects {
        var sectionName : String!
        var sectionObjects : [String]!
    }
    var objectsArray = [Objects]()
    
    var sections = [LocalDataBase.Keys.withOtherWords, LocalDataBase.Keys.charades, LocalDataBase.Keys.humTheSong, LocalDataBase.Keys.teamChallenge, LocalDataBase.Keys.canYouFigureItOut]
    var sectionColors =  [UIColor(hexString: "#dbd16d"), UIColor(hexString: "#cc7297"), UIColor(hexString: "#b4b75f"), UIColor(hexString: "#568da0"), UIColor(hexString: "#8f6886")]
    var arrayOfOwnCards = [String]()
    
    var withOtherWordsList = [String]()
    var charadesList = [String]()
    var teamChallengeList = [String]()
    var canYouFigureItOutList = [String]()
    var humTheSongList = [String]()
    var selectedCardTitle: String?
    var selectedGame: Int?
    
    

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectsArray[section].sectionObjects.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)->  UITableViewCell{
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = objectsArray[indexPath.section].sectionObjects[indexPath.row]

        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return objectsArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        
        
        view.backgroundColor = sectionColors[section]
        
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 5, width: 300, height: 35)
        label.text = objectsArray[section].sectionName
        view.addSubview(label)
        return view
    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return objectsArray[section].sectionName
//    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete){
            removeFromCoreData(section: indexPath.section, row: indexPath.row)
            objectsArray[indexPath.section].sectionObjects.remove(at: indexPath.row)
            let indexPath = IndexPath(row: indexPath.row, section: indexPath.section)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
            
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCardTitle = objectsArray[indexPath.section].sectionObjects[indexPath.row]
        selectedGame = indexPath.section
        performSegue(withIdentifier: "showUniqueCardFromTableSegue", sender: self)
    }
    
    func removeFromCoreData(section: Int, row: Int){
        if (section == 0){
                for words in CoreDataHandler.fetchWithOtherWords()!{
                    if (words.title == withOtherWordsList[row]){
                        let _ = CoreDataHandler.deleteWithOtherWords(withOtherWords: words)
                    }
                }
        }
        else if(section == 1){
            for charades in CoreDataHandler.fetchCharades()!{
                if (charades.title == charadesList[row]){
                   let _ = CoreDataHandler.deleteCharades(charades: charades)
                }
            }
        }
            
        else if(section == 2){
            for hum in CoreDataHandler.fetchHumTheSong()!{
                if (hum.title == humTheSongList[row]){
                    let _ = CoreDataHandler.deleteHumTheSong(humTheSong: hum)
                }
            }
        }
            
        else if(section == 3){
            for team in CoreDataHandler.fetchTeamChallenge()!{
                if (team.title == teamChallengeList[row]){
                   let _ = CoreDataHandler.deleteTeamChallenge(teamChallenge: team)
                }
            }
        }
            
        else if(section == 4){
            for canYou in CoreDataHandler.fetchCanYouFigureItOut()!{
                if (canYou.title == canYouFigureItOutList[row]){
                    let _ = CoreDataHandler.deleteCanYouFigureItOut(canYouFigureItOut: canYou)
                }
            }
        }
    }
    

    @IBOutlet weak var questionsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        addStringsToList()
        
        objectsArray = [Objects(sectionName: LocalDataBase.Keys.withOtherWords, sectionObjects: withOtherWordsList), Objects(sectionName: LocalDataBase.Keys.charades, sectionObjects: charadesList), Objects(sectionName: LocalDataBase.Keys.humTheSong, sectionObjects: humTheSongList), Objects(sectionName: LocalDataBase.Keys.teamChallenge, sectionObjects: teamChallengeList), Objects(sectionName: LocalDataBase.Keys.canYouFigureItOut, sectionObjects: canYouFigureItOutList)]
            self.questionsTable.reloadData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        removeStringsFromLists()
    }
    
    func removeStringsFromLists(){
        withOtherWordsList.removeAll()
        charadesList.removeAll()
        humTheSongList.removeAll()
        teamChallengeList.removeAll()
        canYouFigureItOutList.removeAll()
    }
    
    
    func addStringsToList(){
        for words in CoreDataHandler.fetchWithOtherWords()!{
            withOtherWordsList.append(words.title!)
        }
        for charades in CoreDataHandler.fetchCharades()!{
            charadesList.append(charades.title!)
        }
        for hum in CoreDataHandler.fetchHumTheSong()!{
            humTheSongList.append(hum.title!)
        }
        for team in CoreDataHandler.fetchTeamChallenge()!{
            teamChallengeList.append(team.title!)
        }
        for canYou in CoreDataHandler.fetchCanYouFigureItOut()!{
            canYouFigureItOutList.append(canYou.title!)
        }
    }
    
    

    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ShowOwnCardAttributes{
            if let cardTitle = selectedCardTitle{
                destination.cardTitle = cardTitle
            }
            if let game = selectedGame{
                destination.typeOfGame = game
            }
        }
    }
    
 }
 
 
 
 
 
 
 
 
 
 
 
 
