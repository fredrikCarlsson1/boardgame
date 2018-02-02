//
//  CoreDataHandler.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-30.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit
import CoreData


class CoreDataHandler: NSObject {
    
    private class func getContext()-> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        return appDelegate.persistentContainer.viewContext
    }
    
    class func saveObject(title: String, challenge: String)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "TeamChallengeCoreData", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(title, forKey: "title")
        manageObject.setValue(challenge, forKey: "challenge")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    
    
    class func fetchObject() -> [TeamChallengeCoreData]?{
        let context = getContext()
        var teamChallenge: [TeamChallengeCoreData]? = nil
        do{
            teamChallenge = try context.fetch(TeamChallengeCoreData.fetchRequest())
            return teamChallenge
        }catch{
            return teamChallenge
        }
    }
    
    class func deleteObject(teamChallenge: TeamChallengeCoreData) -> Bool{
        let context = getContext()
        context.delete(teamChallenge)
        
        do{
            try context.save()
            return true
        }catch {
            return false
        }
    }
    
    
}








