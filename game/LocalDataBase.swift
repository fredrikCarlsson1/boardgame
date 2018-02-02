//
//  LocalDataBase.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-11.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import Foundation

public class LocalDataBase {
    
    struct Keys{
        static let withOtherWords = "With other Words"
        static let charades = "Charades"
        static let teamChallenge  = "Team Challenge"
        static let canYouFigureItOut = "Can you figure it out?"
        static let humTheSong = "Hum the Song"
        
    }
    
    static var keysOfGamesArray = [Keys.withOtherWords, Keys.charades, Keys.teamChallenge, Keys.canYouFigureItOut, Keys.humTheSong]
    
    static var teamArray = [Team]()
    static var nrOfRounds = 1
    
    
    public var withOtherWordsList = [withOtherWords]()
    public var charadeList = [Charades]()
    public var teamChallengeList = [TeamChallenge]()
    public var canYouFigureItOutList = [CanYouFigureItOut]()
    public var humTheSongList = [HumTheSong]()
    
    public var arrayOfSubjects = [Any]()
    
    init() {
        self.arrayOfSubjects.append(withOtherWordsList)
        self.arrayOfSubjects.append(charadeList)
        self.arrayOfSubjects.append(teamChallengeList)
        self.arrayOfSubjects.append(canYouFigureItOutList)
        self.arrayOfSubjects.append(humTheSongList)
        
        // With other Words append
        self.withOtherWordsList.append(pits)
        self.withOtherWordsList.append(capitalCities)
        self.withOtherWordsList.append(beers)
        self.withOtherWordsList.append(fastFoodRestaurans)
        
        //Can you figure it out?
        self.canYouFigureItOutList.append(city1)
        self.canYouFigureItOutList.append(federer)
        
        
        //Hum the song
        self.humTheSongList.append(swedishSchlager)
        self.humTheSongList.append(boyBand1)
        self.humTheSongList.append(beatles)
        
        
        //Team Challenge (20 st)
        self.teamChallengeList.append(cities1)
        self.teamChallengeList.append(physicalExercise1)
        self.teamChallengeList.append(physicalExercise2)
        self.teamChallengeList.append(physicalExercise3)
        self.teamChallengeList.append(physicalExercise4)
        self.teamChallengeList.append(physicalExercise5)
        self.teamChallengeList.append(food)
        self.teamChallengeList.append(cars)
        self.teamChallengeList.append(famousPersons)
        self.teamChallengeList.append(music)
        self.teamChallengeList.append(serious)
        self.teamChallengeList.append(fish)
        self.teamChallengeList.append(choir)
        self.teamChallengeList.append(words)
        self.teamChallengeList.append(language)
        self.teamChallengeList.append(names)
        self.teamChallengeList.append(names2)
        self.teamChallengeList.append(sports)
        self.teamChallengeList.append(world)
        self.teamChallengeList.append(usa)
        self.teamChallengeList.append(dogs)
        
        
        //Charades
        self.charadeList.append(animales1)
        self.charadeList.append(animales2)
        self.charadeList.append(sports2)
        self.charadeList.append(kitchen)
        self.charadeList.append(fruits)
        self.charadeList.append(movies)
        self.charadeList.append(vehicles)
        self.charadeList.append(electronics)
        self.charadeList.append(clothes)
        self.charadeList.append(nature)
        self.charadeList.append(drinks)
        
        
        
    }
    
    
    
    
    // WithOtherWords
    
    var pits = withOtherWords(title: "Pitsburgh Penguins Players", firstWord: "Sidney Crosby", secondWord: "Evgeni Malkin", thirdWord: "Phil Kessel", fourthWord: "Matt Murray", fifthWord: "Patrik Hörnqvist")
    var capitalCities = withOtherWords(title: "Capitals in Europe", firstWord: "Madrid", secondWord: "Warzava", thirdWord: "Lisabon", fourthWord: "Sofia", fifthWord: "Bucarest")
    var beers = withOtherWords(title: "Beer Brands", firstWord: "Carlsberg", secondWord: "Heiniken", thirdWord: "Guiness", fourthWord: "Singha", fifthWord: "Red Label")
    var fastFoodRestaurans = withOtherWords(title: "Fast Food Restaurants", firstWord: "McDonalds", secondWord: "Burger King", thirdWord: "Subway", fourthWord: "KFC", fifthWord: "Pizza Hut")
    
    
    // Can you figure it out?
    var city1 = CanYouFigureItOut(title: "City", answer: "Stockholm", firstWord: "Was founded 1252", secondWord:"Also goes by the name: Venice of the North" , thirdWord: "Home of Karl XVI Gustav", fourthWord: "Globen, Kaknästornet, and Vasa Museum are famous places in this city", fifthWord: "The Capital of Sweden")
    var  federer = CanYouFigureItOut(title: "Athlete", answer: "Roger Federer", firstWord: "Was born 8 August, 1981", secondWord:"Says he has three idols; Boris Becker, Stefan Edberg and Pete Sampras" , thirdWord: "Has had a Swiss Post stamp issued in his honour ", fourthWord: "Has won all four Major Tennis Tournament", fifthWord: "Is the most successful tennis player in Switzerland history")
    
    
    
    
    // Hum The song challenge
    var swedishSchlager = HumTheSong(title: "Swedish Schlager", firstWord: "Satelit", secondWord: "Waterloo", thirdWord: "Listen to your heartbeat", fourthWord: "Genom eld och vatten", fifthWord: "I cant go on")
    var boyBand1 = HumTheSong(title: "Boy Bands", firstWord: "I Want It That Way", secondWord: "Bye Bye Bye", thirdWord: "MMMBop", fourthWord: "As long as you love me", fifthWord: "Mandy")
    var beatles = HumTheSong(title: "Beatles", firstWord: "Hey Jude", secondWord: "Twist and shout", thirdWord: "Let it be", fourthWord: "Come together", fifthWord: "Here comes the sun")
    
    
    //Team Challenge
    var cities1  = TeamChallenge(title: "Geography", challenge: "Name at least six capitals in Africa before the expiry of the time")
    var physicalExercise1  = TeamChallenge(title: "Physical Exercise", challenge: "Stand up on straight legs. If everyone in the team can reach the floor with your fingertips, you have succeeded in the challenge")
    var physicalExercise2  = TeamChallenge(title: "Physical Exercise", challenge: "All team members must make 15 push ups before the time runs out to succeed in the challenge")
    var physicalExercise3  = TeamChallenge(title: "Balance", challenge: "Stand on your toes on one leg for at least 20 seconds before the time runs out. If one in the team can do it, you have succeeded in the challenge")
    var food  = TeamChallenge(title: "Food", challenge: "Mention a total of 6 dishes starting with the alphabet's first six letters (A-F). One dish for each letter")
   
