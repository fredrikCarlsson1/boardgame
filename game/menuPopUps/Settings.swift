//
//  Settings.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-29.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class Settings: UIViewController {
    @IBOutlet weak var soundSwitchOutlet: UISwitch!
    @IBOutlet weak var checkBox1: BEMCheckBox!
    
    @IBOutlet weak var checkBox2: BEMCheckBox!
    
    @IBOutlet weak var checkBox3: BEMCheckBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if(LocalDataBase.soundOn){
            soundSwitchOutlet.isOn = true
        }
        else if(LocalDataBase.soundOn == false){
            soundSwitchOutlet.isOn = false
        }
        
        if (LocalDataBase.tempCardDeck.contains(1)){
            checkBox1.on = true
        }
        if (LocalDataBase.tempCardDeck.contains(2)){
            checkBox2.on = true
        }
        if (LocalDataBase.tempCardDeck.contains(3)){
            checkBox3.on = true            
        }
        navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default); navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    
    @IBAction func soundSwitch(_ sender: UISwitch) {
        
        if(sender.isOn){
            LocalDataBase.soundOn = true
        }
        else{
            LocalDataBase.soundOn = false
        }
    }
    
    
    
    @IBAction func list1(_ sender: BEMCheckBox) {
        if (sender.on){
            LocalDataBase.tempCardDeck.append(1)
            
        }
        else{
                if let index = LocalDataBase.tempCardDeck.index(where: { $0 == 1 }) {
                    LocalDataBase.tempCardDeck.remove(at: index)
                    
            }

        }
        
    }
    
    @IBAction func list2(_ sender: BEMCheckBox) {
        if (sender.on){
            LocalDataBase.tempCardDeck.append(2)
            
        }
        else{
            
                if let index = LocalDataBase.tempCardDeck.index(where: { $0 == 2 }) {
                    LocalDataBase.tempCardDeck.remove(at: index)
                }
        }
    }
    
    @IBAction func list3(_ sender: BEMCheckBox) {
        if (sender.on){
            LocalDataBase.tempCardDeck.append(3)
            
        }
        else{
                if let index = LocalDataBase.tempCardDeck.index(where: { $0 == 3 }) {
                    LocalDataBase.tempCardDeck.remove(at: index)
                }
            }

    }
    
    func createAlert(message: String){
        let alert = UIAlertController(title: NSLocalizedString("missing_info_in_alert", comment: ""), message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    @IBAction func seeOwnCardsButton(_ sender: UIButton) {
        performSegue(withIdentifier: "settingsToSeeYourOwnCards", sender: self)
    }
    
    
    @IBAction func getMoreCardsButton(_ sender: UIButton) {
        performSegue(withIdentifier: "settingsToAddOwnCardSegue", sender: self)
    }
    
    @IBAction func dismissBackgroundButton(_ sender: UIButton) {
        if(LocalDataBase.tempCardDeck.count == 0){
            createAlert(message: NSLocalizedString("settingsAlert", comment: ""))
        }
        else{
        dismiss(animated: true, completion: nil)
        }
    }
    
    
    @IBAction func doneButton(_ sender: UIButton) {
        if(LocalDataBase.tempCardDeck.count == 0){
            createAlert(message: NSLocalizedString("settingsAlert", comment: ""))
        }
        else{
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        
        if(LocalDataBase.tempCardDeck.count == 0){
            createAlert(message: NSLocalizedString("settingsAlert", comment: ""))
        }
        else{
            dismiss(animated: true, completion: nil)
        }
    }
    
    
    
}
