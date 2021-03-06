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
    
    class func saveWithOtherWords(title: String, word1: String, word2: String, word3: String, word4: String, word5: String)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "WithOtherWordsCoreData", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(title, forKey: "title")
        manageObject.setValue(word1, forKey: "word1")
        manageObject.setValue(word2, forKey: "word2")
        manageObject.setValue(word3, forKey: "word3")
        manageObject.setValue(word4, forKey: "word4")
        manageObject.setValue(word5, forKey: "word5")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    
    class func saveCharades(title: String, word1: String, word2: String, word3: String, word4: String, word5: String)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "CharadesCoreData", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(title, forKey: "title")
        manageObject.setValue(word1, forKey: "word1")
        manageObject.setValue(word2, forKey: "word2")
        manageObject.setValue(word3, forKey: "word3")
        manageObject.setValue(word4, forKey: "word4")
        manageObject.setValue(word5, forKey: "word5")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    class func saveHumTheSong(title: String, word1: String, word2: String, word3: String, word4: String, word5: String)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "HumTheSongCoreData", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(title, forKey: "title")
        manageObject.setValue(word1, forKey: "word1")
        manageObject.setValue(word2, forKey: "word2")
        manageObject.setValue(word3, forKey: "word3")
        manageObject.setValue(word4, forKey: "word4")
        manageObject.setValue(word5, forKey: "word5")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    
    class func saveCanYouFigureItOut(title: String, word1: String, word2: String, word3: String, word4: String, word5: String, answer: String)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "CanYouFigureItOutCoreData", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(title, forKey: "title")
        manageObject.setValue(word1, forKey: "hint1")
        manageObject.setValue(word2, forKey: "hint2")
        manageObject.setValue(word3, forKey: "hint3")
        manageObject.setValue(word4, forKey: "hint4")
        manageObject.setValue(word5, forKey: "hint5")
        manageObject.setValue(answer, forKey: "answer")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    
    class func saveTeamChallenge(title: String, word1: String)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "TeamChallengeCoreData", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(title, forKey: "title")
        manageObject.setValue(word1, forKey: "challenge")
        
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    
    
    
    //////////////////////////////////////////
    
    
    class func saveWithOtherWordsCount(index: Int)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "WithOtherWordsCount", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(index, forKey: "index")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    
    class func upDateWithOtherWordsCount(withOtherWordsCount: WithOtherWordsCount, index: Int ) -> Bool{
        let context = getContext()
        
        withOtherWordsCount.setValue(index, forKey: "index")
        
        do{
            try context.save()
            return true
        }catch {
            
            return false
        }
    }
    
    class func fetchWithOtherWordsCount() -> [WithOtherWordsCount]?{
        let context = getContext()
        var withOtherWordsCount: [WithOtherWordsCount]? = nil
        do{
            withOtherWordsCount = try context.fetch(WithOtherWordsCount.fetchRequest())
            return withOtherWordsCount
        }catch{
            return withOtherWordsCount
        }
    }
    //////////
    class func saveCharadesCount(index: Int)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "CharadesCount", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(index, forKey: "index")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    
    class func upDateCharadesCount(charadesCount: CharadesCount, index: Int ) -> Bool{
        let context = getContext()
        
        charadesCount.setValue(index, forKey: "index")
        
        do{
            try context.save()
            return true
        }catch {
            
            return false
        }
    }
    
    class func fetchCharadesCount() -> [CharadesCount]?{
        let context = getContext()
        var charadesCount: [CharadesCount]? = nil
        do{
            charadesCount = try context.fetch(CharadesCount.fetchRequest())
            return charadesCount
        }catch{
            return charadesCount
        }
    }
    
    //////////
    
    class func saveHumTheSongCount(index: Int)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "HumTheSongCount", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(index, forKey: "index")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    
    class func upDateHumTheSongCount(humTheSongCount: HumTheSongCount, index: Int ) -> Bool{
        let context = getContext()
        
        humTheSongCount.setValue(index, forKey: "index")
        
        do{
            try context.save()
            return true
        }catch {
            
            return false
        }
    }
    
    class func fetchHumTheSongCount() -> [HumTheSongCount]?{
        let context = getContext()
        var humTheSongCount: [HumTheSongCount]? = nil
        do{
            humTheSongCount = try context.fetch(HumTheSongCount.fetchRequest())
            return humTheSongCount
        }catch{
            return humTheSongCount
        }
    }
    
    //////////
    
    class func saveTeamChallengeCount(index: Int)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "TeamChallengeCount", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(index, forKey: "index")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    
    class func upDateTeamChallengeCount(teamChallengeCount: TeamChallengeCount, index: Int ) -> Bool{
        let context = getContext()
        
        teamChallengeCount.setValue(index, forKey: "index")
        
        do{
            try context.save()
            return true
        }catch {
            
            return false
        }
    }
    
    class func fetchTeamChallengeCount() -> [TeamChallengeCount]?{
        let context = getContext()
        var teamChallengeCount: [TeamChallengeCount]? = nil
        do{
            teamChallengeCount = try context.fetch(TeamChallengeCount.fetchRequest())
            return teamChallengeCount
        }catch{
            return teamChallengeCount
        }
    }
    
    
    //////////
    
    class func saveCanYouFigureItOutCount(index: Int)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "CanYouFigureItOutCount", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(index, forKey: "index")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    
    class func upDateCanYouFigureItOutCount(canYouFigureItOutCount: CanYouFigureItOutCount, index: Int ) -> Bool{
        let context = getContext()
        
        canYouFigureItOutCount.setValue(index, forKey: "index")
        
        do{
            try context.save()
            return true
        }catch {
            
            return false
        }
    }
    
    class func fetchCanYouFigureItOutCount() -> [CanYouFigureItOutCount]?{
        let context = getContext()
        var canYouFigureItOutCount: [CanYouFigureItOutCount]? = nil
        do{
            canYouFigureItOutCount = try context.fetch(CanYouFigureItOutCount.fetchRequest())
            return canYouFigureItOutCount
        }catch{
            return canYouFigureItOutCount
        }
    }
    
    
    
    
    
    
    
    
    
    
    //////////////////////////////
    
    
    
    class func cleanDeleteWords()-> Bool{
        let context = getContext()
        let delete = NSBatchDeleteRequest(fetchRequest: WithOtherWordsCount.fetchRequest())
        
        do{
            try context.execute(delete)
            return true
        } catch{
            return false
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    //Update
    class func upDateWithOtherWords(withOtherWords: WithOtherWordsCoreData, title: String, word1: String, word2: String, word3: String, word4: String, word5: String ) -> Bool{
        let context = getContext()
        
        withOtherWords.setValue(title, forKey: "title")
        withOtherWords.setValue(word1, forKey: "word1")
        withOtherWords.setValue(word2, forKey: "word2")
        withOtherWords.setValue(word3, forKey: "word3")
        withOtherWords.setValue(word4, forKey: "word4")
        withOtherWords.setValue(word5, forKey: "word5")
        
        do{
            try context.save()
            return true
        }catch {
            
            return false
        }
    }
    
    class func upDateCharades(charades: CharadesCoreData, title: String, word1: String, word2: String, word3: String, word4: String, word5: String ) -> Bool{
        let context = getContext()
        charades.setValue(title, forKey: "title")
        charades.setValue(word1, forKey: "word1")
        charades.setValue(word2, forKey: "word2")
        charades.setValue(word3, forKey: "word3")
        charades.setValue(word4, forKey: "word4")
        charades.setValue(word5, forKey: "word5")
        
        do{
            try context.save()
            return true
        }catch {
            return false
        }
    }
    
    class func upDateHumTheSong(humTheSong: HumTheSongCoreData, title: String, word1: String, word2: String, word3: String, word4: String, word5: String ) -> Bool{
        let context = getContext()
        humTheSong.setValue(title, forKey: "title")
        humTheSong.setValue(word1, forKey: "word1")
        humTheSong.setValue(word2, forKey: "word2")
        humTheSong.setValue(word3, forKey: "word3")
        humTheSong.setValue(word4, forKey: "word4")
        humTheSong.setValue(word5, forKey: "word5")
        
        do{
            try context.save()
            return true
        }catch {
            return false
        }
    }
    
    class func upDateTeamChallenge(teamChallenge: TeamChallengeCoreData, title: String, word1: String ) -> Bool{
        let context = getContext()
        teamChallenge.setValue(title, forKey: "title")
        teamChallenge.setValue(word1, forKey: "challenge")
        
        do{
            try context.save()
            return true
        }catch {
            return false
        }
    }
    
    class func upDateCanYouFigureItOut(canYouFigureItOut: CanYouFigureItOutCoreData, title: String, word1: String, word2: String, word3: String, word4: String, word5: String, answer: String ) -> Bool{
        let context = getContext()
        
        
        canYouFigureItOut.setValue(title, forKey: "title")
        canYouFigureItOut.setValue(word1, forKey: "hint1")
        canYouFigureItOut.setValue(word2, forKey: "hint2")
        canYouFigureItOut.setValue(word3, forKey: "hint3")
        canYouFigureItOut.setValue(word4, forKey: "hint4")
        canYouFigureItOut.setValue(word5, forKey: "hint5")
        canYouFigureItOut.setValue(answer, forKey: "answer")
        
        do{
            try context.save()
            return true
        }catch {
            return false
        }
    }
    
    
    
    
    
    
    //Fetch
    
    class func fetchWithOtherWords() -> [WithOtherWordsCoreData]?{
        let context = getContext()
        var withOtherWords: [WithOtherWordsCoreData]? = nil
        do{
            withOtherWords = try context.fetch(WithOtherWordsCoreData.fetchRequest())
            return withOtherWords
        }catch{
            return withOtherWords
        }
    }
    
    class func fetchCharades() -> [CharadesCoreData]?{
        let context = getContext()
        var charades: [CharadesCoreData]? = nil
        do{
            charades = try context.fetch(CharadesCoreData.fetchRequest())
            return charades
        }catch{
            return charades
        }
    }
    
    class func fetchHumTheSong() -> [HumTheSongCoreData]?{
        let context = getContext()
        var humTheSong: [HumTheSongCoreData]? = nil
        do{
            humTheSong = try context.fetch(HumTheSongCoreData.fetchRequest())
            return humTheSong
        }catch{
            return humTheSong
        }
    }
    
    class func fetchCanYouFigureItOut() -> [CanYouFigureItOutCoreData]?{
        let context = getContext()
        var canYouFigureItOut: [CanYouFigureItOutCoreData]? = nil
        do{
            canYouFigureItOut = try context.fetch(CanYouFigureItOutCoreData.fetchRequest())
            return canYouFigureItOut
        }catch{
            return canYouFigureItOut
        }
    }
    
    class func fetchTeamChallenge() -> [TeamChallengeCoreData]?{
        let context = getContext()
        var teamChallenge: [TeamChallengeCoreData]? = nil
        do{
            teamChallenge = try context.fetch(TeamChallengeCoreData.fetchRequest())
            return teamChallenge
        }catch{
            return teamChallenge
        }
    }
    
    
    
    //Delete
    class func deleteWithOtherWords(withOtherWords: WithOtherWordsCoreData) -> Bool{
        let context = getContext()
        context.delete(withOtherWords)
        
        do{
            try context.save()
            return true
        }catch {
            return false
        }
    }
    
    class func deleteHumTheSong(humTheSong: HumTheSongCoreData) -> Bool{
        let context = getContext()
        context.delete(humTheSong)
        
        do{
            try context.save()
            return true
        }catch {
            return false
        }
    }
    
    class func deleteCharades(charades: CharadesCoreData) -> Bool{
        let context = getContext()
        context.delete(charades)
        
        do{
            try context.save()
            return true
        }catch {
            return false
        }
    }
    class func deleteTeamChallenge(teamChallenge: TeamChallengeCoreData) -> Bool{
        let context = getContext()
        context.delete(teamChallenge)
        
        do{
            try context.save()
            return true
        }catch {
            return false
        }
    }
    
    class func deleteCanYouFigureItOut(canYouFigureItOut: CanYouFigureItOutCoreData) -> Bool{
        let context = getContext()
        context.delete(canYouFigureItOut)
        
        do{
            try context.save()
            return true
        }catch {
            return false
        }
    }
    
    
    
    
    class func cleanDeleteWithOtherWords()-> Bool{
        let context = getContext()
        let delete = NSBatchDeleteRequest(fetchRequest: WithOtherWordsCoreData.fetchRequest())
        
        do{
            try context.execute(delete)
            return true
        } catch{
            return false
        }
    }
    class func cleanDeleteCharades()-> Bool{
        let context = getContext()
        let delete = NSBatchDeleteRequest(fetchRequest: CharadesCoreData.fetchRequest())
        
        do{
            try context.execute(delete)
            return true
        } catch{
            return false
        }
    }
    
    
    
    
    
    class func saveCardDeckNumbers(index: Int)->Bool{
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "CardDecksInSettings", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(index, forKey: "numbers")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }
    }
    
    
    
    class func fetchCardDecksInSettings() -> [CardDecksInSettings]?{
        let context = getContext()
        var cardDecks: [CardDecksInSettings]? = nil
        do{
            cardDecks = try context.fetch(CardDecksInSettings.fetchRequest())
            return cardDecks
        }catch{
            return cardDecks
        }
    }
    
    class func cleanDeleteCardDecksNumbers()-> Bool{
        let context = getContext()
        let delete = NSBatchDeleteRequest(fetchRequest: CardDecksInSettings.fetchRequest())
        
        do{
            try context.execute(delete)
            return true
        } catch{
            return false
        }
    }
    
    
    
    ///////////////
    
    class func saveInAppPurchase()->Bool{
        let context = getContext()

            print("0")
        let entity = NSEntityDescription.entity(forEntityName: "UpdadedDeck", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(true, forKey: "purchased")
        
        do {
            try context.save()
            return true
        }catch{
            return false
        }

    }

    
    class func fetchInAppPurchsed() -> [UpdadedDeck]?{
        let context = getContext()
        var inAppPurchase: [UpdadedDeck]? = nil
        do{
            inAppPurchase = try context.fetch(UpdadedDeck.fetchRequest())
            return inAppPurchase
        }catch{
            return inAppPurchase
        }
    }
    
    
    
}