    var cars = TeamChallenge(title: "Vehicles", challenge: "Can you, as a team, get ten car brands before the time has expired")
    var physicalExercise4  = TeamChallenge(title: "Flexibility", challenge: "If someone in the team can kiss their own foot, you have comepleted the task")
    var physicalExercise5  = TeamChallenge(title: "Physical Exercies", challenge: "Can all players in the team rise from laying on their backs without using their arms and hands")
    var famousPersons = TeamChallenge(title: "Famous persons", challenge: "Can the team come up with 3 famous persons with the first name Kim")
    var music = TeamChallenge(title: "Music", challenge: "Can the team sing the first part in: 'We are the world'. At least the 20 first words.")
    var serious = TeamChallenge(title: "Seriousness", challenge: "No one in the team gets to laugh for one minute. Remaining players may do anything to make you fail")
    var fish = TeamChallenge(title: "In the sea", challenge: "Can you as a team name 8 diffrent fishes")
    var choir = TeamChallenge(title: "Choir", challenge: "If everyone in the team can whistle 'Jingle Bells' in a choir, then you've succeeded")
    var names = TeamChallenge(title: "Names", challenge: "Can the team name 10 Girl-names that begins with the letter 'S' before the time runs out")
    var names2 = TeamChallenge(title: "Names", challenge: "Can the team name 10 Boy-names that begins with the letter 'M' before the time runs out")
    var words = TeamChallenge(title: "Words", challenge: "Can the team come up with five synonyms for the word nose")
    var language = TeamChallenge(title: "Language", challenge: "Can the team say 'Thank you' in at least six different languages")
    var sports = TeamChallenge(title: "Sports", challenge: "Can the team say at least 10 sports where you do NOT use a ball")
    var dogs = TeamChallenge(title: "Animals", challenge: "Can the team mention ten different dog breeds")
    var world = TeamChallenge(title: "The World", challenge: "Can the team mention 8 different countries where you speak Spanish")
    var usa = TeamChallenge(title: "USA", challenge: "Can the team name 4 states in USA that begins with the letter 'A'")
    
    
 
    
    //Charades
    var animales1 = Charades(title: "Animals", firstWord: "Snake", secondWord: "Ant", thirdWord: "Giraff", fourthWord: "Cat", fifthWord: "Dolphin")
    var animales2 = Charades(title: "Animals", firstWord: "Dog", secondWord: "Whale", thirdWord: "Spider", fourthWord: "Bear", fifthWord: "Butterfly")
    var kitchen = Charades(title: "In the house", firstWord: "Drawer", secondWord: "Fork", thirdWord: "Frying pan", fourthWord: "Microwave", fifthWord: "TV")
    var sports2 = Charades(title: "Sports", firstWord: "Soccer", secondWord: "Tennis", thirdWord: "Curling", fourthWord: "Dart", fifthWord: "Long jump")
    var clothes = Charades(title: "Clothes", firstWord: "Socks", secondWord: "Shorts", thirdWord: "Underwear", fourthWord: "Cap", fifthWord: "T-Shirt")
    var drinks = Charades(title: "Drinks", firstWord: "Milk", secondWord: "Beer", thirdWord: "Water", fourthWord: "Wine", fifthWord: "Coffee")
    var vehicles = Charades(title: "Transportation", firstWord: "Bus", secondWord: "Helicopter", thirdWord: "Teleportation", fourthWord: "Bike", fifthWord: "Train")
    var electronics = Charades(title: "Electronics", firstWord: "TV", secondWord: "Lamp", thirdWord: "Computer", fourthWord: "Stereo", fifthWord: "Print writer")
    var nature = Charades(title: "Nature", firstWord: "Tree", secondWord: "Flower", thirdWord: "Mountain", fourthWord: "Lake", fifthWord: "Grass")
    var movies = Charades(title: "Movies", firstWord: "The Godfather", secondWord: "Grease", thirdWord: "Dirty Dancing", fourthWord: "Spiderman", fifthWord: "Jurassic Park")
    var fruits = Charades(title: "Fruits", firstWord: "Orange", secondWord: "Banana", thirdWord: "Apple", fourthWord: "Pear", fifthWord: "Plum")
    
    
    
    
    
