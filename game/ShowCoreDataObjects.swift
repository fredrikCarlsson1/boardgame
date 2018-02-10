//
//  ShowCoreDataObjects.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-30.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class ShowCoreDataObjects: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var gameButtonOutlet: UIButton!
    var titleTextField = UITextField()
    var word1TextField = UITextField()
    var word2TextField = UITextField()
    var word3TextField = UITextField()
    var word4TextField = UITextField()
    var word5TextField = UITextField()
    var answerTextField = UITextField()
    var game:String?
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return LocalDataBase.keysOfGamesArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 30
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return LocalDataBase.keysOfGamesArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerWheel.isHidden = true
        gameButtonOutlet.setTitle(LocalDataBase.keysOfGamesArray[row], for: .normal)
        addTextFieldsToView(game: LocalDataBase.keysOfGamesArray[row])
        game = LocalDataBase.keysOfGamesArray[row]
        
        
    }
    
    func addTextFieldsToView(game: String){
        if (game == LocalDataBase.Keys.withOtherWords){
            titleTextField.frame = CGRect(x: 0, y: 10, width: Int(viewForTextFields.frame.width), height: 30)
            titleTextField.borderStyle = .roundedRect
            titleTextField.placeholder = "Titel på kategori"
            word1TextField.frame = CGRect(x: 0, y: 50, width: Int(viewForTextFields.frame.width), height: 30)
            word1TextField.borderStyle = .roundedRect
            word1TextField.placeholder = "Ord 1"
            word2TextField.frame = CGRect(x: 0, y: 90, width: Int(viewForTextFields.frame.width), height: 30)
            word2TextField.borderStyle = .roundedRect
            word2TextField.placeholder = "Ord 2"
            word3TextField.frame = CGRect(x: 0, y: 130, width: Int(viewForTextFields.frame.width), height: 30)
            word3TextField.borderStyle = .roundedRect
            word3TextField.placeholder = "Ord 3"
            word4TextField.frame = CGRect(x: 0, y: 170, width: Int(viewForTextFields.frame.width), height: 30)
            word4TextField.borderStyle = .roundedRect
            word4TextField.placeholder = "Ord 4"
            word5TextField.frame = CGRect(x: 0, y: 210, width: Int(viewForTextFields.frame.width), height: 30)
            word5TextField.borderStyle = .roundedRect
            word5TextField.placeholder = "Ord 5"
            
            viewForTextFields.addSubview(titleTextField)
            viewForTextFields.addSubview(word1TextField)
            viewForTextFields.addSubview(word2TextField)
            viewForTextFields.addSubview(word3TextField)
            viewForTextFields.addSubview(word4TextField)
            viewForTextFields.addSubview(word5TextField)
        }
        else if (game == LocalDataBase.Keys.charades){
            titleTextField.frame = CGRect(x: 0, y: 10, width: Int(viewForTextFields.frame.width), height: 30)
            titleTextField.borderStyle = .roundedRect
            titleTextField.placeholder = "Titel på kategori"
            word1TextField.frame = CGRect(x: 0, y: 50, width: Int(viewForTextFields.frame.width), height: 30)
            word1TextField.borderStyle = .roundedRect
            word1TextField.placeholder = "Ord 1"
            word2TextField.frame = CGRect(x: 0, y: 90, width: Int(viewForTextFields.frame.width), height: 30)
            word2TextField.borderStyle = .roundedRect
            word2TextField.placeholder = "Ord 2"
            word3TextField.frame = CGRect(x: 0, y: 130, width: Int(viewForTextFields.frame.width), height: 30)
            word3TextField.borderStyle = .roundedRect
            word3TextField.placeholder = "Ord 3"
            word4TextField.frame = CGRect(x: 0, y: 170, width: Int(viewForTextFields.frame.width), height: 30)
            word4TextField.borderStyle = .roundedRect
            word4TextField.placeholder = "Ord 4"
            word5TextField.frame = CGRect(x: 0, y: 210, width: Int(viewForTextFields.frame.width), height: 30)
            word5TextField.borderStyle = .roundedRect
            word5TextField.placeholder = "Ord 5"
            
            viewForTextFields.addSubview(titleTextField)
            viewForTextFields.addSubview(word1TextField)
            viewForTextFields.addSubview(word2TextField)
            viewForTextFields.addSubview(word3TextField)
            viewForTextFields.addSubview(word4TextField)
            viewForTextFields.addSubview(word5TextField)
            
        }
        else if (game == LocalDataBase.Keys.humTheSong){
            titleTextField.frame = CGRect(x: 0, y: 10, width: Int(viewForTextFields.frame.width), height: 30)
            titleTextField.borderStyle = .roundedRect
            titleTextField.placeholder = "Titel på kategori"
            word1TextField.frame = CGRect(x: 0, y: 50, width: Int(viewForTextFields.frame.width), height: 30)
            word1TextField.borderStyle = .roundedRect
            word1TextField.placeholder = "Låt 1"
            word2TextField.frame = CGRect(x: 0, y: 90, width: Int(viewForTextFields.frame.width), height: 30)
            word2TextField.borderStyle = .roundedRect
            word2TextField.placeholder = "Låt 2"
            word3TextField.frame = CGRect(x: 0, y: 130, width: Int(viewForTextFields.frame.width), height: 30)
            word3TextField.borderStyle = .roundedRect
            word3TextField.placeholder = "Låt 3"
            word4TextField.frame = CGRect(x: 0, y: 170, width: Int(viewForTextFields.frame.width), height: 30)
            word4TextField.borderStyle = .roundedRect
            word4TextField.placeholder = "Låt 4"
            word5TextField.frame = CGRect(x: 0, y: 210, width: Int(viewForTextFields.frame.width), height: 30)
            word5TextField.borderStyle = .roundedRect
            word5TextField.placeholder = "Låt 5"
            
            viewForTextFields.addSubview(titleTextField)
            viewForTextFields.addSubview(word1TextField)
            viewForTextFields.addSubview(word2TextField)
            viewForTextFields.addSubview(word3TextField)
            viewForTextFields.addSubview(word4TextField)
            viewForTextFields.addSubview(word5TextField)
        }
        else if (game == LocalDataBase.Keys.canYouFigureItOut){
            titleTextField.frame = CGRect(x: 0, y: 10, width: Int(viewForTextFields.frame.width), height: 30)
            titleTextField.borderStyle = .roundedRect
            titleTextField.placeholder = "Titel på kategori"
            word1TextField.frame = CGRect(x: 0, y: 50, width: Int(viewForTextFields.frame.width), height: 30)
            word1TextField.borderStyle = .roundedRect
            word1TextField.placeholder = "Ord 1"
            word2TextField.frame = CGRect(x: 0, y: 90, width: Int(viewForTextFields.frame.width), height: 30)
            word2TextField.borderStyle = .roundedRect
            word2TextField.placeholder = "Ord 2"
            word3TextField.frame = CGRect(x: 0, y: 130, width: Int(viewForTextFields.frame.width), height: 30)
            word3TextField.borderStyle = .roundedRect
            word3TextField.placeholder = "Ord 3"
            word4TextField.frame = CGRect(x: 0, y: 170, width: Int(viewForTextFields.frame.width), height: 30)
            word4TextField.borderStyle = .roundedRect
            word4TextField.placeholder = "Ord 4"
            word5TextField.frame = CGRect(x: 0, y: 210, width: Int(viewForTextFields.frame.width), height: 30)
            word5TextField.borderStyle = .roundedRect
            word5TextField.placeholder = "Ord 5"
            
            answerTextField.frame = CGRect(x: 0, y: 250, width: Int(viewForTextFields.frame.width), height: 30)
            answerTextField.borderStyle = .roundedRect
            answerTextField.placeholder = "Answer"
            
            viewForTextFields.addSubview(titleTextField)
            viewForTextFields.addSubview(word1TextField)
            viewForTextFields.addSubview(word2TextField)
            viewForTextFields.addSubview(word3TextField)
            viewForTextFields.addSubview(word4TextField)
            viewForTextFields.addSubview(word5TextField)
            viewForTextFields.addSubview(answerTextField)
        }
        else if (game == LocalDataBase.Keys.teamChallenge){
            titleTextField.frame = CGRect(x: 0, y: 10, width: Int(viewForTextFields.frame.width), height: 30)
            titleTextField.borderStyle = .roundedRect
            titleTextField.placeholder = "Titel på kategori"
            word1TextField.frame = CGRect(x: 0, y: 50, width: Int(viewForTextFields.frame.width), height: 30)
            word1TextField.borderStyle = .roundedRect
            word1TextField.placeholder = "Utmaning"

            viewForTextFields.addSubview(titleTextField)
            viewForTextFields.addSubview(word1TextField)
           
        }
        
    }
    
    
    
    var withOtherWordsList:[WithOtherWordsCoreData]? = nil
    

    @IBOutlet weak var viewForTextFields: UIView!
    
 
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTextFieldsToView(game: LocalDataBase.Keys.withOtherWords)
        pickerWheel.dataSource = self
        pickerWheel.delegate = self
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ShowCoreDataObjects.dismissKeyboard))
        view.addGestureRecognizer(tap)
     
       
    }
    
    func addWithOtherWordsToDeck()->withOtherWords?{
        var newWithOtherWordsCard = withOtherWords(title: "", firstWord: "", secondWord: "", thirdWord: "", fourthWord: "", fifthWord: "")
        
        var title = titleTextField.text
        let word1 = word1TextField.text
        let word2 = word2TextField.text
        let word3 = word3TextField.text
        let word4 = word4TextField.text
        let word5 = word5TextField.text
       
        if (titleTextField.text != "" && word1TextField.text != "" && word2TextField.text != "" && word3TextField.text != "" && word4TextField.text != "" && word5TextField.text != ""){
            
            
            while (checkIfTitleIsInList(title: title!, gameNr: 0) == false){
                title = "\(title!)\("*")"
                
            }
            
            newWithOtherWordsCard = withOtherWords(title: title!, firstWord: word1!, secondWord: word2!, thirdWord: word3!, fourthWord: word4!, fifthWord: word5!)
            
            
            
            return newWithOtherWordsCard
        }
        else{
            
            return nil
            
        }
        
    }
    
    func addCharadesToDeck()->Charades?{
        var newCharadeCard = Charades(title: "", firstWord: "", secondWord: "", thirdWord: "", fourthWord: "", fifthWord: "")
        
        var title = titleTextField.text
        let word1 = word1TextField.text
        let word2 = word2TextField.text
        let word3 = word3TextField.text
        let word4 = word4TextField.text
        let word5 = word5TextField.text
        
        
        if (titleTextField.text != "" && word1TextField.text != "" && word2TextField.text != "" && word3TextField.text != "" && word4TextField.text != "" && word5TextField.text != ""){
            while (checkIfTitleIsInList(title: title!, gameNr: 1) == false){
                title = "\(title!)\("*")"
            }
        
            newCharadeCard = Charades(title: title!, firstWord: word1!, secondWord: word2!, thirdWord: word3!, fourthWord: word4!, fifthWord: word5!)
            
            return newCharadeCard
        }
        else{
            
            return nil
        }
    }
    
    func addHumTheSongToDeck()->HumTheSong?{
        var newHumTheSongCard = HumTheSong(title: "", firstWord: "", secondWord: "", thirdWord: "", fourthWord: "", fifthWord: "")
        
        var title = titleTextField.text
        let word1 = word1TextField.text
        let word2 = word2TextField.text
        let word3 = word3TextField.text
        let word4 = word4TextField.text
        let word5 = word5TextField.text
        
        
        if (titleTextField.text != "" && word1TextField.text != "" && word2TextField.text != "" && word3TextField.text != "" && word4TextField.text != "" && word5TextField.text != ""){
            while (checkIfTitleIsInList(title: title!, gameNr: 2) == false){
                title = "\(title!)\("*")"
            }
            
            newHumTheSongCard = HumTheSong(title: title!, firstWord: word1!, secondWord: word2!, thirdWord: word3!, fourthWord: word4!, fifthWord: word5!)
            
            return newHumTheSongCard
        }
        else{
            
            return nil
        }
    }
    
    func addCanYouFigureItOutToDeck()->CanYouFigureItOut?{
        var newCanYouFigureItOutCard = CanYouFigureItOut(title: "", answer: "", firstWord: "", secondWord: "", thirdWord: "", fourthWord: "", fifthWord: "")
        
        var title = titleTextField.text
        let word1 = word1TextField.text
        let word2 = word2TextField.text
        let word3 = word3TextField.text
        let word4 = word4TextField.text
        let word5 = word5TextField.text
        let answer = answerTextField.text
        
        
        if (titleTextField.text != "" && word1TextField.text != "" && word2TextField.text != "" && word3TextField.text != "" && word4TextField.text != "" && word5TextField.text != "" && answerTextField.text != ""){
            while (checkIfTitleIsInList(title: title!, gameNr: 3) == false){
                title = "\(title!)\("*")"
            }
            
            newCanYouFigureItOutCard = CanYouFigureItOut(title: title!, answer: answer!, firstWord: word1!, secondWord: word2!, thirdWord: word3!, fourthWord: word4!, fifthWord: word5!)
            
            
            return newCanYouFigureItOutCard
        }
        else{
            
            return nil
        }
    }
    
    
    func addTeamChallengeToDeck()->TeamChallenge?{
        var newTeamChallengeCard = TeamChallenge(title: "", challenge: "")
        
        var title = titleTextField.text
        let word1 = word1TextField.text
        
        
        
        if (titleTextField.text != "" && word1TextField.text != ""){
            while (checkIfTitleIsInList(title: title!, gameNr: 4) == false){
                title = "\(title!)\("*")"
            }
            newTeamChallengeCard = TeamChallenge(title: title!, challenge: word1!)
            
            return newTeamChallengeCard
        }
        else{
            
            return nil
        }
    }
    
    func checkIfTitleIsInList(title: String, gameNr: Int)->Bool{
        var bool = true
        if (gameNr == 0){
            for cardTitle in CoreDataHandler.fetchWithOtherWords()!{
                if(cardTitle.title == title){
                    bool = false
                    break
                }
                else{
                    bool =  true
                }
            }
        }
        else if (gameNr == 1){
            for cardTitle in CoreDataHandler.fetchCharades()!{
                if(cardTitle.title == title){
                    bool = false
                    break
                }
                else{
                    bool =  true
                }
            }
        }
        else if (gameNr == 2){
            for cardTitle in CoreDataHandler.fetchHumTheSong()!{
                if(cardTitle.title == title){
                    bool = false
                    break
                }
                else{
                    bool =  true
                }
            }
        }
        else if (gameNr == 3){
            for cardTitle in CoreDataHandler.fetchCanYouFigureItOut()!{
                if(cardTitle.title == title){
                    bool = false
                    break
                }
                else{
                    bool =  true
                }
            }
        }
        if (gameNr == 4){
            for cardTitle in CoreDataHandler.fetchTeamChallenge()!{
                if(cardTitle.title == title){
                    bool = false
                    break
                }
                else{
                    bool =  true
                }
            }
        }
      
        return bool
    }
    
    
    
    
    @IBAction func changeGameButton(_ sender: UIButton) {
        pickerWheel.isHidden = false
    }
    
    @IBOutlet weak var pickerWheel: UIPickerView!
    
    @IBAction func addCardToDeckButton(_ sender: UIButton) {

        if (game == LocalDataBase.Keys.withOtherWords){
            if let withOtherWords = addWithOtherWordsToDeck(){
                let _ = CoreDataHandler.saveWithOtherWords(title: withOtherWords.title, word1: withOtherWords.word1, word2: withOtherWords.word2, word3: withOtherWords.word3, word4: withOtherWords.word4, word5: withOtherWords.word5)
            }
        }
        else if (game == LocalDataBase.Keys.charades){
            if let charades = addCharadesToDeck(){
                let _ = CoreDataHandler.saveCharades(title: charades.title, word1: charades.word1, word2: charades.word2, word3: charades.word3, word4: charades.word4, word5: charades.word5)
            }
        }
        else if (game == LocalDataBase.Keys.humTheSong){
            if let humTheSong = addHumTheSongToDeck(){
                let _ = CoreDataHandler.saveHumTheSong(title: humTheSong.title, word1: humTheSong.word1, word2: humTheSong.word2, word3: humTheSong.word3, word4: humTheSong.word4, word5: humTheSong.word5)
            }
        }
        else if (game == LocalDataBase.Keys.teamChallenge){
            if let teamC = addTeamChallengeToDeck(){
                let _ = CoreDataHandler.saveTeamChallenge(title: teamC.title, word1: teamC.challenge)
            }
        }
        else if (game == LocalDataBase.Keys.canYouFigureItOut){
            if let canYou = addCanYouFigureItOutToDeck(){
                let _ = CoreDataHandler.saveCanYouFigureItOut(title: canYou.subject, word1: canYou.clue1, word2: canYou.clue2, word3: canYou.clue3, word4: canYou.clue4, word5: canYou.clue5, answer: canYou.answer)
            }
        }
        
        
        titleTextField.text = ""
        word1TextField.text = ""
        word2TextField.text = ""
        word3TextField.text = ""
        word4TextField.text = ""
        word5TextField.text = ""
        answerTextField.text = ""
        
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
