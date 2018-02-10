//
//  ShowOwnCardAttributes.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-02-06.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class ShowOwnCardAttributes: UIViewController {
    var cardTitle: String?
    var typeOfGame: Int?
    
    
    
    @IBOutlet weak var labelHeader: UILabel!
    @IBOutlet weak var attributesView: UIView!
    var titleDescriptionLabel = UILabel()
    var word1DescriptionLabel = UILabel()
    var word2DescriptionLabel = UILabel()
    var word3DescriptionLabel = UILabel()
    var word4DescriptionLabel = UILabel()
    var word5DescriptionLabel = UILabel()
    var answerDescriptionLabel = UILabel()
    
    var cardValues = [String]()
    var updatedCardArray = [String]()
    var titleLabel = UILabel()
    var word1Label = UILabel()
    var word2Label = UILabel()
    var word3Label = UILabel()
    var word4Label = UILabel()
    var word5Label = UILabel()
    var answerLabel = UILabel()
    var titleTextField = UITextField()
    var word1TextField = UITextField()
    var word2TextField = UITextField()
    var word3TextField = UITextField()
    var word4TextField = UITextField()
    var word5TextField = UITextField()
    var answerTextField = UITextField()
    
    
    
    @objc func goBack(){
        performSegue(withIdentifier: "backToTableViewSegue", sender: self)
        
    }
    
    override func viewDidLoad() { 
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = editButtonItem
     
        
        setCardValues()
        titleTextField.borderStyle = .roundedRect
        word1TextField.borderStyle = .roundedRect
        word2TextField.borderStyle = .roundedRect
        word3TextField.borderStyle = .roundedRect
        word4TextField.borderStyle = .roundedRect
        word5TextField.borderStyle = .roundedRect
        answerTextField.borderStyle = .roundedRect
        
        let viewWidth = Int(attributesView.frame.width)
        if let gameNr = typeOfGame{
            if (gameNr == 0 || gameNr == 1 || gameNr == 2){
                if (gameNr == 0){
                    labelHeader.text = "Med andra ord"
                }
                else if (gameNr == 1){
                    labelHeader.text = "Charades"
                }
                else if (gameNr == 2){
                    labelHeader.text = "Hum the song"
                }
                titleDescriptionLabel.frame = CGRect(x: 0, y: 20, width: 70, height: 30)
                titleDescriptionLabel.text = "Title:"
                word1DescriptionLabel.frame = CGRect(x: 0, y: 60, width: 70, height: 30)
                word1DescriptionLabel.text = "Word 1:"
                word2DescriptionLabel.frame = CGRect(x: 0, y: 100, width: 70, height: 30)
                word2DescriptionLabel.text = "Word 2:"
                word3DescriptionLabel.frame = CGRect(x: 0, y: 140, width: 70, height: 30)
                word3DescriptionLabel.text = "Word 3:"
                word4DescriptionLabel.frame = CGRect(x: 0, y: 180, width: 70, height: 30)
                word4DescriptionLabel.text = "Word 4:"
                word5DescriptionLabel.frame = CGRect(x: 0, y: 220, width: 70, height: 30)
                word5DescriptionLabel.text = "Word 5:"
                
                
                titleLabel.frame = CGRect(x: viewWidth-150, y: 20, width: 150, height: 30)
                titleLabel.text = cardValues[0]
                word1Label.frame = CGRect(x: viewWidth-150, y: 60, width: 150, height: 30)
                word1Label.text = cardValues[1]
                word2Label.frame = CGRect(x: viewWidth-150, y: 100, width: 150, height: 30)
                word2Label.text = cardValues[2]
                word3Label.frame = CGRect(x: viewWidth-150, y: 140, width: 150, height: 30)
                word3Label.text = cardValues[3]
                word4Label.frame = CGRect(x: viewWidth-150, y: 180, width: 150, height: 30)
                word4Label.text = cardValues[4]
                word5Label.frame = CGRect(x: viewWidth-150, y: 220, width: 150, height: 30)
                word5Label.text = cardValues[5]
                
                
                attributesView.addSubview(titleLabel)
                attributesView.addSubview(word1Label)
                attributesView.addSubview(word2Label)
                attributesView.addSubview(word3Label)
                attributesView.addSubview(word4Label)
                attributesView.addSubview(word5Label)
                
                attributesView.addSubview(titleDescriptionLabel)
                attributesView.addSubview(word1DescriptionLabel)
                attributesView.addSubview(word2DescriptionLabel)
                attributesView.addSubview(word3DescriptionLabel)
                attributesView.addSubview(word4DescriptionLabel)
                attributesView.addSubview(word5DescriptionLabel)
                
            }
            else if(gameNr == 3){
                titleDescriptionLabel.frame = CGRect(x: 0, y: 20, width: 70, height: 30)
                titleDescriptionLabel.text = "Title:"
                word1DescriptionLabel.frame = CGRect(x: 0, y: 60, width: 85, height: 30)
                word1DescriptionLabel.text = "Utmaning"
                
                titleLabel.frame = CGRect(x: viewWidth-150, y: 20, width: 120, height: 30)
                titleLabel.text = cardValues[0]
                word1Label.frame = CGRect(x: viewWidth-150, y: 60, width: 120, height: 100)
                word1Label.text = cardValues[1]
                word1Label.lineBreakMode = .byWordWrapping // notice the 'b' instead of 'B'
                word1Label.numberOfLines = 0
                
                attributesView.addSubview(titleDescriptionLabel)
                attributesView.addSubview(word1DescriptionLabel)
                attributesView.addSubview(titleLabel)
                attributesView.addSubview(word1Label)
                
                
                
            }
            else if(gameNr == 4){
                labelHeader.text = "Trappan"
                
                titleDescriptionLabel.frame = CGRect(x: 0, y: 20, width: 70, height: 30)
                titleDescriptionLabel.text = "Title:"
                word1DescriptionLabel.frame = CGRect(x: 0, y: 90, width: 70, height: 30)
                word1DescriptionLabel.text = "Word 1:"
                word2DescriptionLabel.frame = CGRect(x: 0, y: 160, width: 70, height: 30)
                word2DescriptionLabel.text = "Word 2:"
                word3DescriptionLabel.frame = CGRect(x: 0, y: 230, width: 70, height: 30)
                word3DescriptionLabel.text = "Word 3:"
                word4DescriptionLabel.frame = CGRect(x: 0, y: 300, width: 70, height: 30)
                word4DescriptionLabel.text = "Word 4:"
                word5DescriptionLabel.frame = CGRect(x: 0, y: 370, width: 70, height: 30)
                word5DescriptionLabel.text = "Word 5:"
                answerDescriptionLabel.frame = CGRect(x: 0, y: 420, width: 70, height: 30)
                answerDescriptionLabel.text = "Answer:"
                
                titleLabel.frame = CGRect(x: viewWidth-150, y: 20, width: 150, height: 60)
                titleLabel.text = cardValues[0]
                word1Label.frame = CGRect(x: viewWidth-150, y: 90, width: 150, height: 60)
                word1Label.text = cardValues[1]
                word2Label.frame = CGRect(x: viewWidth-150, y: 160, width: 150, height: 60)
                word2Label.text = cardValues[2]
                word3Label.frame = CGRect(x: viewWidth-150, y: 230, width: 150, height: 60)
                word3Label.text = cardValues[3]
                word4Label.frame = CGRect(x: viewWidth-150, y: 300, width: 150, height: 60)
                word4Label.text = cardValues[4]
                word5Label.frame = CGRect(x: viewWidth-150, y: 370, width: 150, height: 60)
                word5Label.text = cardValues[5]
                answerLabel.frame = CGRect(x: viewWidth-150, y: 440, width: 150, height: 60)
                answerLabel.text = cardValues[6]
                
                
                
                attributesView.addSubview(titleLabel)
                attributesView.addSubview(word1Label)
                attributesView.addSubview(word2Label)
                attributesView.addSubview(word3Label)
                attributesView.addSubview(word4Label)
                attributesView.addSubview(word5Label)
                attributesView.addSubview(answerLabel)
                attributesView.addSubview(titleDescriptionLabel)
                attributesView.addSubview(word1DescriptionLabel)
                attributesView.addSubview(word2DescriptionLabel)
                attributesView.addSubview(word3DescriptionLabel)
                attributesView.addSubview(word4DescriptionLabel)
                attributesView.addSubview(word5DescriptionLabel)
                attributesView.addSubview(answerDescriptionLabel)
            }
        }
    }
    
    func setCardValues(){
        
        if let gameNr = typeOfGame{
            if let title = cardTitle{
                if (gameNr == 0){
                    for card in CoreDataHandler.fetchWithOtherWords()!{
                        if (card.title == title){
                            cardValues.append(card.title!)
                            cardValues.append(card.word1!)
                            cardValues.append(card.word2!)
                            cardValues.append(card.word3!)
                            cardValues.append(card.word4!)
                            cardValues.append(card.word5!)
                        }
                    }
                }
                else if (gameNr == 1){
                    for card in CoreDataHandler.fetchCharades()!{
                        if (card.title == title){
                            cardValues.append(card.title!)
                            cardValues.append(card.word1!)
                            cardValues.append(card.word2!)
                            cardValues.append(card.word3!)
                            cardValues.append(card.word4!)
                            cardValues.append(card.word5!)
                        }
                    }
                    
                }
                else if (gameNr == 2){
                    for card in CoreDataHandler.fetchHumTheSong()!{
                        if (card.title == title){
                            cardValues.append(card.title!)
                            cardValues.append(card.word1!)
                            cardValues.append(card.word2!)
                            cardValues.append(card.word3!)
                            cardValues.append(card.word4!)
                            cardValues.append(card.word5!)
                        }
                    }
                    
                }
                else if (gameNr == 3){
                    for card in CoreDataHandler.fetchTeamChallenge()!{
                        if (card.title == title){
                            cardValues.append(card.title!)
                            cardValues.append(card.challenge!)
                        }
                    }
                    
                }
                else if (gameNr == 4){
                    for card in CoreDataHandler.fetchCanYouFigureItOut()!{
                        if (card.title == title){
                            cardValues.append(card.title!)
                            cardValues.append(card.hint1!)
                            cardValues.append(card.hint2!)
                            cardValues.append(card.hint3!)
                            cardValues.append(card.hint4!)
                            cardValues.append(card.hint5!)
                            cardValues.append(card.answer!)
                        }
                    }
                }
            }
        }
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        if (cardValues.isEmpty){
        done()
        }
        _ = navigationController?.popViewController(animated: true)
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: true)
        
        if editing {
            edit()
         
        } else {
            done()
           
        }
    }
    
    func edit(){
        let viewWidth = Int(attributesView.frame.width)
        if let gameNr = typeOfGame{
            updatedCardArray.removeAll()
            
            if (gameNr == 0 || gameNr == 1 || gameNr == 2){
                
                titleTextField.frame = CGRect(x: viewWidth-150, y: 20, width: 150, height: 30)
                titleTextField.text = cardValues[0]
                word1TextField.frame = CGRect(x: viewWidth-150, y: 60, width: 150, height: 30)
                word1TextField.text = cardValues[1]
                word2TextField.frame = CGRect(x: viewWidth-150, y: 100, width: 150, height: 30)
                word2TextField.text = cardValues[2]
                word3TextField.frame = CGRect(x: viewWidth-150, y: 140, width: 150, height: 30)
                word3TextField.text = cardValues[3]
                word4TextField.frame = CGRect(x: viewWidth-150, y: 180, width: 150, height: 30)
                word4TextField.text = cardValues[4]
                word5TextField.frame = CGRect(x: viewWidth-150, y: 220, width: 150, height: 30)
                word5TextField.text = cardValues[5]
                
                attributesView.addSubview(titleTextField)
                attributesView.addSubview(word1TextField)
                attributesView.addSubview(word2TextField)
                attributesView.addSubview(word3TextField)
                attributesView.addSubview(word4TextField)
                attributesView.addSubview(word5TextField)
                
            }
            else if(gameNr == 3){
                
                titleTextField.frame = CGRect(x: viewWidth-150, y: 20, width: 120, height: 30)
                titleTextField.text = cardValues[0]
                word1TextField.frame = CGRect(x: viewWidth-150, y: 60, width: 120, height: 100)
                word1TextField.text = cardValues[1]
                
                attributesView.addSubview(titleTextField)
                attributesView.addSubview(word1TextField)
                
            }
            else if(gameNr == 4){
                labelHeader.text = "Trappan"
                
                
                titleTextField.frame = CGRect(x: viewWidth-150, y: 20, width: 150, height: 60)
                titleTextField.text = cardValues[0]
                word1TextField.frame = CGRect(x: viewWidth-150, y: 90, width: 150, height: 60)
                word1TextField.text = cardValues[1]
                word2TextField.frame = CGRect(x: viewWidth-150, y: 160, width: 150, height: 60)
                word2TextField.text = cardValues[2]
                word3TextField.frame = CGRect(x: viewWidth-150, y: 230, width: 150, height: 60)
                word3TextField.text = cardValues[3]
                word4TextField.frame = CGRect(x: viewWidth-150, y: 300, width: 150, height: 60)
                word4TextField.text = cardValues[4]
                word5TextField.frame = CGRect(x: viewWidth-150, y: 370, width: 150, height: 60)
                word5TextField.text = cardValues[5]
                answerTextField.frame = CGRect(x: viewWidth-150, y: 440, width: 150, height: 60)
                answerTextField.text = cardValues[6]
                
                attributesView.addSubview(titleTextField)
                attributesView.addSubview(word1TextField)
                attributesView.addSubview(word2TextField)
                attributesView.addSubview(word3TextField)
                attributesView.addSubview(word4TextField)
                attributesView.addSubview(word5TextField)
                attributesView.addSubview(answerTextField)
            }
            cardValues.removeAll()
            
        }
    }
    
    func done(){
        if let gameNr = typeOfGame{
            if (gameNr == 0 || gameNr == 1 || gameNr == 2){
                if let title = titleTextField.text{
                    updatedCardArray.append(title)
                }
                if let word1 = word1TextField.text{
                    updatedCardArray.append(word1)
                }
                if let word2 = word2TextField.text{
                    updatedCardArray.append(word2)
                }
                if let word3 = word3TextField.text{
                    updatedCardArray.append(word3)
                }
                if let word4 = word4TextField.text{
                    updatedCardArray.append(word4)
                }
                if let word5 = word5TextField.text{
                    updatedCardArray.append(word5)
                }
                titleTextField.removeFromSuperview()
                word1TextField.removeFromSuperview()
                word2TextField.removeFromSuperview()
                word3TextField.removeFromSuperview()
                word4TextField.removeFromSuperview()
                word5TextField.removeFromSuperview()
                
                titleLabel.text = updatedCardArray[0]
                word1Label.text = updatedCardArray[1]
                word2Label.text = updatedCardArray[2]
                word3Label.text = updatedCardArray[3]
                word4Label.text = updatedCardArray[4]
                word5Label.text = updatedCardArray[5]
                
                if(gameNr == 0){
                    for card in CoreDataHandler.fetchWithOtherWords()!{
                        
                        if let cardTitle = cardTitle{
                            if(card.title == cardTitle){
                                let _ = CoreDataHandler.deleteWithOtherWords(withOtherWords: card)
                                let _ = CoreDataHandler.saveWithOtherWords(title: updatedCardArray[0], word1: updatedCardArray[1], word2: updatedCardArray[2], word3: updatedCardArray[3], word4: updatedCardArray[4], word5: updatedCardArray[5])
                                
                            }
                        }
                    }
                }
                else if(gameNr == 1){
                    for card in CoreDataHandler.fetchCharades()!{
                        
                        if let cardTitle = cardTitle{
                            if(card.title == cardTitle){
                                let _ = CoreDataHandler.upDateCharades(charades: card, title: updatedCardArray[0], word1: updatedCardArray[1], word2: updatedCardArray[2], word3: updatedCardArray[3], word4: updatedCardArray[4], word5: updatedCardArray[5])
                                
                            }
                        }
                    }
                }
                else if(gameNr == 2){
                    for card in CoreDataHandler.fetchHumTheSong()!{
                        if let cardTitle = cardTitle{
                            if(card.title == cardTitle){
                                let _ = CoreDataHandler.upDateHumTheSong(humTheSong: card, title: updatedCardArray[0], word1: updatedCardArray[1], word2: updatedCardArray[2], word3: updatedCardArray[3], word4: updatedCardArray[4], word5: updatedCardArray[5])
                            }
                        }
                    }
                }
                
            }
            else if(gameNr == 3){
                
                if let title = titleTextField.text{
                    updatedCardArray.append(title)
                }
                if let word1 = word1TextField.text{
                    updatedCardArray.append(word1)
                }
                titleLabel.text = updatedCardArray[0]
                word1Label.text = updatedCardArray[1]
                
                for card in CoreDataHandler.fetchTeamChallenge()!{
                    if let cardTitle = cardTitle{
                        if(card.title == cardTitle){
                            let _ = CoreDataHandler.upDateTeamChallenge(teamChallenge: card, title: updatedCardArray[0], word1: updatedCardArray[1])
                        }
                    }
                }
                titleTextField.removeFromSuperview()
                word1TextField.removeFromSuperview()
            }
            else if(gameNr == 4){
                
                if let title = titleTextField.text{
                    updatedCardArray.append(title)
                }
                if let word1 = word1TextField.text{
                    updatedCardArray.append(word1)
                }
                if let word2 = word2TextField.text{
                    updatedCardArray.append(word2)
                }
                if let word3 = word3TextField.text{
                    updatedCardArray.append(word3)
                }
                if let word4 = word4TextField.text{
                    updatedCardArray.append(word4)
                }
                if let word5 = word5TextField.text{
                    updatedCardArray.append(word5)
                }
                if let answer = answerTextField.text{
                    updatedCardArray.append(answer)
                }
                
                titleLabel.text = updatedCardArray[0]
                word1Label.text = updatedCardArray[1]
                word2Label.text = updatedCardArray[2]
                word3Label.text = updatedCardArray[3]
                word4Label.text = updatedCardArray[4]
                word5Label.text = updatedCardArray[5]
                word5Label.text = updatedCardArray[6]
                for card in CoreDataHandler.fetchCanYouFigureItOut()!{
                    if let cardTitle = cardTitle{
                        if(card.title == cardTitle){
                            let _ = CoreDataHandler.upDateCanYouFigureItOut(canYouFigureItOut: card, title: updatedCardArray[0], word1: updatedCardArray[1], word2: updatedCardArray[2], word3: updatedCardArray[3], word4: updatedCardArray[4], word5: updatedCardArray[5], answer: updatedCardArray[6])
                        }
                    }
                }
                
                titleTextField.removeFromSuperview()
                word1TextField.removeFromSuperview()
                word2TextField.removeFromSuperview()
                word3TextField.removeFromSuperview()
                word4TextField.removeFromSuperview()
                word5TextField.removeFromSuperview()
                answerTextField.removeFromSuperview()
                
            }
            cardTitle = updatedCardArray[0]
            setCardValues()
        }
    }
    
}
