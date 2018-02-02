//
//  ShowCoreDataObjects.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-30.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class ShowCoreDataObjects: UIViewController {
    var teamChallenge:[TeamChallengeCoreData]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(CoreDataHandler.saveObject(title:"Cars" , challenge: "Name 10 car brands")){
            teamChallenge = CoreDataHandler.fetchObject()
            print("Before delete")
            for i in teamChallenge!{
                print (i.title!)
            }
            CoreDataHandler.deleteObject(teamChallenge: teamChallenge![0])
            CoreDataHandler.deleteObject(teamChallenge: teamChallenge![1])
            CoreDataHandler.deleteObject(teamChallenge: teamChallenge![0])
            
            teamChallenge = CoreDataHandler.fetchObject()
            print("After delete")
            for i in teamChallenge!{
                print (i.title!)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