    public func getSortedTeams()->[Team]{
        return LocalDataBase.teamArray.sorted{ $0.points > $1.points }
        
    }
    
    func randomGenerator(max maxNumber: Int) -> Int {
        return Int(arc4random_uniform(UInt32(maxNumber)))
    }
    
    public func getRandomNumberForEachList(index: Int) ->Int{
        
        switch (index){
        case 0:
            
            return randomGenerator(max:withOtherWordsList.count)
        case 1:
            return randomGenerator(max:charadeList.count)
        case 2:
            return randomGenerator(max:teamChallengeList.count)
        case 3:
            return randomGenerator(max:canYouFigureItOutList.count)
        case 4:
            return randomGenerator(max:humTheSongList.count)
        default:
            return 50
        }
    }
    
    public func getRandomSubjectFrom(list: Int, index: Int)-> String{
        switch(list){
        case 0:
            return withOtherWordsList[index].title
        case 1:
            return charadeList[index].title
        case 2:
            return teamChallengeList[index].title
        case 3:
            return canYouFigureItOutList[index].subject
        case 4:
            return humTheSongList[index].title
        default:
            return ""
        }
    }
    
    
    
    public func setLabelTextUnderStartButton(team: Team, nrOfRounds: Int, sortedTeamArray: [Team]) -> String{
        var string: String
        var currentPosition = 0
        var i = 0
        
        for teams in sortedTeamArray{
            i = i+1
            if(team.id == teams.id){
                currentPosition = i
            }
        }
        
        if (nrOfRounds == 1){
            string = "OK, \(team.name)! You get to go first! Press Start or shake the screen to begin playing!"
        }
        else if(currentPosition == 1){
            string = "\(team.name), you are doing great! Let's keep up the good work!"
        }
        else if(currentPosition == sortedTeamArray.count){
            string = "\(team.name), come on now! You need these points"
        }
        else {
            string = "\(team.name), you are up!"
        }
        return string
        
    }
    
    
    public func setTextViewInPopUp(team: Team, gameNumber: Int, title: String)->String{
        var string = ""
        
        if (gameNumber == 0){
            string = "\(team.players[randomGenerator(max: team.players.count)].name), it's your time to shine! \n\nAfter pressing Start, you have 45 seconds to describe five words to your team. You get one point for each correct answer. Be sure not to display the screen for your fellow players. Good luck!"
        }
        else if (gameNumber == 1){
            string = "\(team.players[randomGenerator(max: team.players.count)].name), you are up!\n\n Explain the following five words with gestures"
        }
        else if (gameNumber == 2){
            string = "\(team.name), let's hope you are ready for a team challenge. \n\nAfter you have pressed the Start Button, you will have 60 seconds to complete the task. Go for it!"
        }
        else if (gameNumber == 3){
            string = "\(team.name), when you have pressed the Start button, try to find the answer we are looking for. If you don't know the right answer, ask for another clue. The sooner you guess, the more points you might get. But be careful, you could end up with no points at all..."
        }
        else if (gameNumber == 4){
            string = "\(team.players[randomGenerator(max: team.players.count)].name)"
        }
        return string
    }
    
    
    public func setTextViewInModalView(points: Int, game: Int)->String{
        var string = ""
        if (game == 0) {
            if (points == 5){
                string = "Amazing! That was a perfect round. You guys really know your words!"
            }
            if (points == 0){
                string = "Thats a swing and a miss! We all know that you are better than that!"
            }
            
        }
        else if (game == 1){
            if (points == 5){
                string = "Wow! That's impressive! 5 points is now added to your Team."
            }
            if (points == 0){
                string = "Admit it. That was a disappointment. Come on now!"
            }
        }
        else if (game == 2){
            if (points == 5){
                string = "Fantastic work! You guys have great teamwork. Keep it up!"
            }
            if (points == 0){
                string = "Okay, you can not succeed every time. Lets get back up on the horse!"
            }
        }
        else if (game == 3){
            if (points == 5){
                string = "Superb! You are bringing all five points back home!"
            }
            if (points == 0){
                string = "Well at least you tried. Better luck next time!"
            }
        }
        else if (game == 4){
            if (points == 5){
                string = "Unbelievable! Even John Lennon would be impressed by that performance!"
            }
            if (points == 0){
                string = "That was not what we hoped for. This is a difficult game, but you are better than this!"
            }
        
        }
        return string
        
    }
    
    
    
    
}










