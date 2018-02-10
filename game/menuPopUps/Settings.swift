//
//  Settings.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-29.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class Settings: UIViewController {
    @IBOutlet weak var checkBox1: BEMCheckBox!
    
    @IBOutlet weak var checkBox2: BEMCheckBox!
    
    @IBOutlet weak var checkBox3: BEMCheckBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(LocalDataBase().charadeList.count)
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        if (LocalDataBase.cardDeck.contains(1)){
            checkBox1.on = true
        }
        if (LocalDataBase.cardDeck.contains(2)){
            checkBox2.on = true
        }
        if (LocalDataBase.cardDeck.contains(3)){
            checkBox3.on = true
            
        }
        
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default); navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    
    @IBAction func soundSwitch(_ sender: UISwitch) {
        
    }
    
    
    
    @IBAction func list1(_ sender: BEMCheckBox) {
        if (sender.on){
            LocalDataBase.cardDeck.append(1)
            print("\(LocalDataBase().withOtherWordsList.count)")
        }
        else{
            if let index = LocalDataBase.cardDeck.index(where: { $0 == 1 }) {
                LocalDataBase.cardDeck.remove(at: index)
                
            }
            print("\(LocalDataBase().withOtherWordsList.count)")
        }
        
    }
    
    @IBAction func list2(_ sender: BEMCheckBox) {
        if (sender.on){
            LocalDataBase.cardDeck.append(2)
            print("\(LocalDataBase().charadeList.count)")
        }
        else{
            
            if let index = LocalDataBase.cardDeck.index(where: { $0 == 2 }) {
                LocalDataBase.cardDeck.remove(at: index)
                
            }
            print("\(LocalDataBase().charadeList.count)")
        }
    }
    
    @IBAction func list3(_ sender: BEMCheckBox) {
        if (sender.on){
            LocalDataBase.cardDeck.append(3)
            print("\(LocalDataBase().withOtherWordsList.count)")
        }
        else{
            
            if let index = LocalDataBase.cardDeck.index(where: { $0 == 3 }) {
                LocalDataBase.cardDeck.remove(at: index)
                
            }
            print("\(LocalDataBase().withOtherWordsList.count)")
        }
    }
    
    
    
    
    @IBAction func seeOwnCardsButton(_ sender: UIButton) {
        performSegue(withIdentifier: "settingsToSeeYourOwnCards", sender: self)
    }
    
    
    @IBAction func getMoreCardsButton(_ sender: UIButton) {
        performSegue(withIdentifier: "settingsToAddOwnCardSegue", sender: self)
    }
    
    @IBAction func dismissBackgroundButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func doneButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
   
    
}
