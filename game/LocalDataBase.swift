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
        static let withOtherWords = NSLocalizedString("withOtherWords", comment: "")
        static let charades = NSLocalizedString("charades", comment: "")
        static let teamChallenge  = NSLocalizedString("teamChallenge", comment: "")
        static let canYouFigureItOut = NSLocalizedString("canYouFigureItOut", comment: "")
        static let humTheSong = NSLocalizedString("humTheSong", comment: "")
    }
    
    static var keysOfGamesArray = [Keys.withOtherWords, Keys.charades, Keys.teamChallenge, Keys.canYouFigureItOut, Keys.humTheSong]
    
    static var teamArray = [Team]()
    static var nrOfRounds = 1
    static var withOtherWordsCount = 0
    static var charadesCount = 0
    static var canYouFigureItOutCount = 0
    static var teamChallengeCount = 0
    static var humTheSongCount = 0
    
    static var tempCardDeck:[Int] = [1]
    static var cardDeck = [1]
    static var soundOn = true
    public var withOtherWordsList = [withOtherWords]()
    public var charadeList = [Charades]()
    public var teamChallengeList = [TeamChallenge]()
    public var canYouFigureItOutList = [CanYouFigureItOut]()
    public var humTheSongList = [HumTheSong]()
    
    var charadesArraySwe1 = [Charades]()
    var charadesArrayEng1 = [Charades]()
    let langStr = Locale.current.languageCode
    public var arrayOfSubjects = [Any]()
    
    
    init() {
        self.arrayOfSubjects.append(withOtherWordsList)
        self.arrayOfSubjects.append(charadeList)
        self.arrayOfSubjects.append(teamChallengeList)
        self.arrayOfSubjects.append(canYouFigureItOutList)
        self.arrayOfSubjects.append(humTheSongList)
        
        if(self.langStr == "sv"){
            if(LocalDataBase.cardDeck.contains(1)){
                //(15)
                self.charadeList.append(animales1Swe)
                self.charadeList.append(kitchenSwe)
                self.charadeList.append(sports2Swe)
                self.charadeList.append(clothesSwe)
                self.charadeList.append(drinksSwe)
                self.charadeList.append(vehiclesSwe)
                self.charadeList.append(electronicsSwe)
                self.charadeList.append(natureSwe)
                self.charadeList.append(moviesSwe)
                self.charadeList.append(fruitsSwe)
                self.charadeList.append(furnituresSwe)
                self.charadeList.append(commicsSwe)
                self.charadeList.append(foodsSwe)
                self.charadeList.append(animales2Swe)
                self.charadeList.append(sports3Swe)
               
                
                //(15)
                self.teamChallengeList.append(cities1Swe)
                self.teamChallengeList.append(physicalExercise1Swe)
                self.teamChallengeList.append(foodSwe)
                self.teamChallengeList.append(physicalExercise2Swe)
                self.teamChallengeList.append(carsSwe)
                self.teamChallengeList.append(famousPersonsSwe)
                self.teamChallengeList.append(music2Swe)
                self.teamChallengeList.append(seriousSwe)
                self.teamChallengeList.append(fishSwe)
                self.teamChallengeList.append(choirSwe)
                self.teamChallengeList.append(wordsSwe)
                self.teamChallengeList.append(physicalExercise4Swe)
                self.teamChallengeList.append(languageSwe)
                self.teamChallengeList.append(namesSwe)
                self.teamChallengeList.append(physicalExercise3Swe)
                
                
                
                //(15)
                
                self.withOtherWordsList.append(summerSwe)
                self.withOtherWordsList.append(beersSwe)
                self.withOtherWordsList.append(fastFoodRestauransSwe)
                self.withOtherWordsList.append(inYourHomeSwe)
                self.withOtherWordsList.append(iSverigeSwe)
                self.withOtherWordsList.append(legendaryWomensSwe)
                self.withOtherWordsList.append(menOver50Swe)
                self.withOtherWordsList.append(clothes2Swe)
                self.withOtherWordsList.append(fictitiousPersonsSwe)
                self.withOtherWordsList.append(proffesions3Swe)
                self.withOtherWordsList.append(criminalsSwe)
                self.withOtherWordsList.append(inTheBathRoomSwe)
                self.withOtherWordsList.append(capitalCitiesSwe)
                self.withOtherWordsList.append(onTheCarSwe)
                self.withOtherWordsList.append(inTheOceanSwe)
                
                
                //(15)
                self.canYouFigureItOutList.append(federerSwe)
                self.canYouFigureItOutList.append(stockholmSwe)
                self.canYouFigureItOutList.append(obamaSwe)
                self.canYouFigureItOutList.append(nyckelnTillFrihetSwe)
                self.canYouFigureItOutList.append(friendsSwe)
                self.canYouFigureItOutList.append(uranusSwe)
                self.canYouFigureItOutList.append(varldsdelSwe)
                self.canYouFigureItOutList.append(indonesienSwe)
                self.canYouFigureItOutList.append(bornInTheUSASWe)
                self.canYouFigureItOutList.append(cocaColaSwe)
                self.canYouFigureItOutList.append(colosseumSwe)
                self.canYouFigureItOutList.append(palmSwe)
                self.canYouFigureItOutList.append(niagaraSwe)
                self.canYouFigureItOutList.append(cangaruSwe)
                self.canYouFigureItOutList.append(fotbollSwe)
                
                
                
                
                //Hum the song (15)
                self.humTheSongList.append(svenskSchlager)
                self.humTheSongList.append(boyBand1SWE)
                self.humTheSongList.append(first80SWE)
                self.humTheSongList.append(loveballadsSWE)
                self.humTheSongList.append(hipHopRnB1SWE)
                self.humTheSongList.append(beatlesSWE)
                self.humTheSongList.append(houseSWE)
                self.humTheSongList.append(discoSWE)
                self.humTheSongList.append(classicRockSWE)
                self.humTheSongList.append(loveSongsSWE)
                self.humTheSongList.append(first70Swe)
                self.humTheSongList.append(movieMusicSWE)
                self.humTheSongList.append(chilldrensSongsSwe)
                self.humTheSongList.append(countrySWE)
                self.humTheSongList.append(rapSWE)
                
                
                
            }
            if(LocalDataBase.cardDeck.contains(2)){
                
                //WithOtherWordsSwe(40)
                self.withOtherWordsList.append(inSpaceSwe)
                self.withOtherWordsList.append(redStuffsSwe)
                self.withOtherWordsList.append(theBibleSwe)
                self.withOtherWordsList.append(swedishSingersSwe)
                self.withOtherWordsList.append(instrumentsHelpSWe)
                self.withOtherWordsList.append(computerStorageSwe)
                self.withOtherWordsList.append(wasteSwe)
                self.withOtherWordsList.append(drySwe)
                self.withOtherWordsList.append(actorsSwe)
                self.withOtherWordsList.append(bestSwe)
                self.withOtherWordsList.append(asianKitchenSwe)
                self.withOtherWordsList.append(liquidSwe)
                self.withOtherWordsList.append(movingSwe)
                self.withOtherWordsList.append(trafficSwe)
                self.withOtherWordsList.append(readableSwe)
                self.withOtherWordsList.append(artSwe)
                self.withOtherWordsList.append(westernSwe)
                self.withOtherWordsList.append(forKidsSwe)
                self.withOtherWordsList.append(environmentSwe)
                self.withOtherWordsList.append(walkSwe)
                
                self.withOtherWordsList.append(royaltysSwe)
                self.withOtherWordsList.append(soundSwe)
                self.withOtherWordsList.append(economySwe)
                self.withOtherWordsList.append(coldSwe)
                self.withOtherWordsList.append(inTheBodySwe)
                self.withOtherWordsList.append(sparklingDrinksSwe)
                self.withOtherWordsList.append(entrenceSwe)
                self.withOtherWordsList.append(valentinesDaySwe)
                self.withOtherWordsList.append(partySwe)
                self.withOtherWordsList.append(feudsSWe)
                self.withOtherWordsList.append(sportPlacesSwe)
                self.withOtherWordsList.append(kitchenSuppliesSwe)
                self.withOtherWordsList.append(sleepSwe)
                self.withOtherWordsList.append(inTheForrestSwe)
                self.withOtherWordsList.append(famousWomenOver50Swe)
                self.withOtherWordsList.append(inTheGroceryStoreSwe)
                self.withOtherWordsList.append(historicalPersonsSwe)
                self.withOtherWordsList.append(vacationSwe)
                self.withOtherWordsList.append(candySwe)
                self.withOtherWordsList.append(veganSwe)
 
                
                //Team Challenge SWE (40)
                self.teamChallengeList.append(dogsSwe)
                self.teamChallengeList.append(names2Swe)
                self.teamChallengeList.append(sportsSwe)
                self.teamChallengeList.append(worldSwe)
                self.teamChallengeList.append(usaSwe)
                self.teamChallengeList.append(physicalExercise5Swe)
                self.teamChallengeList.append(countriesOnBSwe)
                self.teamChallengeList.append(moviesInNYSWe)
                self.teamChallengeList.append(worldSwe)
                self.teamChallengeList.append(fatalitiesSwe)
                self.teamChallengeList.append(musicGroupsSwe)
                self.teamChallengeList.append(knowNamesSwe)
                self.teamChallengeList.append(mathSwe)
                self.teamChallengeList.append(premierLeagueSwe)
                self.teamChallengeList.append(celebertiesSwe)
                self.teamChallengeList.append(headSwe)
                self.teamChallengeList.append(sleepyAnimalesSwe)
                self.teamChallengeList.append(lastNamesSwe)
                self.teamChallengeList.append(famousKidsSwe)
                self.teamChallengeList.append(islandsSwe)
                
                self.teamChallengeList.append(artistsSwe)
                self.teamChallengeList.append(ekvatornSwe)
                self.teamChallengeList.append(candyBarsSwe)
                self.teamChallengeList.append(shoesSwe)
                self.teamChallengeList.append(mobilPhoneSwe)
                self.teamChallengeList.append(disneySwe)
                self.teamChallengeList.append(newsPapersSwe)
                self.teamChallengeList.append(airportsSwe)
                self.teamChallengeList.append(sodaSwe)
                self.teamChallengeList.append(planetsSwe)
                self.teamChallengeList.append(fotbollSwe2)
                self.teamChallengeList.append(skiResortsSwe)
                self.teamChallengeList.append(musicalsSWe)
                self.teamChallengeList.append(yellowFruitsSwe)
                self.teamChallengeList.append(cityNamesSwe)
                self.teamChallengeList.append(flowersSwe)
                self.teamChallengeList.append(theBodySwe)
                self.teamChallengeList.append(countryNamesSwe)
                self.teamChallengeList.append(loveSongsTCSwe)
                self.teamChallengeList.append(birdsSwe)
                
                
                //Hum the Song Swe(40)
                self.humTheSongList.append(oneHitWondersSWE)
                self.humTheSongList.append(first90sSWE)
                self.humTheSongList.append(latinSongsSWE)
                self.humTheSongList.append(summerSongsSWE)
                self.humTheSongList.append(after2010SWE)
                self.humTheSongList.append(second80SWE)
                self.humTheSongList.append(second70SWE)
                self.humTheSongList.append(hardRockSWE)
                self.humTheSongList.append(y2016Swe)
                self.humTheSongList.append(rockOf90sSWE)
                self.humTheSongList.append(melodifestivalenSwe)
                
                self.humTheSongList.append(y2000Swe)
                self.humTheSongList.append(hipHopRnB2SWE)
                self.humTheSongList.append(americanBandsSwe)
                self.humTheSongList.append(y2015Swe)
                self.humTheSongList.append(y50sSwe)
                self.humTheSongList.append(rock60sSew)
                self.humTheSongList.append(groups70sSwe)
                self.humTheSongList.append(europeanBandsSwe)
                self.humTheSongList.append(y60sSwe)
                
                self.humTheSongList.append(soloSingers80Swe)
                self.humTheSongList.append(y2017Swe)
                self.humTheSongList.append(girlGroupsSwe)
                self.humTheSongList.append(tvShowsSwe)
                self.humTheSongList.append(y2012Swe)
                self.humTheSongList.append(ukSingersSwe)
                self.humTheSongList.append(euroDance90Swe)
                self.humTheSongList.append(y2014Swe)
                self.humTheSongList.append(euroVision)
                self.humTheSongList.append(americanSoloSingersSwe)
                
                self.humTheSongList.append(duetsSwe)
                self.humTheSongList.append(colorSongsSwe)
                self.humTheSongList.append(y2008Swe)
                self.humTheSongList.append(europeanSoloArtistsSwe)
                self.humTheSongList.append(songsAboutUSASwe)
                self.humTheSongList.append(weddingSongsSwe)
                self.humTheSongList.append(y2011Swe)
                self.humTheSongList.append(femaleArtistSwe)
                self.humTheSongList.append(songsAboutFoodAndDrinksSwe)
                self.humTheSongList.append(y2013SWe)
                
                //Can you figure it out SWE (40)
                self.canYouFigureItOutList.append(merkelSwe)
                self.canYouFigureItOutList.append(eightSwe)
                self.canYouFigureItOutList.append(koranenSwe)
                self.canYouFigureItOutList.append(saxofonSwe)
                self.canYouFigureItOutList.append(northPoleSwe)
                self.canYouFigureItOutList.append(pudelSwe)
                self.canYouFigureItOutList.append(cocainSwe)
                self.canYouFigureItOutList.append(massling)
                self.canYouFigureItOutList.append(tigerSwe)
                self.canYouFigureItOutList.append(gtSwe)
                self.canYouFigureItOutList.append(bachSWe)
                self.canYouFigureItOutList.append(beiberSwe)
                self.canYouFigureItOutList.append(mosesSWe)
                self.canYouFigureItOutList.append(tintinSwe)
                self.canYouFigureItOutList.append(amsterdamSWe)
                self.canYouFigureItOutList.append(parmesanSwe)
                self.canYouFigureItOutList.append(goldSwe)
                self.canYouFigureItOutList.append(yearSwe)
                self.canYouFigureItOutList.append(austriaSWe)
                self.canYouFigureItOutList.append(statueOfLibertySwe)
                
                self.canYouFigureItOutList.append(bradPittSwe)
                self.canYouFigureItOutList.append(mauritiusSwe)
                self.canYouFigureItOutList.append(cockroachSwe)
                self.canYouFigureItOutList.append(russianRevoulutionSwe)
                self.canYouFigureItOutList.append(clothingSwe)
                self.canYouFigureItOutList.append(summerOlympicsAthensSWe)
                self.canYouFigureItOutList.append(teslaSwe)
                self.canYouFigureItOutList.append(u2Swe)
                self.canYouFigureItOutList.append(artistSwe)
                self.canYouFigureItOutList.append(deadSeaSwe)
                self.canYouFigureItOutList.append(madagaskarSwe)
                self.canYouFigureItOutList.append(emmaWatsonSwe)
                self.canYouFigureItOutList.append(barcelonaSwe)
                self.canYouFigureItOutList.append(historicalMomentSWe)
                self.canYouFigureItOutList.append(samsungSwe)
                self.canYouFigureItOutList.append(detroitSwe)
                self.canYouFigureItOutList.append(nobelSwe)
                self.canYouFigureItOutList.append(diorSwe)
                self.canYouFigureItOutList.append(JKRowlingSwe)
                self.canYouFigureItOutList.append(coffeeSwe)

                
                //Charades(40)
                self.charadeList.append(danceSwe)
                self.charadeList.append(socialMediaSwe)
                self.charadeList.append(hobbiesSwe)
                self.charadeList.append(stomachSWe)
                self.charadeList.append(summerOlympicsSwe)
                self.charadeList.append(safteySwe)
                self.charadeList.append(softSwe)
                self.charadeList.append(hygienSwe)
                self.charadeList.append(toolSwe)
                self.charadeList.append(stomachSWe)
                self.charadeList.append(professions2Swe)
                self.charadeList.append(marriageSwe)
                self.charadeList.append(winterOlympicsSwe)
                self.charadeList.append(everyDayLifeSwe)
                self.charadeList.append(unlikeableAnimalesSwe)
                self.charadeList.append(inTheBathSwe)
                self.charadeList.append(extremSportsSwe)
                self.charadeList.append(crimesSWe)
                self.charadeList.append(inTheFaceSwe)
                self.charadeList.append(gardenWorkSwe)
                
                self.charadeList.append(inSchoolSWe)
                self.charadeList.append(winterSwe)
                self.charadeList.append(italySwe)
                self.charadeList.append(lightsSwe)
                self.charadeList.append(morningSwe)
                self.charadeList.append(essentialSwe)
                self.charadeList.append(inTheCitySwe)
                self.charadeList.append(musicSwe)
                self.charadeList.append(nationalitiesSwe)
                self.charadeList.append(professions1Swe)
                self.charadeList.append(movieCharactersSwe)
                self.charadeList.append(treatmentsSwe)
                self.charadeList.append(inThePhoneSwe)
                self.charadeList.append(gymnasticsSwe)
                self.charadeList.append(hobbies2Swe)
                self.charadeList.append(painSwe)
                self.charadeList.append(atTheBeachSwe)
                self.charadeList.append(consertSwe)
                self.charadeList.append(snacksSwe)
                self.charadeList.append(famousAnimalsSwe)
                
                
            }
            if(LocalDataBase.cardDeck.contains(3)){
                
                if(CoreDataHandler.fetchWithOtherWords()?.count != 0){
                    addCoreDataToWithOtherWordsList()
                }
                else if(CoreDataHandler.fetchWithOtherWords()?.count == 0 && LocalDataBase.cardDeck.count == 1){
                    self.withOtherWordsList.append(tmpWithOtherWords)
                }
                
                if(CoreDataHandler.fetchCharades()?.count != 0){
                    addCoreDataToCharades()
                }
                else if(CoreDataHandler.fetchCharades()?.count == 0 && LocalDataBase.cardDeck.count == 1){
                    self.charadeList.append(tmpCharades)
                }
                
                if(CoreDataHandler.fetchCanYouFigureItOut()?.count != 0){
                    addCoreDataToCanYouFigureItOut()
                }
                else if(CoreDataHandler.fetchCanYouFigureItOut()?.count == 0 && LocalDataBase.cardDeck.count == 1){
                    self.canYouFigureItOutList.append(tmpCanYouFigureItOut)
                }
                
                
                if(CoreDataHandler.fetchHumTheSong()?.count != 0){
                    addCoreDataToHumTheSong()
                }
                else if(CoreDataHandler.fetchHumTheSong()?.count == 0 && LocalDataBase.cardDeck.count == 1){
                    self.humTheSongList.append(tmpHumTheSong)
                }
                
                if(CoreDataHandler.fetchTeamChallenge()?.count != 0){
                    addCoreDataToTeamChallenge()
                }
                else if(CoreDataHandler.fetchTeamChallenge()?.count == 0 && LocalDataBase.cardDeck.count == 1){
                    self.teamChallengeList.append(tmpTeamChallenge)
                }
                
            }
            
        }
        
        
        if(self.langStr != "sv"){
            if (LocalDataBase.cardDeck.contains(1)){
                
                // With other Words append ENG(15)
                self.withOtherWordsList.append(summer)
                self.withOtherWordsList.append(beers)
                self.withOtherWordsList.append(fastFoodRestaurans)
                self.withOtherWordsList.append(inYourHome)
                self.withOtherWordsList.append(legendaryWomens)
                self.withOtherWordsList.append(menOver50)
                self.withOtherWordsList.append(clothes2)
                self.withOtherWordsList.append(fictitiousPersons)
                self.withOtherWordsList.append(proffesions3)
                self.withOtherWordsList.append(criminals)
                self.withOtherWordsList.append(inTheBathRoom)
                self.withOtherWordsList.append(capitalCities)
                self.withOtherWordsList.append(inTheOcean)
                self.withOtherWordsList.append(sleep)
                self.withOtherWordsList.append(inTheForrest)
                
                
                //Can you figure it out ENG (15)
                self.canYouFigureItOutList.append(cangaru)
                self.canYouFigureItOutList.append(friends)
                self.canYouFigureItOutList.append(fotboll)
                self.canYouFigureItOutList.append(federer)
                self.canYouFigureItOutList.append(city1)
                self.canYouFigureItOutList.append(obama)
                self.canYouFigureItOutList.append(nyckelnTillFrihet)
                self.canYouFigureItOutList.append(uranus)
                self.canYouFigureItOutList.append(varldsdel)
                self.canYouFigureItOutList.append(indonesien)
                self.canYouFigureItOutList.append(bornInTheUSA)
                self.canYouFigureItOutList.append(cocaCola)
                self.canYouFigureItOutList.append(colosseum)
                self.canYouFigureItOutList.append(palmTree)
                self.canYouFigureItOutList.append(niagara)
                
                
                //Team Challenge ENG (15 st)
                self.teamChallengeList.append(cities1)
                self.teamChallengeList.append(physicalExercise1)
                self.teamChallengeList.append(cars)
                self.teamChallengeList.append(famousPersons)
                self.teamChallengeList.append(music2)
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
                
                
                
                //Charades ENG(15)
                self.charadeList.append(animales1)
                self.charadeList.append(sports2)
                self.charadeList.append(kitchen)
                self.charadeList.append(fruits)
                self.charadeList.append(movies)
                self.charadeList.append(vehicles)
                self.charadeList.append(electronics)
                self.charadeList.append(clothes)
                self.charadeList.append(nature)
                self.charadeList.append(animales2)
                self.charadeList.append(drinks)
                self.charadeList.append(italy)
                self.charadeList.append(furnitures)
                self.charadeList.append(commics)
                self.charadeList.append(foods)
                
                //HumTheSong(15)
                
                self.humTheSongList.append(first80)
                self.humTheSongList.append(hipHopRnB1)
                self.humTheSongList.append(beatles)
                self.humTheSongList.append(house)
                self.humTheSongList.append(disco)
                self.humTheSongList.append(classicRock)
                self.humTheSongList.append(loveSongs)
                self.humTheSongList.append(first70)
                self.humTheSongList.append(movieMusic)
                self.humTheSongList.append(chilldrensSongs)
                self.humTheSongList.append(country)
                self.humTheSongList.append(oneHitWonders)
                self.humTheSongList.append(first90s)
                self.humTheSongList.append(latinSongs)
                self.humTheSongList.append(summerSongs)

            }
            if(LocalDataBase.cardDeck.contains(2)){
                
                //WithOther words ENG(40)
                self.withOtherWordsList.append(famousWomenOver50)
                self.withOtherWordsList.append(inTheGroceryStore)
                self.withOtherWordsList.append(historicalPersons)
                self.withOtherWordsList.append(instrumentsHelp)
                self.withOtherWordsList.append(inSpace)
                self.withOtherWordsList.append(redStuffs)
                self.withOtherWordsList.append(theBible)
                self.withOtherWordsList.append(computerStorage)
                self.withOtherWordsList.append(waste)
                self.withOtherWordsList.append(dry)
                self.withOtherWordsList.append(actors)
                self.withOtherWordsList.append(best)
                self.withOtherWordsList.append(asianKitchen)
                self.withOtherWordsList.append(liquid)
                self.withOtherWordsList.append(moving)
                self.withOtherWordsList.append(traffic)
                self.withOtherWordsList.append(readable)
                self.withOtherWordsList.append(art)
                self.withOtherWordsList.append(western)
                self.withOtherWordsList.append(forKids)
                
                self.withOtherWordsList.append(environment)
                self.withOtherWordsList.append(walk)
                self.withOtherWordsList.append(sound)
                self.withOtherWordsList.append(economy)
                self.withOtherWordsList.append(cold)
                self.withOtherWordsList.append(inTheBody)
                self.withOtherWordsList.append(entrence)
                self.withOtherWordsList.append(valentinesDay)
                self.withOtherWordsList.append(party)
                self.withOtherWordsList.append(feuds)
                self.withOtherWordsList.append(sportPlaces)
                self.withOtherWordsList.append(kitchenSupplies)
                self.withOtherWordsList.append(vacation)
                self.withOtherWordsList.append(candy)
                self.withOtherWordsList.append(vegan)
                
                self.withOtherWordsList.append(americanSingers)
                self.withOtherWordsList.append(tvShowsWords)
                self.withOtherWordsList.append(beautifulNature)
                self.withOtherWordsList.append(personally)
                self.withOtherWordsList.append(spices)
                
                
                //TeamChallenge (40)
                self.teamChallengeList.append(soda)
                self.teamChallengeList.append(food)
                self.teamChallengeList.append(dogs)
                self.teamChallengeList.append(premierLeague)
                self.teamChallengeList.append(countriesOnB)
                self.teamChallengeList.append(moviesInNY)
                self.teamChallengeList.append(animalesWithoutTail)
                self.teamChallengeList.append(fatalities)
                self.teamChallengeList.append(musicGroups)
                self.teamChallengeList.append(math)
                self.teamChallengeList.append(physicalExercise2)
                self.teamChallengeList.append(celeberties)
                self.teamChallengeList.append(sleepyAnimales)
                self.teamChallengeList.append(lastNames)
                self.teamChallengeList.append(famousKids)
                self.teamChallengeList.append(islands)
                self.teamChallengeList.append(artists)
                self.teamChallengeList.append(physicalExercise5)
                self.teamChallengeList.append(ekvatorn)
                self.teamChallengeList.append(candyBars)
                
                self.teamChallengeList.append(shoes)
                self.teamChallengeList.append(mobilPhone)
                self.teamChallengeList.append(disney)
                self.teamChallengeList.append(newsPapers)
                self.teamChallengeList.append(airports)
                self.teamChallengeList.append(planets)
                self.teamChallengeList.append(fotboll2)
                self.teamChallengeList.append(skiResorts)
                self.teamChallengeList.append(musicals)
                self.teamChallengeList.append(physicalExercise3)
                self.teamChallengeList.append(yellowFruits)
                self.teamChallengeList.append(cityNames)
                self.teamChallengeList.append(flowers)
                self.teamChallengeList.append(head)
                self.teamChallengeList.append(theBody)
                self.teamChallengeList.append(countryNames)
                self.teamChallengeList.append(loveSongsTC)
                self.teamChallengeList.append(birds)
                self.teamChallengeList.append(physicalExercise4)
                self.teamChallengeList.append(f1)
            
                //Can you figure it out ENG (40)
                self.canYouFigureItOutList.append(tiger)
                self.canYouFigureItOutList.append(measles)
                self.canYouFigureItOutList.append(gt)
                self.canYouFigureItOutList.append(bach)
                self.canYouFigureItOutList.append(beiber)
                self.canYouFigureItOutList.append(merkel)
                self.canYouFigureItOutList.append(eight)
                self.canYouFigureItOutList.append(koranen)
                self.canYouFigureItOutList.append(saxofon)
                self.canYouFigureItOutList.append(northPole)
                self.canYouFigureItOutList.append(poodle)
                self.canYouFigureItOutList.append(cocain)
                self.canYouFigureItOutList.append(moses)
                self.canYouFigureItOutList.append(tintin)
                self.canYouFigureItOutList.append(amsterdam)
                
                self.canYouFigureItOutList.append(parmesan)
                self.canYouFigureItOutList.append(gold)
                self.canYouFigureItOutList.append(year)
                self.canYouFigureItOutList.append(austria)
                self.canYouFigureItOutList.append(statueOfLiberty)
                self.canYouFigureItOutList.append(bradPitt)
                self.canYouFigureItOutList.append(mauritius)
                self.canYouFigureItOutList.append(cockroach)
                self.canYouFigureItOutList.append(russianRevoulution)
                self.canYouFigureItOutList.append(clothing)
                self.canYouFigureItOutList.append(summerOlympicsAthens)
                self.canYouFigureItOutList.append(tesla)
                self.canYouFigureItOutList.append(u2)
                self.canYouFigureItOutList.append(artist)
                self.canYouFigureItOutList.append(deadSea)
                
                self.canYouFigureItOutList.append(madagaskar)
                self.canYouFigureItOutList.append(emmaWatson)
                self.canYouFigureItOutList.append(barcelona)
                self.canYouFigureItOutList.append(historicalMoment)
                self.canYouFigureItOutList.append(samsung)
                self.canYouFigureItOutList.append(detroit)
                self.canYouFigureItOutList.append(nobel)
                self.canYouFigureItOutList.append(dior)
                self.canYouFigureItOutList.append(JKRowling)
                self.canYouFigureItOutList.append(coffee)
                
                //Charades(40)
                self.charadeList.append(sports3)
                self.charadeList.append(music)
                self.charadeList.append(nationalities)
                self.charadeList.append(professions1)
                self.charadeList.append(professions2)
                self.charadeList.append(movieCharacters)
                self.charadeList.append(dance)
                self.charadeList.append(socialMedia)
                self.charadeList.append(stomach)
                self.charadeList.append(hobbies)
                
                self.charadeList.append(saftey)
                self.charadeList.append(marriage)
                self.charadeList.append(soft)
                self.charadeList.append(hygien)
                self.charadeList.append(tool)
                self.charadeList.append(summerOlympics)
                self.charadeList.append(winterOlympics)
                self.charadeList.append(yellowStuffs)
                self.charadeList.append(unlikeableAnimales)
                self.charadeList.append(inTheBath)
                
                self.charadeList.append(crimes)
                self.charadeList.append(inTheFace)
                self.charadeList.append(gardenWork)
                self.charadeList.append(inSchool)
                self.charadeList.append(winter)
                self.charadeList.append(lights)
                self.charadeList.append(morning)
                self.charadeList.append(essential)
                self.charadeList.append(inTheCity)
                self.charadeList.append(treatments)
                
                self.charadeList.append(inThePhone)
                self.charadeList.append(gymnastics)
                self.charadeList.append(hobbies2)
                self.charadeList.append(pain)
                self.charadeList.append(atTheBeach)
                self.charadeList.append(consert)
                self.charadeList.append(snacks)
                self.charadeList.append(famousAnimals)
                self.charadeList.append(everyDayLife)
                self.charadeList.append(extremSports)
                
              
                //HumTheSong(40)
                self.humTheSongList.append(first90s)
                self.humTheSongList.append(latinSongs)
                self.humTheSongList.append(summerSongs)
                self.humTheSongList.append(after2010)
                self.humTheSongList.append(second80)
                self.humTheSongList.append(second70)
                self.humTheSongList.append(hardRock)
                self.humTheSongList.append(y2016)
                self.humTheSongList.append(rockOf90s)
                self.humTheSongList.append(americanIdol)
                
                self.humTheSongList.append(duets)
                self.humTheSongList.append(y2000)
                self.humTheSongList.append(hipHopRnB2)
                self.humTheSongList.append(americanBands)
                self.humTheSongList.append(y2015)
                self.humTheSongList.append(y50s)
                self.humTheSongList.append(rock60s)
                self.humTheSongList.append(groups70s)
                self.humTheSongList.append(europeanBands)
                self.humTheSongList.append(y60s)
                
                self.humTheSongList.append(soloSingers80)
                self.humTheSongList.append(y2017)
                self.humTheSongList.append(girlGroups)
                self.humTheSongList.append(tvShows)
                self.humTheSongList.append(y2012)
                self.humTheSongList.append(ukSingers)
                self.humTheSongList.append(euroDance90)
                self.humTheSongList.append(y2014)
                self.humTheSongList.append(euroVision)
                self.humTheSongList.append(americanSoloSingers)
                
                self.humTheSongList.append(colorSongs)
                self.humTheSongList.append(y2008)
                self.humTheSongList.append(europeanSoloArtists)
                self.humTheSongList.append(songsAboutUSA)
                self.humTheSongList.append(weddingSongs)
                self.humTheSongList.append(y2011)
                self.humTheSongList.append(femaleArtist)
                self.humTheSongList.append(songsAboutFoodAndDrinks)
                self.humTheSongList.append(y2013)
                self.humTheSongList.append(y2009)
                
                
            }
            
            if(LocalDataBase.cardDeck.contains(3)){
     
                if(CoreDataHandler.fetchWithOtherWords()?.count != 0){
                    addCoreDataToWithOtherWordsList()
                }
                else if(CoreDataHandler.fetchWithOtherWords()?.count == 0 && LocalDataBase.cardDeck.count == 1){
                    self.withOtherWordsList.append(tmpWithOtherWords)
                }
                
                if(CoreDataHandler.fetchCharades()?.count != 0){
                    addCoreDataToCharades()
                }
                else if(CoreDataHandler.fetchCharades()?.count == 0 && LocalDataBase.cardDeck.count == 1){
                    self.charadeList.append(tmpCharades)
                }
                
                if(CoreDataHandler.fetchCanYouFigureItOut()?.count != 0){
                    addCoreDataToCanYouFigureItOut()
                }
                else if(CoreDataHandler.fetchCanYouFigureItOut()?.count == 0 && LocalDataBase.cardDeck.count == 1){
                    self.canYouFigureItOutList.append(tmpCanYouFigureItOut)
                }
                
                
                if(CoreDataHandler.fetchHumTheSong()?.count != 0){
                    addCoreDataToHumTheSong()
                }
                else if(CoreDataHandler.fetchHumTheSong()?.count == 0 && LocalDataBase.cardDeck.count == 1){
                    self.humTheSongList.append(tmpHumTheSong)
                }
                
                if(CoreDataHandler.fetchTeamChallenge()?.count != 0){
                    addCoreDataToTeamChallenge()
                }
                else if(CoreDataHandler.fetchTeamChallenge()?.count == 0 && LocalDataBase.cardDeck.count == 1){
                    self.teamChallengeList.append(tmpTeamChallenge)
                }
                
            }
        }
    }
    
    func checkIfCountIsMoreThenListSize(){
        if(LocalDataBase.withOtherWordsCount>self.withOtherWordsList.count-1){
            let _ = CoreDataHandler.upDateWithOtherWordsCount(withOtherWordsCount: CoreDataHandler.fetchWithOtherWordsCount()![0], index: 0)
            LocalDataBase.withOtherWordsCount = Int(CoreDataHandler.fetchWithOtherWordsCount()![0].index)
        }
        if(LocalDataBase.charadesCount>self.charadeList.count-1){
            let _ = CoreDataHandler.upDateCharadesCount(charadesCount: CoreDataHandler.fetchCharadesCount()![0], index: 0)
              LocalDataBase.charadesCount = Int(CoreDataHandler.fetchCharadesCount()![0].index)
        }
        if(LocalDataBase.teamChallengeCount>self.teamChallengeList.count-1){
            let _ = CoreDataHandler.upDateTeamChallengeCount(teamChallengeCount: CoreDataHandler.fetchTeamChallengeCount()![0], index: 0)
            LocalDataBase.teamChallengeCount = Int(CoreDataHandler.fetchTeamChallengeCount()![0].index)
        }
        if(LocalDataBase.canYouFigureItOutCount>self.canYouFigureItOutList.count-1){
            let _ = CoreDataHandler.upDateCanYouFigureItOutCount(canYouFigureItOutCount: CoreDataHandler.fetchCanYouFigureItOutCount()![0], index: 0)
            LocalDataBase.canYouFigureItOutCount = Int(CoreDataHandler.fetchCanYouFigureItOutCount()![0].index)
        }
        if(LocalDataBase.humTheSongCount>self.humTheSongList.count-1){
               let _ = CoreDataHandler.upDateHumTheSongCount(humTheSongCount: CoreDataHandler.fetchHumTheSongCount()![0], index: 0)
                LocalDataBase.humTheSongCount = Int(CoreDataHandler.fetchHumTheSongCount()![0].index)
        }
    }
    
    
    func addCoreDataToWithOtherWordsList(){
        if let words = CoreDataHandler.fetchWithOtherWords(){
            for word in words{
                let title = word.title
                let word1 = word.word1
                let word2 = word.word2
                let word3 = word.word3
                let word4 = word.word4
                let word5 = word.word5
                let newWord = withOtherWords(title: title!, firstWord: word1!, secondWord: word2!, thirdWord: word3!, fourthWord: word4!, fifthWord: word5!)
                withOtherWordsList.append(newWord)
            }
        }
    }
    
    func addCoreDataToCharades(){
        if let words = CoreDataHandler.fetchCharades(){
            for word in words{
                let title = word.title
                let word1 = word.word1
                let word2 = word.word2
                let word3 = word.word3
                let word4 = word.word4
                let word5 = word.word5
                let newWord = Charades(title: title!, firstWord: word1!, secondWord: word2!, thirdWord: word3!, fourthWord: word4!, fifthWord: word5!)
                charadeList.append(newWord)
            }
        }
    }
    
    func addCoreDataToHumTheSong(){
        if let words = CoreDataHandler.fetchHumTheSong(){
            for word in words{
                let title = word.title
                let word1 = word.word1
                let word2 = word.word2
                let word3 = word.word3
                let word4 = word.word4
                let word5 = word.word5
                let newWord = HumTheSong(title: title!, firstWord: word1!, secondWord: word2!, thirdWord: word3!, fourthWord: word4!, fifthWord: word5!)
                humTheSongList.append(newWord)
            }
        }
    }
    
    func addCoreDataToCanYouFigureItOut(){
        if let words = CoreDataHandler.fetchCanYouFigureItOut(){
            for word in words{
                let title = word.title
                let word1 = word.hint1
                let word2 = word.hint2
                let word3 = word.hint3
                let word4 = word.hint4
                let word5 = word.hint5
                let answer = word.answer
                let newWord = CanYouFigureItOut(title: title!, answer: answer!, firstWord: word1!, secondWord: word2!, thirdWord: word3!, fourthWord: word4!, fifthWord: word5!)
                canYouFigureItOutList.append(newWord)
            }
        }
    }
    
    func addCoreDataToTeamChallenge(){
        if let words = CoreDataHandler.fetchTeamChallenge(){
            for word in words{
                let title = word.title
                let word1 = word.challenge
                
                let newWord = TeamChallenge(title: title!, challenge: word1!)
                teamChallengeList.append(newWord)
            }
        }
    }
    
    
    
    
    // WithOtherWords Swe (55 + 1 tmp)
    let tmpWithOtherWords = withOtherWords(title: "Missing cards", firstWord: "No", secondWord: "With Other Words", thirdWord: "Card", fourthWord: "In", fifthWord: "Deck")
    let capitalCitiesSwe = withOtherWords(title: "Huvudstäder i Europa", firstWord: "Madrid", secondWord: "Warzava", thirdWord: "Lisabon", fourthWord: "Sofia", fifthWord: "Bucarest")
    let beersSwe = withOtherWords(title: "Ölmärken", firstWord: "Carlsberg", secondWord: "Heiniken", thirdWord: "Guiness", fourthWord: "Singha", fifthWord: "Red Label")
    let fastFoodRestauransSwe = withOtherWords(title: "Snabbmatsrestauranger", firstWord: "McDonalds", secondWord: "Burger King", thirdWord: "Subway", fourthWord: "KFC", fifthWord: "Pizza Hut")
    let inTheGroceryStoreSwe = withOtherWords(title: "I mataffären", firstWord: "Växelpengar", secondWord: "Kundvagn", thirdWord: "Flintastek", fourthWord: "Keso", fifthWord: "Mjölkförpackning")
    let inYourHomeSwe = withOtherWords(title: "I hemmet", firstWord: "Dörrklocka", secondWord: "Skohorn", thirdWord: "Sovrumslampa", fourthWord: "Disktrasa", fifthWord: "Parkettgolv")
    let iSverigeSwe = withOtherWords(title: "I Sverige", firstWord: "Gävlebocken", secondWord: "Statshuset", thirdWord: "Öresundsbron", fourthWord: "Kaknästornet", fifthWord: "Liseberg")
    let famousWomenOver50Swe = withOtherWords(title: "Kända kvinnor över 50", firstWord: "Madonna", secondWord: "Michelle Pfeiffer", thirdWord: "Lill-Babs", fourthWord: "Oprah Winfrey", fifthWord: "Janet Jackson")
    let legendaryWomensSwe = withOtherWords(title: "Legendariska kvinnor", firstWord: "Marie Curie", secondWord: "Rosa Parks", thirdWord: "Anne Frank", fourthWord: "Marlyn Monroe", fifthWord: "Moder Theresa")
    let historicalPersonsSwe = withOtherWords(title: "Historiska personer", firstWord: "Cleopatra", secondWord: "Judas", thirdWord: "Joan of Arc", fourthWord: "Alexander den store", fifthWord: "Napoleon")
    let menOver50Swe = withOtherWords(title: "Kända män över 50", firstWord: "Richard Gere", secondWord: "Bruce Springsteen", thirdWord: "Michael Jordan", fourthWord: "George Bush", fifthWord: "Bill Gates")
    let clothes2Swe = withOtherWords(title: "Klädmärken", firstWord: "Henry Lloyd", secondWord: "Peak Performance ", thirdWord: "Gucci ", fourthWord: "HM", fifthWord: "Nike")
    let fictitiousPersonsSwe = withOtherWords(title: "Fiktiva personer", firstWord: "Harry Potter", secondWord: "Alice i underlandet", thirdWord: "Rödluvan", fourthWord: "Tintin", fifthWord: "Sherlock Holmes")
    let proffesions3Swe = withOtherWords(title: "Yrken", firstWord: "Kassörska", secondWord: "Fönsterputsare", thirdWord: "Sömmerska", fourthWord: "Barberare", fifthWord: "Takläggare")
    let criminalsSwe = withOtherWords(title: "Brottslingar", firstWord: "Bonnie Parker", secondWord: "Pablo Escobar", thirdWord: "Clark Olofsson", fourthWord: "Joseph Fritzl", fifthWord: "Al Capone")
    let inTheBathRoomSwe = withOtherWords(title: "I badrummet", firstWord: "Shampoflaska", secondWord: "Toalettrulle", thirdWord: "Tandkrämstub", fourthWord: "Tvålkopp", fifthWord: "Deodorant")
    let summerSwe = withOtherWords(title: "På sommaren", firstWord: "Isglass", secondWord: "Sandstrand", thirdWord: "Sol", fourthWord: "Sandaler", fifthWord: "Myggbett")
    let inTheOceanSwe = withOtherWords(title: "I havet", firstWord: "Alg", secondWord: "Späckhuggare", thirdWord: "Undervattensström", fourthWord: "Bläckfisk", fifthWord: "Manet")
    let sleepSwe = withOtherWords(title: "Sömn", firstWord: "Kudde", secondWord: "Snarka", thirdWord: "Filt", fourthWord: "Sömnapné", fifthWord: "Mardröm")
    let inTheForrestSwe = withOtherWords(title: "I skogen", firstWord: "Myrstack", secondWord: "Mossa", thirdWord: "Gran", fourthWord: "Bark", fifthWord: "Harlort")
    let onTheCarSwe = withOtherWords(title: "Bilen", firstWord: "Motorhuv", secondWord: "Växelspak", thirdWord: "Kamrem", fourthWord: "Vindrutetorkare", fifthWord: "Rattmuff")
    let instrumentsHelpSWe = withOtherWords(title: "För instrument", firstWord: "Gitarrfodral", secondWord: "Trumpinne", thirdWord: "Plektrum", fourthWord: "Stråke", fifthWord: "Notställ")
    
    let inSpaceSwe = withOtherWords(title: "Rymden", firstWord: "Stjärnfall", secondWord: "Mars", thirdWord: "Svarta hål", fourthWord: "Måne", fifthWord: "Vintergatan")
    let redStuffsSwe = withOtherWords(title: "Röda saker", firstWord: "Hallon", secondWord: "Hjärta", thirdWord: "Blod", fourthWord: "Körsbär", fifthWord: "Tomater")
    let theBibleSwe = withOtherWords(title: "Bibeln", firstWord: "Moses", secondWord: "Judas", thirdWord: "Goliat", fourthWord: "Abraham", fifthWord: "Maria")
    let swedishSingersSwe = withOtherWords(title: "Svenska sångerskor", firstWord: "Zara Larsson", secondWord: "Eva Dahlgren", thirdWord: "Kicki Danielsson", fourthWord: "Linnea Henriksson", fifthWord: "Marie Fredriksson")
    let computerStorageSwe = withOtherWords(title: "Datalagring", firstWord: "Hårddisk", secondWord: "Server", thirdWord: "USB-minne", fourthWord: "Moln", fifthWord: "Databas")
    let wasteSwe = withOtherWords(title: "Avfall", firstWord: "Container", secondWord: "Soptipp", thirdWord: "Dammsugarpåsar", fourthWord: "Sopsortering", fifthWord: "Glasbank")
    let drySwe = withOtherWords(title: "Torrt", firstWord: "Regnrock", secondWord: "Disktrasa", thirdWord: "Stövlar", fourthWord: "Öken", fifthWord: "Blöja")
    let actorsSwe = withOtherWords(title: "Skådespelare", firstWord: "Kevin Spacey", secondWord: "Jessica Alba", thirdWord: "Emma Watson", fourthWord: "Brad Pitt", fifthWord: "Rachel McAdams")
    let bestSwe = withOtherWords(title: "Bäst!", firstWord: "Världsrekord", secondWord: "Guldmedalj", thirdWord: "Utklassning", fourthWord: "Segrare", fifthWord: "Oslagbar")
    let asianKitchenSwe = withOtherWords(title: "Asiatiska köket", firstWord: "Nudlar", secondWord: "Soja", thirdWord: "Vårrulle", fourthWord: "Lax-sushi", fifthWord: "Pad Thai")
    let liquidSwe = withOtherWords(title: "Flytande", firstWord: "Saltvatten", secondWord: "Mjölk", thirdWord: "Blod", fourthWord: "Saft", fifthWord: "Vodka")
    let movingSwe = withOtherWords(title: "Husköp", firstWord: "Flyttlåda", secondWord: "Hemnycklar", thirdWord: "Mäklare", fourthWord: "Inflyttning", fifthWord: "Ikea")
    let trafficSwe = withOtherWords(title: "I trafiken", firstWord: "Vägkorsning", secondWord: "Fartdåre", thirdWord: "Påfart", fourthWord: "Rondell", fifthWord: "Trafikljus")
    let readableSwe = withOtherWords(title: "Läsbart", firstWord: "Serietidning", secondWord: "Novell", thirdWord: "Roman", fourthWord: "Dagstidning", fifthWord: "Blogg")
    let artSwe = withOtherWords(title: "Konst", firstWord: "Tavelram", secondWord: "Skulptur", thirdWord: "Graffiti", fourthWord: "Akvarell", fifthWord: "Målarduk")
    let westernSwe = withOtherWords(title: "Vilda västern", firstWord: "Cowboyhat", secondWord: "Saloon", thirdWord: "Hälsporre", fourthWord: "Revolver", fifthWord: "Indian")
    let forKidsSwe = withOtherWords(title: "Kul för barn", firstWord: "Lekstuga", secondWord: "Lego", thirdWord: "Barnbok", fourthWord: "Barbie", fifthWord: "Kalas")
    let environmentSwe = withOtherWords(title: "Miljö", firstWord: "Bilpool", secondWord: "Återvinning", thirdWord: "Pantning", fourthWord: "Pappersinsamling", fifthWord: "Vattenkraftverk")
    let walkSwe = withOtherWords(title: "Promenad" , firstWord: "Vandringskängor", secondWord: "Gåstav", thirdWord: "Stig", fourthWord: "Spatsera", fifthWord: "Hajk")
    
    let royaltysSwe = withOtherWords(title: "Kungligheter", firstWord: "Prins Charles", secondWord: "Prinsessan Madeleine", thirdWord: "Mette Marit", fourthWord: "Karl XVI Gustav", fifthWord: "Margrethe II av Danmark")
    let soundSwe = withOtherWords(title: "Ljud", firstWord: "Podcast", secondWord: "Popradio", thirdWord: "Reklamjingel", fourthWord: "Musikal", fifthWord: "Hårdrockskonsert")
    let economySwe = withOtherWords(title: "Ekonomi", firstWord: "Spargris", secondWord: "Reporänta", thirdWord: "Courtage", fourthWord: "Lånelöfte", fifthWord: "Avkastning")
    let coldSwe = withOtherWords(title: "Kallt", firstWord: "Mjukglass", secondWord: "Snödriva", thirdWord: "Frost", fourthWord: "Igloo", fifthWord: "Isbit")
    let inTheBodySwe = withOtherWords(title: "I kroppen", firstWord: "Blodkroppar", secondWord: "Njursten", thirdWord: "Gallblåsa", fourthWord: "Tolvfingertarm", fifthWord: "Lårbenshals")
    let sparklingDrinksSwe = withOtherWords(title: "Kolsyrade drycker", firstWord: "Sockerdricka", secondWord: "Pepsi max", thirdWord: "Trocadero", fourthWord: "Ramlösa", fifthWord: "Hallonsoda")
    let entrenceSwe = withOtherWords(title: "Ingångar", firstWord: "Kattlucka", secondWord: "Bildörr", thirdWord: "Trädgårdsgrind", fourthWord: "Lönndörr", fifthWord: "Pärleporten")
    let valentinesDaySwe = withOtherWords(title: "Alla hjärtans dag", firstWord: "Kärleksfilm", secondWord: "Rosbukett", thirdWord: "Chokladpraliner", fourthWord: "Kyss", fifthWord: "Uppskattning")
    let partySwe = withOtherWords(title: "Fest", firstWord: "Disco-kula", secondWord: "Presentbord", thirdWord: "Liveband", fourthWord: "Champagneglas", fifthWord: "Mingel")
    let feudsSWe = withOtherWords(title: "Fejder", firstWord: "Snöbollskrig", secondWord: "Derby", thirdWord: "Syskonbråk", fourthWord: "Inbördeskrig", fifthWord: "Brotningsmatch")
    let sportPlacesSwe = withOtherWords(title: "Idrottsplatser", firstWord: "Ishockeyrink", secondWord: "Boxningsring", thirdWord: "Gymnastiksal", fourthWord: "Motionsspår", fifthWord: "Simhall")
    let kitchenSuppliesSwe = withOtherWords(title: "Köksredskap", firstWord: "Vattenkokare", secondWord: "Kavel", thirdWord: "Kaffebryggare", fourthWord: "Elvisp", fifthWord: "Centerlitermått")
    let vacationSwe = withOtherWords(title: "Semester", firstWord: "Paradisö", secondWord: "Djungelsafari", thirdWord: "Backpacking", fourthWord: "Charterresa", fifthWord: "Skidresa")
    let candySwe = withOtherWords(title: "Godis", firstWord: "Kolanappar", secondWord: "Snickers", thirdWord: "Hallonbåtar", fourthWord: "Skumbanan", fifthWord: "Gummibjörn")
    let veganSwe = withOtherWords(title: "Veganskt", firstWord: "Sojamjölk", secondWord: "Zucchini", thirdWord: "Quorn", fourthWord: "Bönor", fifthWord: "Paprika")
    
    
    
    // WithOtherWords ENG (50 )
    let capitalCities = withOtherWords(title: "Capitals in Europe", firstWord: "Madrid", secondWord: "Warzava", thirdWord: "Lisabon", fourthWord: "Sofia", fifthWord: "Bucarest")
    let beers = withOtherWords(title: "Beer Brands", firstWord: "Carlsberg", secondWord: "Heiniken", thirdWord: "Guiness", fourthWord: "Singha", fifthWord: "Red Label")
    let fastFoodRestaurans = withOtherWords(title: "Fast Food Restaurants", firstWord: "McDonalds", secondWord: "Burger King", thirdWord: "Subway", fourthWord: "KFC", fifthWord: "Pizza Hut")
    let inTheGroceryStore = withOtherWords(title: "In the grocery store", firstWord: "Shopping cart", secondWord: "Cucumber", thirdWord: "Milk pack", fourthWord: "Freezer", fifthWord: "Cottage cheese")
    let inYourHome = withOtherWords(title: "In your home", firstWord: "Doorbell", secondWord: "Shoehorn", thirdWord: "Bedroom lamp", fourthWord: "Dishcloth", fifthWord: "Parquet floor")
    let famousWomenOver50 = withOtherWords(title: "Famous women over 50", firstWord: "Madonna", secondWord: "Michelle Pfeiffer", thirdWord: "Barbara Bush", fourthWord: "Oprah Winfrey", fifthWord: "Janet Jackson")
    let legendaryWomens = withOtherWords(title: "Legendary women", firstWord: "Marie Curie", secondWord: "Rosa Parks", thirdWord: "Anne Frank", fourthWord: "Marlyn Monroe", fifthWord: "Mother Theresa")
    let historicalPersons = withOtherWords(title: "Historical persons", firstWord: "Cleopatra", secondWord: "Judas", thirdWord: "Joan of Arc", fourthWord: "Alexander the great", fifthWord: "Napoleon")
    let menOver50 = withOtherWords(title: "Famous men over 50", firstWord: "Richard Gere", secondWord: "Bruce Springsteen", thirdWord: "Michael Jordan", fourthWord: "George Bush", fifthWord: "Bill Gates")
    let clothes2 = withOtherWords(title: "Clothing Brands", firstWord: "Henry Lloyd", secondWord: "Peak Performance ", thirdWord: "Gucci ", fourthWord: "HM", fifthWord: "Nike")
    let fictitiousPersons = withOtherWords(title: "Fictional persons", firstWord: "Harry Potter", secondWord: "Alice in Wonderland", thirdWord: "Red Riding Hood", fourthWord: "Tintin", fifthWord: "Sherlock Holmes")
    let proffesions3 = withOtherWords(title: "Professions", firstWord: "Cashier", secondWord: "Window cleaner", thirdWord: "Judge", fourthWord: "Barber", fifthWord: "Carpet layers")
    let criminals = withOtherWords(title: "Criminals", firstWord: "Bonnie Parker", secondWord: "Pablo Escobar", thirdWord: "Baby Face Nelson", fourthWord: "Joseph Fritzl", fifthWord: "Al Capone")
    let inTheBathRoom = withOtherWords(title: "In the bathroom", firstWord: "Shampoo Bottle", secondWord: "Toilet Roll", thirdWord: "Toothpaste", fourthWord: "Soap", fifthWord: "Deodorant")
    let summer = withOtherWords(title: "Summertime", firstWord: "Popsicle", secondWord: "Beach", thirdWord: "Sunbeam", fourthWord: "Sandals", fifthWord: "Mosquito bite")
    let inTheOcean = withOtherWords(title: "In the ocean", firstWord: "Shark", secondWord: "Killer Whale", thirdWord: "Underwater current", fourthWord: "Octopus", fifthWord: "Jellyfish")
    let sleep = withOtherWords(title: "Sleeping", firstWord: "Pillow", secondWord: "Snore", thirdWord: "Blanket", fourthWord: "Sleep apnea", fifthWord: "Nightmare")
    let inTheForrest = withOtherWords(title: "In the forrest", firstWord: "Anthill", secondWord: "Moss", thirdWord: "Pine tree", fourthWord: "Leafs", fifthWord: "Bear")
    let instrumentsHelp = withOtherWords(title: "Instrument help", firstWord: "Guitar Case", secondWord: "Drumsticks", thirdWord: "Pick", fourthWord: "Bow", fifthWord: "Music Stand")
    
    
    let inSpace = withOtherWords(title: "In space", firstWord: "Shooting stars", secondWord: "Mars", thirdWord: "Black holes", fourthWord: "Moon", fifthWord: "Milky Way")
    let redStuffs = withOtherWords(title: "Red stuffs", firstWord: "Raspberry", secondWord: "Heart", thirdWord: "Blood", fourthWord: "Cherry", fifthWord: "Tomatoes")
    let theBible = withOtherWords(title: "The bible", firstWord: "Moses", secondWord: "Judas", thirdWord: "Goliat", fourthWord: "Abraham", fifthWord: "Maria")
    let computerStorage = withOtherWords(title: "Computer storage", firstWord: "Hard drive", secondWord: "Server", thirdWord: "USB-memory", fourthWord: "Cloud", fifthWord: "Database")
    let waste = withOtherWords(title: "Waste", firstWord: "Container", secondWord: "Dump", thirdWord: "Vacuum cleaner bags", fourthWord: "Recycling", fifthWord: "Broom")
    let dry = withOtherWords(title: "Dry", firstWord: "Raincoat", secondWord: "Dishcloth", thirdWord: "Rubber boots", fourthWord: "Desert", fifthWord: "Diaper")
    let actors = withOtherWords(title: "Actors", firstWord: "Kevin Spacey", secondWord: "Jessica Alba", thirdWord: "Emma Watson", fourthWord: "Brad Pitt", fifthWord: "Rachel McAdams")
    let best = withOtherWords(title: "The best!", firstWord: "World record", secondWord: "Gold medal", thirdWord: "Outstanding", fourthWord: "Winner", fifthWord: "Unbeatable")
    let asianKitchen = withOtherWords(title: "Asian kitchen", firstWord: "Noodles", secondWord: "Soya", thirdWord: "Spring roll", fourthWord: "Salmon-sushi", fifthWord: "Pad Thai")
    let liquid = withOtherWords(title: "Liquid", firstWord: "Saltwater", secondWord: "Milk", thirdWord: "Blood", fourthWord: "Lemonade", fifthWord: "Vodka")
    let moving = withOtherWords(title: "House purchase", firstWord: "Moving box", secondWord: "Home keys", thirdWord: "Real estate agent", fourthWord: "Occupancy", fifthWord: "Ikea")
    
    let traffic = withOtherWords(title: "In the traffic", firstWord: "Crossroad", secondWord: "Speed bump", thirdWord: "Ramp", fourthWord: "Roundabout", fifthWord: "Traffic lights")
    let readable = withOtherWords(title: "Readable", firstWord: "Comic book", secondWord: "Novel", thirdWord: "Tabloid", fourthWord: "Newspaper", fifthWord: "Blog")
    let art = withOtherWords(title: "Art", firstWord: "Picture frame", secondWord: "Skulpture", thirdWord: "Graffiti", fourthWord: "Watercolor", fifthWord: "Canvas")
    let western = withOtherWords(title: "Wild west", firstWord: "Cowboyhat", secondWord: "Saloon", thirdWord: "Heel spurs", fourthWord: "Revolver", fifthWord: "Indian")
    let forKids = withOtherWords(title: "Fun for the kids", firstWord: "Playhouse", secondWord: "Lego", thirdWord: "Children's Book", fourthWord: "Barbie", fifthWord: "Dolls")
    let environment = withOtherWords(title: "Environment", firstWord: "Car pool", secondWord: "Recycling", thirdWord: "Al Gore", fourthWord: "Kyoto Protocol", fifthWord: "Windmills")
    let walk = withOtherWords(title: "Walk" , firstWord: "Hiking boots", secondWord: "  Walking poles", thirdWord: "Path", fourthWord: "Saunter", fifthWord: "Hike")
   
    let sound = withOtherWords(title: "Sounds", firstWord: "Podcast", secondWord: "Popradio", thirdWord: "Advertising jingle", fourthWord: "Musical", fifthWord: "Hard Rock Concert")
    let economy = withOtherWords(title: "Economy", firstWord: "Piggy bank", secondWord: "Repo rate", thirdWord: "Courtage", fourthWord: "Loan commitment", fifthWord: "Return of investment")
    let cold = withOtherWords(title: "Cold", firstWord: "Popsicle", secondWord: "North Pole", thirdWord: "Frost", fourthWord: "Igloo", fifthWord: "Ice cube")
    let inTheBody = withOtherWords(title: "In the body", firstWord: "Blood cells", secondWord: "Kidney stone", thirdWord: "Gall bladder", fourthWord: "Duodenum", fifthWord: "Femoral")
    let entrence = withOtherWords(title: "Entrances", firstWord: "Cat door", secondWord: "Car door", thirdWord: "Garden gate", fourthWord: "Secret passage", fifthWord: "Pearly Gates")
    let valentinesDay = withOtherWords(title: "Valentine's Day", firstWord: "Romantic Movie", secondWord: "Rose bouquet", thirdWord: "Chocolates", fourthWord: "Kiss", fifthWord: "Appreciation")
    let party = withOtherWords(title: "Party", firstWord: "Disco-ball", secondWord: "Gift card", thirdWord: "Liveband", fourthWord: "Champagne glass", fifthWord: "Mingle")
    let feuds = withOtherWords(title: "Feuds", firstWord: "Snowball Fight", secondWord: "Derby", thirdWord: "Siblings argument", fourthWord: "Civil war", fifthWord: "Wrestling match")
    let sportPlaces = withOtherWords(title: "Sports arenas", firstWord: "Ice hockey rink", secondWord: "Boxing Ring", thirdWord: "Gym", fourthWord: "Jogging track", fifthWord: "Indoor pool")
    let kitchenSupplies = withOtherWords(title: "Kitchen supplies", firstWord: "Kettle", secondWord: "Rolling pin", thirdWord: "Coffee Maker", fourthWord: "Electric mixer", fifthWord: "Microwave")
    let vacation = withOtherWords(title: "Vacation resorts", firstWord: "Paradise Island", secondWord: "Jungle Safari", thirdWord: "Backpacking", fourthWord: "Charter", fifthWord: "Ski tripp")
    let candy = withOtherWords(title: "Candy", firstWord: "Scittles", secondWord: "Snickers", thirdWord: "Gummy bear", fourthWord: "M&M's", fifthWord: "Butterfinger")
    let vegan = withOtherWords(title: "Vegan", firstWord: "Soy milk", secondWord: "Zucchini", thirdWord: "Quorn", fourthWord: "Beans", fifthWord: "Paprika")
    
    let americanSingers = withOtherWords(title: "American singers", firstWord: "Willie Nelson", secondWord: "Frank Sinatra", thirdWord: "Eminem", fourthWord: "Elvis Presley", fifthWord: "Nat King Cole")
    let tvShowsWords = withOtherWords(title: "TV-shows", firstWord: "Narcos", secondWord: "The big bang theory", thirdWord: "Lost", fourthWord: "Prison break", fifthWord: "Modern family")
    let beautifulNature = withOtherWords(title: "Beautiful nature", firstWord: "Rainbow", secondWord: "Horizon", thirdWord: "Northern Lights", fourthWord: "Sunrise", fifthWord: "Shooting star")
    let personally = withOtherWords(title: "Personally", firstWord: "Phone number", secondWord: "Passport", thirdWord: "Finger prints", fourthWord: "Bank account", fifthWord: "DNA")
    let spices = withOtherWords(title: "Spices", firstWord: "Basil", secondWord: "Garlic powder", thirdWord: "Cinnamon", fourthWord: "Black pepper", fifthWord: "Spice chili")
    
    
    // Can you figure it out? (55 Swe + 1 tmp)
    let tmpCanYouFigureItOut = CanYouFigureItOut(title: "Missing cards", answer: "Missing card", firstWord: "No", secondWord: "Can you figure it out", thirdWord: "card", fourthWord: "in", fifthWord: "own deck")
    let federerSwe = CanYouFigureItOut(title: "Idrottare", answer: "Roger Federer", firstWord: "Föddes 8 Augusti, 1981", secondWord:"Säger att han har tre idoler: Boris Becker, Stefan Edberg och Pete Sampras" , thirdWord: "Har fått ett schweiziskt frimärke tryckt i sin ära", fourthWord: "Har vunnit alla de stora Grand Slam turneringarna", fifthWord: "Är den mest framgångsrika tennisspelaren i Schweiz historia")
    let stockholmSwe = CanYouFigureItOut(title: "Stad", answer: "Stockholm", firstWord: "Grundades 1252", secondWord:"Går också under namnet Nordens Venedig" , thirdWord: "Hem för Karl XVI Gustav", fourthWord: "Globen, Kaknästornet, och Vasa Museumet är kända platser i denna stad", fifthWord: "Sveriges huvudstad")
    let obamaSwe = CanYouFigureItOut(title: "Känd person", answer: "Barack Obama", firstWord: "Har gett ut en självbiografi med titeln ”Min far hade en dröm”", secondWord: "Har tilldelats Nobels fredspris", thirdWord: "Föddes 4 augusti 1961 på Hawaii ", fourthWord: "Är gift med Michelle och har döttrarna Malia och Sasha ", fifthWord: "Valdes 2008 in som USAs 44e president.")
    let nyckelnTillFrihetSwe = CanYouFigureItOut(title: "Film", answer: "Nyckeln till frihet", firstWord: "Filmmusiken gjordes av Thomas Newman", secondWord: "Var inledningsvis ingen ekonomisk succé. Mycket på grund av konkurrens från filmer som Pulp Fiction och Forrest Gump.", thirdWord: " Baserad på en roman av Stephan King", fourthWord: "Filmens huvudkaraktärer spelas av Tim Robbins och Morgan Freeman", fifthWord: "Berättar historien om Andy Dufrense, som döms mot sitt nekande till livstids fängelse för mordet på sin fru och hennes älskare.")
    let friendsSwe = CanYouFigureItOut(title: "TV-serie", answer: "Friends", firstWord: "Serien kallades från början Insomnia Cafe, innan namnet byttes", secondWord: "Serien har haft gästskådespelare som exempelvis George Clooney and Christina Applegate", thirdWord: "Serien är skapad av David Crane och Marta Kauffman", fourthWord: "En stor del av handlingen utspelar sig på cafét Central Perk", fifthWord: "Serien handlar om 6 vänner som bor i new york")
    let uranusSwe = CanYouFigureItOut(title: "Planet", answer: "Uranus", firstWord: "Upptäcktes 1781 av William Herschel", secondWord: "Planetens diameter är ca 4 gånger större än Jordens", thirdWord: "Det tar 84 år för planeten att fullborda ett varv runt solen", fourthWord: "Planeten har i dagsläget tjugosju bekräftade månar, varav de fem största heter Miranda, Ariel, Umbriel, Titania och Oberon", fifthWord: "Är den sjunde planeten från solen och har ungefär samma storlek som Neptunus ")
    let varldsdelSwe = CanYouFigureItOut(title: "Världsdel", answer: "Sydamerika", firstWord: "Storleken på världsdelen upptar 3,5 procent av jordens yta", secondWord: "Det bor ca 420 miljoner människor i denna världsdel", thirdWord: "Här finns världens högsta vattenfall, Angel Fall", fourthWord: "Består av 12 länder", fifthWord: "Två kända städer i denna världsdel är Santiago och Caracas ")
    let indonesienSwe = CanYouFigureItOut(title: "Land", answer: "Indonesien", firstWord: "Har världens största muslimska befolkning", secondWord: "Det asiatiska landet blev erkänt självständigt från Nederländerna 1949", thirdWord: "Landet består av över 13 000 öar och 33 provinser", fourthWord: "Landet gränsar till Papua Nya Guinea, Östtimor och Malaysia", fifthWord: "Huvudstaden heter Jakarta ")
    let bornInTheUSASWe = CanYouFigureItOut(title: "Musik-album", answer: "Born in the USA", firstWord: "Musiktidskriften Rolling Stone rankade albumet som nummer 85 på sin lista The 500 Greatest Albums of All Time.", secondWord: "Detta rockalbum gavs ut 1984", thirdWord: "Titellåten handlar om Vietnamveteraner som glömts bort av samhället i USA.", fourthWord: "Kända låtar på albumet är Dancing in the dark och I Surrernder.", fifthWord: "Artisten är Bruce Springsteen och albumet heter likadant som den första singeln på skivan")
    let cocaColaSwe = CanYouFigureItOut(title: "Företag", answer: "Coca Cola", firstWord: "Hade 2017, 100 300 anställda och omsatte 41,8 miljarder dollar", secondWord: "Företaget grundades 1892 av Asa Griggs Candler", thirdWord: "Produkten består av ett hemligt recept som förvaras i ett bankvalv i Atlanta", fourthWord: "Deras slogan är ”Taste the feeling”", fifthWord: "Har förutom huvudprodukten även Fanta och Sprite i sortimentet")
    let colosseumSwe = CanYouFigureItOut(title: "Sevärdhet", answer: "Colosseum", firstWord: "Ett talesätt hos folket i det här landet vid korsdrag inomhus är ”Stäng dörren, du är inte i ***”", secondWord: "Höjden på sevärdheten är 48 meter", thirdWord: "En sida av sevärdheten raserades vid en jordbävning år 1349", fourthWord: "Sevärdheten ligger i Rom och lät byggas av kejsare Titus Vespasianus", fifthWord: "En central plats i filmen Gladiator")
    let palmSwe = CanYouFigureItOut(title: "Växt", answer: "Palm", firstWord: "Är en familj enhjärtbladiga växter och den enda familjen i ordningen Arecales ", secondWord: "Förekommer som vildväxande nästan enbart i världens tropiska och subtropiska områden.", thirdWord: " Från den här växten utvinns en olja som ofta kritiseras av miljöskäl, då avverkning av regnskog sker i stor skala", fourthWord: "Växten syns ofta på paradisstränder ", fifthWord: "På den här växten växer det kokosnötter")
    let niagaraSwe = CanYouFigureItOut(title: "Natur", answer: "Niagara Fallen", firstWord: "Upptäcktes på 1600-talet av Louis Hennepin", secondWord: "Bredden på detta är 1203m", thirdWord: "Här finns ett minnesmärke över Nikola Tesla, som var den förste att utvinna elektrisk energi härifrån", fourthWord: "Består av tre fall", fifthWord: "Ett vattenfall som gränsar mellan Kanada och USA")
    let cangaruSwe = CanYouFigureItOut(title: "Djur", answer: "Kängru", firstWord: "Djuret är växtätare och är vanligen aktiva på natten eller skymningen.", secondWord: "Pälsens färg är ofta enhetligt grå- eller brunaktig. Svansen är lång, stark och huvudsakligen hårbeklädd.", thirdWord: "Djuret förekommer i Australien och på Nya Guinea samt på kringliggande öar som Tasmanien.", fourthWord: "Deras baktassar är betydligt större än de främre. Djuret är kanske som mest känd för sitt skuttande och hoppande när de ska ta sig framåt.", fifthWord: "Är ett pungdjur. Honan föder och förvarar sina ungar i sin pung tills ungen blir ungefär ett halvår gammal")
    let fotbollSwe = CanYouFigureItOut(title: "Sport", answer: "Fotboll", firstWord: "En känd legend inom denna idrott är Carlos Alberto", secondWord: "En känd aktiv spelare är Carli Lloyd", thirdWord: "En annan är målvakten Hugo Lloris", fourthWord: "Marta har dominerat denna sport på damsidan under många år.", fifthWord: "På herrsidan är Messi och Ronaldo de starkast lysande stjärnorna")
    let massling = CanYouFigureItOut(title: "Sjukdom", answer: "Mässling", firstWord: "Sjukdomen orsakas av ett virus i morbillisläktet. Viruset sprids främst i droppform via luften", secondWord: "Hos vuxna är det en farlig sjukdom som obehandlad kan leda till döden", thirdWord: "Sjukdomen är den med vaccin förebyggbara sjukdom som orsakar mest dödsfall i världen. Främst i fattiga länder i Afrika", fourthWord: "Sjukdomen är ovanlig i Sverige tack vare den allmänna vaccinationen  som sker med en första dos vid 1,5 års ålder och en andra dos i samband med skolstarten", fifthWord: "Sjukdomen är en virussjukdom som orsakar infektioner i luftvägarna och röda hudutslag")
    let tigerSwe = CanYouFigureItOut(title: "Djur", answer: "Tiger", firstWord: "Djuret lever endast i Asien ", secondWord: "Den jagar ensam och äter främst medelstora djur ur familjerna svindjur och hjortdjur", thirdWord: "Djuret är det största nu levande kattdjuret.", fourthWord: "I tempererade löv- och barrskogar utgör pälsens mönster bra kamouflage", fifthWord: "Namnet på djuret härstammar från det grekiska ordet tigris")
    let gtSwe = CanYouFigureItOut(title: "Drink", answer: "Gin and tonic", firstWord: "Ursprunget till drinken sägs vara att brittiska soldater i Indien fick idén att ta den mycket beskt smakande malariamedicinen utspädd med sockervatten och denna dryck i syfte att göra intaget mer njutbart", secondWord: "Mycket populärt i Spanien, där det i storstäderna inte är ovanligt med barlokaler som enbart serverar olika varianter av denna dryck.", thirdWord: "Serveras traditionellt i ett highballglas med isbitar och en skiva citron eller lime", fourthWord: "Innehåller endast två huvudingredienser", fifthWord: "Varianter förekommer, exempelvis Turbo G&T (eller Cold Brew G&T)")
    let bachSWe = CanYouFigureItOut(title: "Kompositör", answer: "Bach", firstWord: "Han har kallats för ”Den femte evangelisten”", secondWord: "Är en av barockens stora", thirdWord: "Föddes i Tyskland 1685", fourthWord: "Räknas som orgelns mästare", fifthWord: "Hans förnamn är Johann Sebastian ")
    let beiberSwe = CanYouFigureItOut(title: "Popsångare", answer: "Justin Bieber", firstWord: "Upptäckes av Scooter Braun, som senare blev personens manager", secondWord: "Är kanadensare", thirdWord: "Föddes 1994", fourthWord: "Har varit tillsammans med Selena Gomez", fifthWord: "Är känd för låtar som ’Favorite Girl’ och Baby’")
    
    let merkelSwe = CanYouFigureItOut(title: "Politiker", answer: "Angela Merkel", firstWord: "Personen har en doktorsexamen i kvantkemi", secondWord: "Hon föddes 1954", thirdWord: "Hon rankades 2011 som världens näst mäktigaste person av tidningen Forbes", fourthWord: " Är kristdemokrat", fifthWord: "Hon blev Tysklands åttonde förbundskansler")
    let eightSwe = CanYouFigureItOut(title: "En siffra", answer: "8", firstWord: "Syre har den här positionen i det periodiska systemet", secondWord: "Är ett japanskt och kinesiskt lyckotal och kallas pånyttfödelsens tal.", thirdWord: "Siffran heter octo på latin", fourthWord: " Skrevs som VIII i antika Rom", fifthWord: "Bokstaven H kommer på denna plats i alfabetet")
    let koranenSwe = CanYouFigureItOut(title: "En bok", answer: "Koranen", firstWord: "Kallas även den ädla recitationen", secondWord: "Innehåller 114 suror", thirdWord: "Skrevs på arabiska", fourthWord: "Består av profeten Muhammeds uppenbarelser", fifthWord: "Är muslimernas heliga skrift")
    let saxofonSwe = CanYouFigureItOut(title: "Instrument", answer: "Saxofon", firstWord: "Är ett träblåsinstrument", secondWord: "Kända artister som spelar detta instrument är Charles Parker och Stanley Getz", thirdWord: "Bill Clinton spelar detta instrument", fourthWord: "Är vanligt inom jazzen", fifthWord: "Instrumentet namngavs av Adolphe Sax")
    let northPoleSwe = CanYouFigureItOut(title: "En plats", answer: "Nordpolen", firstWord: "Det närmaste landområdet heter Kaffeklubben", secondWord: "Den svenske ingenjören Andrée gjorde ett misslyckat försök att nå denna plats med luftballong.", thirdWord: "Under hela sommaren är det midnattssol här.", fourthWord: "Platsen ligger mitt i Arktis ", fifthWord: "Den nordligaste av jordens poler")
    let pudelSwe = CanYouFigureItOut(title: "En hundras", answer: "Pudel", firstWord: "Finns i fyra olika storlekar", secondWord: "Hundrasen härstammar från Frankrike" , thirdWord: "Är den tredje populäraste hundrasen i världen", fourthWord: "Den har ullig päls", fifthWord: "Ska helst vara lejonklippt")
    let cocainSwe = CanYouFigureItOut(title: "En drog", answer: "Kokain", firstWord: "Är ett centralstimulerande preparat", secondWord: "Dyr och extremt beroendeframkallande drog", thirdWord: "Pablo Escobar exporterade denna drog från Colombia", fourthWord: "Är uppiggande, hungerdämpande och snortas genom näsan", fifthWord: "Utvinns från bladen i koka-busken")
    
    let mosesSWe = CanYouFigureItOut(title: "En biblisk figur", answer: "Moses", firstWord: "Levde ungefär 1300 år före Kristus", secondWord: "Gifte sig med Sippora som var dotter till prästen Jetro", thirdWord: "Växte upp i Egypten", fourthWord: "Hittades i vassen av Faraos dotter", fifthWord: "Hans hebreiska namn är Moshe")
    let tintinSwe = CanYouFigureItOut(title: "En seriefigur", answer: "Tintin", firstWord: "Publicerades för första gången 1929", secondWord: "Skapades av Hergé", thirdWord: "Figuren arbetar som journalist", fourthWord: "Har hunden Milou", fifthWord: "Är vän med Kapten Haddock")
    let amsterdamSWe = CanYouFigureItOut(title: "En huvudstad", answer: "Amsterdam", firstWord: "Är en viktig sjöfartsstad i Europa", secondWord: "Här ligger Rembrandts hus", thirdWord: "Utanför staden ligger flygplatsen Schiphol", fourthWord: "Belägen vid floden Amstels utlopp", fifthWord: "Huvudstad i Nederländerna")
    let parmesanSwe = CanYouFigureItOut(title: "En ost", answer: "Parmesan", firstWord: "Är den äkta ska den vara stämplad i skalken med svarta bokstäver", secondWord: "Orginalet är italienskt", thirdWord: "Hårdosten lagras normalt mellan 22 och 36 månader.", fourthWord: "Äts ofta riven", fifthWord: "Själva ordet betyder ”från Parma”")
    let goldSwe = CanYouFigureItOut(title: "Ett grundämne", answer: "Guld", firstWord: "En ädelmetall", secondWord: "Det latinska ordet är ”Aurum”", thirdWord: "Ligger som korn i berggrund", fourthWord: "Den mest formbara och dyra metallen", fifthWord: "Segrare i OS tilldelas denna typ av medalj")
    let yearSwe = CanYouFigureItOut(title: "Ett årtal", answer: "2009", firstWord: "U2 släpper albumet ”No Line on the Horizon”", secondWord: "Australien härjas av allvarliga skogsbränder", thirdWord: "Gaza-kriget härjar", fourthWord: "Avatar har världspremiär på bio", fifthWord: "Barack Obama blir USA:s president")
    let austriaSWe = CanYouFigureItOut(title: "Ett land", answer: "Österrike", firstWord: "Landsnumret är 43", secondWord: "En inlandsstat i Centraleuropa vid floden Donau", thirdWord: "Bokstaven A är landets nationalitetsmärke", fourthWord: "Hitler föddes i detta land", fifthWord: "Huvudstaden heter Wien")
    let statueOfLibertySwe = CanYouFigureItOut(title: "En present", answer: "Frihetsgudinnan", firstWord: "Presenten designades av skulptören Auguste Bartholdi", secondWord: "En staty som håller i en tavla med inskriften ”July IV MDCCLXXVI", thirdWord: "Var en gåva till USA från Frankrike", fourthWord: "En staty av en kvinna och är en symbol för frihet", fifthWord: "Står på en ö som tillhör New Jersey")
    let bradPittSwe = CanYouFigureItOut(title: "En skådespelare", answer: "Brad Pitt", firstWord: "Enligt Empire Magazine är han en av filmhistoriens snyggaste män", secondWord: "Föddes 18 december 1963 i Shawnee, Oklahoma", thirdWord: "Är en hängiven flerbarnspappa", fourthWord: "Har varit gift med Jennifer Aniston", fifthWord: "Spelade mot sin blivande fru  Angelina Jolie i ”Mr. & Mrs Smith”")
    let mauritiusSwe = CanYouFigureItOut(title: "Ett semesterparadis", answer: "Mauritius", firstWord: "På ön talas officiellt engelska men även kreol, franska och hindu", secondWord: "Upptäcktes av portugiserna 1505, flaggan är röd, blå, gul och grön", thirdWord: "Huvudstaden heter Port Louis", fourthWord: "Ligger öster om Madagaskar", fifthWord: "Invånarna här kallas mauritier")
    let cockroachSwe = CanYouFigureItOut(title: "Insekt", answer: "Kackerlacka", firstWord: "Det finns ca fyra tusen arter", secondWord: "De är vakna på natten och gömmer sig i mörka vrår på dagtid", thirdWord: "De trivs bäst i varmare klimat", fourthWord: "Har platt, oval, brunaktig kropp och antenner", fifthWord: "Det har gjorts en tecknad serie om detta djur som heter: ”Oggy och ...”")
    let russianRevoulutionSwe = CanYouFigureItOut(title: "En revolution", answer: "Ryska revolutionen", firstWord: "Inleddes med att arbetarna slog sig ihop med soldaterna", secondWord: "Året var 1917", thirdWord: "Ledde till Nikolaj II:s abdikation", fourthWord: "Bolsjekvikerna tog över efter revolutionen", fifthWord: "Efteråt bildades Sovjetunionen")
    let clothingSwe = CanYouFigureItOut(title: "Ett klädesplagg", answer: "T-shirt", firstWord: "Plagget blev populärt på 1950-talet", secondWord: "Bärs på överkroppen och är ofta gjort i bomull", thirdWord: "Tros ha utvecklats som undertröja för amerikanska armén", fourthWord: "Har fått sitt namn efter en bokstav", fifthWord: "Formen på tröjan liknare ett T")
    let summerOlympicsAthensSWe = CanYouFigureItOut(title: "Ett OS-spel", answer: "Aten 2004", firstWord: "Ett sommar OS USA vann medaljligan med 35 guld", secondWord: "Hölls i ett europeiskt land som tidigare varit värd", thirdWord: "Michael Phelps tog åtta medaljer, varav 6 guld", fourthWord: "Marathonloppet sprangs från just staden Marathon", fifthWord: "Hölls i Greklands huvudstad 108 år efter det första OS-spelen hölls på samma plats")
    let teslaSwe = CanYouFigureItOut(title: "Ett bilmärke", answer: "Tesla", firstWord: "Grundades 2003", secondWord: "Den första modellen hette Roadster", thirdWord: "Grundaren av företaget heter Elon Musk", fourthWord: "Den mest sålda modellen heter Model S", fifthWord: "Ett amerikanskt märke som tillverkar elbilar")
    let u2Swe = CanYouFigureItOut(title: "En musikgrupp", answer: "U2", firstWord: "En rockgrupp som bildades 1976", secondWord: "Initiativet togs av trummisen Larry Mullen Jr ", thirdWord: "Har släppt skivor som The Joshua Tree och Achtung Baby", fourthWord: "Sångaren går under artistnamnet Bono", fifthWord: "Några av bandets låtar heter One, With or Without You och Beautiful Day")
    let artistSwe = CanYouFigureItOut(title: "Konstnär", answer: "Vincent van Gogh", firstWord: "Karaktäriseras av djärva, symboliska färger och dramatiska, impulsiva och uttrycksfulla penseldrag", secondWord: "Han begicksjälvmord vid en ålder av 37 år.", thirdWord: "Sålde endast en tavla under sin livstid", fourthWord: "Föddes 1853 i Nederländerna", fifthWord: "Skar i ett vredesutbrott av en bit av sitt vänstra öra")
    let deadSeaSwe = CanYouFigureItOut(title: "Ett vattendrag", answer: "Döda havet", firstWord: "Det finns bara ett utflöde och det är avdunstning", secondWord: "Det är en sjö men kallas för hav", thirdWord: "Ligger i länderna Jordanien och Israel", fourthWord: "Har en salthalt på 33,7 procent", fifthWord: "Namnet har uppkommit eftersom inga djur kan överleva i detta vatten")
    let madagaskarSwe = CanYouFigureItOut(title: "Ö", answer: "Madagaskar", firstWord: "Språken som talas på denna ö är franska och malagassiska", secondWord: "Ön är världens fjärde största", thirdWord: "Huvudstaden på denna ö/stat är Antananarivo", fourthWord: "Ligger i indiska oceanen utanför Afrikas kust", fifthWord: "En animerad långfilm kom ut 2005 med samma namn som denna ö")
    let emmaWatsonSwe = CanYouFigureItOut(title: "Skådespelerska", answer: "Emma Watson", firstWord: "Hon föddes 1990 i Paris", secondWord: "Jobbar även som modell och är Burberrys ansikte utåt", thirdWord: "Har visat ett stort engagemang för jämställdhetsfrågor", fourthWord: "Är känd för filmer som The Perks of Being a Wallflower och The Bling Ring", fifthWord: "Hennes största roll är som Hermione Granger i Harry Potter-filmerna")
    let barcelonaSwe = CanYouFigureItOut(title: "Idrottslag", answer: "FC Barcelona", firstWord: "Klubben grundades 1899", secondWord: "Fotbollslagets hemmaställ är rött och blått", thirdWord: "Spelar på Camp Nou", fourthWord: "Har vunnit La Liga 23 gånger (2018)", fifthWord: "Lagets stjärnor är bland annat Lionell Messi och Luis Suárez")
    let historicalMomentSWe = CanYouFigureItOut(title: "Historiskt ögnblick", answer: "Titanics undergång", firstWord: "Officiellt omkom 1514 personer under denna händelse", secondWord: "Denna händelse inträffade den 10e april 1912", thirdWord: "Har efteråt filmatiserats av James Cameron", fourthWord: "I filmen spelar Kate Winslet och Leonardo DiCaprio", fifthWord: "Detta fartyg sjönk i atlanten efter att ha kört kolliderat med ett isberg")
    let samsungSwe = CanYouFigureItOut(title: "Teknikjätte", answer: "Samsung", firstWord: "Företaget ägnade sig från början åt livsmedelshandel och produktion av nudlar)", secondWord: "Företaget grundades 1938 av Lee Byung-chul", thirdWord: "Högkvarteret ligger in Seoul, Sydkorea", fourthWord: "Är världsledande i mobiltelefonförsäljning", fifthWord: "Flera av företagets mobiltelefonmodeller heter Galaxy")
    let detroitSwe = CanYouFigureItOut(title: "Amerikansk stad", answer: "Detroit", firstWord: "Är en av USA:s största inlandshamnar och har förbindelse med Atlanten via Saint Lawrenceleden", secondWord: "Stadens befolkning har sjunkit med en tredjedel de senaste femtio åren på grund av få arbetstillfällen", thirdWord: "Staden kallas även för motorstaden och är centrum för den amerikanska bilindustrin", fourthWord: "Stadens hockeylag heter Red Wings", fifthWord: "Är den största staden i Michigan")
    let nobelSwe = CanYouFigureItOut(title: "Uppfinnare", answer: "Alfred Nobel", firstWord: "Har en gata i Paris och en skola i Chicago namngivna i hans ära", secondWord: "Föddes i Stockholm 1833", thirdWord: "Hyllade freden, något motsägelsefullt med tanke på hans kändaste uppfinning", fourthWord: "Uppfann dynamiten", fifthWord: "Ett pris delas ut i hans namn varje år inom fysik, kemi, medicin, litteratur och fredsarbete")
    let diorSwe = CanYouFigureItOut(title: "Modeskapare", answer: "Christian Dior", firstWord: "Föddes i Frankrike 1905", secondWord: "Grundade 1946 sitt eget modevaruhus med samma namn som hans efternamn", thirdWord: "Är främst känd för 'The new look'", fourthWord: "Företaget, som också heter likadant som hans efternamn, anses vara ett av de lyxigare klädmärkena", fifthWord: "Sortimentet består bland annat av skor, solglasögon, parfymer och handväskor")
    let JKRowlingSwe = CanYouFigureItOut(title: "Författare", answer: "JK Rowling", firstWord: "Författaren gav 2012 ut sin första vuxenbok under pseudonymen Robert Galbraith", secondWord: "Hennes böcker har sålts i över 450 miljoner exemplar och översatts till 73 språk", thirdWord: "Hennes kändaste böcker har filmatiseras i åtta olika filmer", fourthWord: "I hennes kändaste bokserie kan man bland annat följa Professor Snape och Rubeus Hagrid", fifthWord: "Huvudkaraktären i hennes böcker är Harry Potter")
    let coffeeSwe = CanYouFigureItOut(title: "Dryck", answer: "Kaffe", firstWord: "Finländare och svenskar är de nationaliteter som dricker mest av denna dryck", secondWord: "Denna dryck har sitt ursprung i Etiopien", thirdWord: "Drycken är världens näst mest handlade vara efter olja", fourthWord: "Drycken tillverkas genom att mala denna typ av böna och blanda med varmt vatten", fifthWord: "Denna svarta dryck innehåller oftast koffein och blandas inte sällan med mjölk.")
    
    // Can you figure it out ENG(55)
    let city1 = CanYouFigureItOut(title: "City", answer: "Stockholm", firstWord: "Was founded 1252", secondWord:"Also goes by the name: Venice of the North" , thirdWord: "Home of Karl XVI Gustav", fourthWord: "Globen, Kaknästornet, and Vasa Museum are famous places in this city", fifthWord: "The Capital of Sweden")
    let federer = CanYouFigureItOut(title: "Athlete", answer: "Roger Federer", firstWord: "Was born 8 August, 1981", secondWord:"Says he has three idols; Boris Becker, Stefan Edberg and Pete Sampras" , thirdWord: "Has had a Swiss Post stamp issued in his honour ", fourthWord: "Has won all four Major Tennis Tournament", fifthWord: "Is the most successful tennis player in Switzerland history")
    let obama = CanYouFigureItOut(title: "Famous person", answer: "Barack Obama", firstWord: "Has published an autobiography entitled ”My father had a dream”", secondWord: "Has been awarded the Nobel Peace Prize", thirdWord: "Was Born August 4, 1961 in Hawaii", fourthWord: "Married to Michelle and has daughters Malia and Sasha", fifthWord: "Was elected as the 44th American president in 2008")
    let nyckelnTillFrihet = CanYouFigureItOut(title: "Movie", answer: "The Shawshank Redemption", firstWord: "The film music was made by Thomas Newman", secondWord: "Initially, there was no financial success. Much because of competition from films like Pulp Fiction and Forrest Gump", thirdWord: "Based on a novel by Stephan King", fourthWord: "The film's main characters are played by Tim Robbins and Morgan Freeman", fifthWord: "Tells the story of Andy Dufresne, sentenced to to life imprisonment for the murder of his wife and her lover, despite his denial")
    let friends = CanYouFigureItOut(title: "TV-show", answer: "Friends", firstWord: "The show was initially called Insomnia Cafe, before the name was changed", secondWord: "The show had guest actors such as George Clooney and Christina Applegate", thirdWord: "The show was created by David Crane and Marta Kauffman", fourthWord: "A large part of the action takes place at a café called Central Perk", fifthWord: "The show is about 6 friends living in New York")
    let uranus = CanYouFigureItOut(title: "Planet", answer: "Uranus", firstWord: "Discovered in 1781 by William Herschel", secondWord: "The planet's diameter is about 4 times larger than the Earth's", thirdWord: "It takes 84 years for the planet to complete a lap around the sun", fourthWord: "The planet currently has twenty-seven confirmed moons, of which the five largest are Miranda, Ariel, Umbriel, Titania and Oberon", fifthWord: "Is the seventh planet from the sun and is about the same size as Neptune")
    let varldsdel = CanYouFigureItOut(title: "Continent", answer: "South America", firstWord: "The size of the continent occupies 3.5 percent of the earth's surface", secondWord: "There are about 420 million people living in this continent", thirdWord: "Here is the world's highest waterfall, Angel Fall", fourthWord: "Consists of 12 countries", fifthWord: "Two famous cities in this continent are Santiago and Caracas")
    let indonesien = CanYouFigureItOut(title: "Country", answer: "Indonesia", firstWord: "Has the world's largest Muslim population", secondWord: "This Asian country was recognized independently from the Netherlands in 1949", thirdWord: "The country consists of over 13,000 islands and 33 provinces", fourthWord: "The country borders Papua New Guinea, East Timor and Malaysia", fifthWord: "The capital is called Jakarta")
    let bornInTheUSA = CanYouFigureItOut(title: "Music album", answer: "Born in the USA", firstWord: "The music magazine Rolling Stone ranked the album as number 85 on its list The 500 Greatest Albums of All Time", secondWord: "This rock album was released in 1984", thirdWord: "The title song is about Vietnam veterans forgotten by society in the United States", fourthWord: "Famous songs on the album are Dancing in the dark and I Surrernder", fifthWord: "The artist is Bruce Springsteen and the album is the same as the first single on the record")
    let cocaCola = CanYouFigureItOut(title: "Company", answer: "Coca Cola", firstWord: "Held 2017, 100 300 employees and traded $ 41.8 billion", secondWord: "The company was founded in 1892 by Asa Griggs Candler", thirdWord: "The product consists of a secret recipe stored in a bank vault in Atlanta", fourthWord: "Their slogan is ”Taste the feeling”", fifthWord: "In addition to the main product, Fanta and Sprite is in their assortment")
    let colosseum = CanYouFigureItOut(title: "Attraction", answer: "Colosseum", firstWord: "A speech of the people in this country at drafts is: ”Close the door, you're not in ***”", secondWord: "The height of the attraction is 48 meters", thirdWord: "One side of the attraction was erupted at an earthquake in 1349", fourthWord: "The attraction is located in Rome and were built by Emperor Titus Vespasianus", fifthWord: "A central place in the movie Gladiator")
    let palmTree = CanYouFigureItOut(title: "Plant", answer: "Palm-tree", firstWord: "Is a family one-leafed plants and the only family in the Arecales scheme", secondWord: "Occurs as wildlife almost exclusively in the world's tropical and subtropical areas", thirdWord: "This plant extracts an oil that is often criticized for environmental reasons, as rainforest harvesting occurs on a large scale", fourthWord: "The plant is often seen on paradise beaches", fifthWord: "On this plant it grows coconuts")
    let niagara = CanYouFigureItOut(title: "Nature", answer: "Niagara Falls", firstWord: "Discovered in the 17th century by Louis Hennepin", secondWord: "The width of this is 1203m", thirdWord: "Here is a memorial to Nikola Tesla, who was the first to extract electrical energy from here", fourthWord: "Consists of three falls", fifthWord: "A waterfall that borders Canada and the United States")
    let cangaru = CanYouFigureItOut(title: "Animal", answer: "Kangaroo", firstWord: "The animal is a plant eater and is usually active at night or dusk.", secondWord: "The fur color is often gray or brownish. The tail is long, strong and mainly hair-clad", thirdWord: "The animal lives in Australia and New Guinea as well as on surrounding islands such as Tasmania", fourthWord: "Their rear legs are significantly larger than the front ones. The animal is perhaps the most famous for its jumping", fifthWord: "Is a scallop. The female is feeding and storing her kids in her pouch until the baby becomes about six months old")
    let fotboll = CanYouFigureItOut(title: "Sport", answer: "Soccer", firstWord: "A famous legend in this sport is Carlos Alberto", secondWord: "A well-known active player is Carli Lloyd", thirdWord: "Another is goalkeeper Hugo Lloris", fourthWord: "Marta has dominated this sport on the women's side for many years", fifthWord: "Messi and Ronaldo are two big stars in this game")
    
    let measles = CanYouFigureItOut(title: "Disease", answer: "Measles", firstWord: "The disease is caused by a virus in the morbillis family. The virus is spread predominantly in droplets through the air", secondWord: "n adults it is a dangerous disease that is untreated can lead to death", thirdWord: "The disease is the vaccine-preventable disease that causes the most deaths in the world. Mainly in poor countries in Africa", fourthWord: "Symptoms of the disease include high fever, cough, sniffing and eye irritation", fifthWord: "Disease is a viral disease that causes respiratory tract infections and red rashes")
    let tiger = CanYouFigureItOut(title: "Animal", answer: "Tiger", firstWord: "The animal lives only in Asia", secondWord: "It hunts alone and eats mainly medium-sized animals from the families of swine and deer", thirdWord: "The animal is the largest now living feline", fourthWord: "In tempered leaves and coniferous forests the fur's pattern is good camouflage", fifthWord: "The name of the animal is derived from the Greek word tigris")
    let gt = CanYouFigureItOut(title: "Drink", answer: "Gin and tonic", firstWord: "The origin of the drink is said to be that British soldiers in India got the idea to take the very tasty tasting malariamedicine diluted with sugar water and this drink in order to make the intake more enjoyable", secondWord: "Very popular in Spain, where in the metropolitan areas is not uncommon with bar rooms that only serve different varieties of this beverage", thirdWord: "Served traditionally in a highball glass of ice cubes and a slice of lemon or lime", fourthWord: "Contains only two main ingredients ", fifthWord: "Variants occur, such as Turbo G & T (or Cold Brew G & T)")
    let bach = CanYouFigureItOut(title: "Composer", answer: "Bach", firstWord: "He has been called for The fifth evangelist", secondWord: "Is one of Baroque's famous", thirdWord: "Born in Germany in 1685", fourthWord: "Considered as the master of the organ", fifthWord: "His first name is Johann Sebastian")
    let beiber = CanYouFigureItOut(title: "Pop singer", answer: "Justin Bieber", firstWord: "Discovered by Scooter Braun, who later became the person's manager", secondWord: "Is Canadian", thirdWord: "Was born in 1994", fourthWord: "Has been together with Selena Gomez", fifthWord: "Is famous for songs like 'Favorite Girl' and 'Baby'")
    
    let merkel = CanYouFigureItOut(title: "Politician", answer: "Angela Merkel", firstWord: "The person has a doctorate in quantum chemistry", secondWord: "She was born in 1954", thirdWord: "She was ranked 2011 as the world's second most powerful person of the Forbes magazine", fourthWord: "Is a Christian Democrat", fifthWord: "She became Germany's Eighth Chancellor of the Chancellor")
    let eight = CanYouFigureItOut(title: "A number", answer: "8", firstWord: "Oxygen has this position in the periodic table", secondWord: "Is a Japanese and Chinese lucky number and is called the rebirth's number", thirdWord: "The number is called octo in Latin", fourthWord: "Written as VIII in ancient Rome", fifthWord: "The letter H comes in this place in the alphabet")
    let koranen = CanYouFigureItOut(title: "A book", answer: "Quran", firstWord: "Also called The noble recitation", secondWord: "Contains 114 surahs", thirdWord: "Written in Arabic", fourthWord: "Consist of Prophet Muhammad's revelations", fifthWord: "Is the holy scripture of the Muslims")
    let saxofon = CanYouFigureItOut(title: "Instrument", answer: "Saxophone", firstWord: "Is a woodwind instrument", secondWord: "Famous artists who play this instrument are Charles Parker and Stanley Getz", thirdWord: "Bill Clinton is playing this instrument", fourthWord: "Is common within the jazz", fifthWord: "The instrument was named by Adolphe Sax")
    let northPole = CanYouFigureItOut(title: "En location", answer: "North Pole", firstWord: "The nearest land area is called Coffee Club Island", secondWord: "The Swedish engineer Andrée made an unsuccessful attempt to reach this place with a hot air balloon", thirdWord: "Throughout the summer it's midnight sun here", fourthWord: "The location is in the middle of the Arctic", fifthWord: "The northernmost of the poles of the earth")
    
    let poodle = CanYouFigureItOut(title: "A dog breed", answer: "Poodle", firstWord: "Occurs in four different sizes", secondWord: "The dog breed originates from France" , thirdWord: "Is the third most popular dog breed in the world", fourthWord: "It has a woolly fur", fifthWord: "Preferably to be lion cut")
    let cocain = CanYouFigureItOut(title: "A drug", answer: "Cocain", firstWord: "Is a central stimulant preparation", secondWord: "Expensive and extremely addictive drug", thirdWord: "Pablo Escobar exported this drug from Colombia", fourthWord: "Is uplifting, hunger-dampening and is snorted through the nose", fifthWord: "Extracted from the leaves in the coca bush")
    let moses = CanYouFigureItOut(title: "A biblical figure", answer: "Moses", firstWord: "Lived about 1300 years before Christ", secondWord: "Married to Sippora who was the daughter of the priest Jetro", thirdWord: "Growed up in Egypt", fourthWord: "Found in the water of Pharaoh's daughter", fifthWord: "His Hebrew name is Moshe")
    let tintin = CanYouFigureItOut(title: "A commic book figure", answer: "Tintin", firstWord: "Was published for the first time in 1929", secondWord: "Created by Hergé", thirdWord: "The figure works as a journalist", fourthWord: "Has the dog Milou", fifthWord: "Is friend of Captain Haddock")
    
    let amsterdam = CanYouFigureItOut(title: "A capital", answer: "Amsterdam", firstWord: "Is an important shipping city in Europe", secondWord: "Here is Rembrandt's house", thirdWord: "Outside the city is Schiphol Airport", fourthWord: "Located at the Amstels river outlet", fifthWord: "Capital city of the Netherlands")
    let parmesan = CanYouFigureItOut(title: "A cheese", answer: "Parmesan", firstWord: "If it is genuine, it should be stamped in the rind with black letters", secondWord: "The original is Italian", thirdWord: "The hard cheese is usually stored between 22 and 36 months", fourthWord: "Often eaten grated", fifthWord: "The word itself means ”from Parma”")
    let gold = CanYouFigureItOut(title: "An element", answer: "Gold", firstWord: "A precious metal", secondWord: "The Latin word is ”Aurum”", thirdWord: "Located like grain in bedrock", fourthWord: "The most moldable and expensive metal", fifthWord: "Victors in the Olympic Games are awarded this type of medal")
    let year = CanYouFigureItOut(title: "A year", answer: "2009", firstWord: "U2 releases the album ”No Line on the Horizon”", secondWord: "Australia is ravaged by serious forest fires", thirdWord: "Gaza war rages", fourthWord: "Avatar has a world premiere at the cinema", fifthWord: "Barack Obama becomes the US president")
    let austria = CanYouFigureItOut(title: "A country in Europe ", answer: "Austria", firstWord: "The country code is 43", secondWord: "An inland state in central Europe on the Danube river", thirdWord: "The letter A is the country's nationality mark", fourthWord: "Hitler was born in this country", fifthWord: "The capital is Vienna")
    let statueOfLiberty = CanYouFigureItOut(title: "A gift", answer: "Statue of liberty", firstWord: "The gift was designed by sculptor Auguste Bartholdi", secondWord: "A statue holding a blackboard with the inscription July IV MDCCLXXVI", thirdWord: "Was a gift to the United States from France", fourthWord: "A statue of a woman and is a symbol of freedom", fifthWord: "Stands on an island belonging to New Jersey")
    let bradPitt = CanYouFigureItOut(title: "An actor", answer: "Brad Pitt", firstWord: "Was born December 18, 1963 in Shawnee, Oklahoma", secondWord: "According to Empire Magazine, he is one of the most beautiful men in movie history", thirdWord: "Is a devoted dad to six kids", fourthWord: "Have been married to Jennifer Aniston", fifthWord: "Played against his future wife Angelina Jolie in ”Mr. & Mrs Smith”")
    let mauritius = CanYouFigureItOut(title: "A holiday paradise", answer: "Mauritius", firstWord: "The language spoken on this island is officially English but also Creole, French and Hindu", secondWord: "Discovered by the Portuguese 1505, the flag is red, blue, yellow and green", thirdWord: "The capital is called Port Louis", fourthWord: "Located east of Madagascar", fifthWord: "The inhabitants here are called maurites")
    
    let cockroach = CanYouFigureItOut(title: "Insect", answer: "Cockroach", firstWord: "There are about four thousand species of this insect", secondWord: "They are awake at night and hiding in darkness during the daytime", thirdWord: "They enjoy warmer climate", fourthWord: "Has flat, oval, brownish body and antennas", fifthWord: "There has been a cartoon series about this animal called: ”Oggy and the ...”")
    let russianRevoulution = CanYouFigureItOut(title: "A revolution", answer: "Russian revolution", firstWord: "Started with the workers joined together with the soldiers", secondWord: "The year was 1917", thirdWord: "Led to Nikolaj II's abdication", fourthWord: "Bolsvikvik took over after the revolution", fifthWord: "Afterwards, the Soviet Union was formed")
    let clothing = CanYouFigureItOut(title: "A garment", answer: "T-shirt", firstWord: "The garment became popular in the 1950s", secondWord: "Worn on the upper body and is often made in cotton", thirdWord: "Believed have been developed as an underwear for the American army", fourthWord: "Has got its name after a letter", fifthWord: "The shape of the shirt is similar to the letter T")
    let summerOlympicsAthens = CanYouFigureItOut(title: "An Olympic game", answer: "Athens 2004", firstWord: "A summer Olympics. USA won the medal league with 35 golds", secondWord: "Held in a European country that had been hosting before", thirdWord: "Michael Phelps took eight medals, of which 6 gold", fourthWord: "The marathon run ran from the city of Marathon", fifthWord: "Held in the capital of Greece 108 years after the first Olympic Games were held in the same place")
    let tesla = CanYouFigureItOut(title: "A car brand", answer: "Tesla", firstWord: "Founded in 2003", secondWord: "The first model was called Roadster", thirdWord: "The founder of the company is Elon Musk", fourthWord: "The best-selling model is Model S", fifthWord: "An American brand that manufactures electric cars")
    let u2 = CanYouFigureItOut(title: "A music group", answer: "U2", firstWord: "A rock group formed in 1976", secondWord: "The initiative was taken by drummer Larry Mullen Jr.", thirdWord: "Has released discs like The Joshua Tree and Achtung Baby", fourthWord: "The singer goes under the artist name Bono", fifthWord: "Some of the band's songs are One, With or Without You och Beautiful Day")
    
    let artist = CanYouFigureItOut(title: "Artist", answer: "Vincent van Gogh", firstWord: "Characterized by bold, symbolic colors and dramatic, impulsive and expressive brush strokes", secondWord: "He committed suicide at the age of 37 years", thirdWord: "Sold only one painting during his lifetime", fourthWord: "Born in 1853 in the Netherlands", fifthWord: "He cutted of a piece of his own left ear")
    let deadSea = CanYouFigureItOut(title: "A watercourse", answer: "Dead sea", firstWord: "There is only one outflow and it is evaporation", secondWord: "It's a lake but is called sea", thirdWord: "Located in the countries of Jordan and Israel", fourthWord: "Has a salinity of 33.7 percent", fifthWord: "The name has arisen because no animals can survive in this water")
    let madagaskar = CanYouFigureItOut(title: "Island", answer: "Madagaskar", firstWord: "The languages ​​spoken on this island are French and Malagasy", secondWord: "The island is the fourth largest in the world", thirdWord: "The capital of this island/Country is Antananarivo", fourthWord: "Located in the Indian Ocean off the coast of Africa", fifthWord: "An animated movie was released in 2005 with the same name as this island")
    let emmaWatson = CanYouFigureItOut(title: "Actress", answer: "Emma Watson", firstWord: "She was born in 1990 in Paris", secondWord: "Also works as a model and is Burberry's face outwards", thirdWord: "Has shown a great commitment to gender issues", fourthWord: "Is famous for movies like The Perks of Being a Wallflower and The Bling Ring", fifthWord: "Her biggest role is like Hermione Granger in the Harry Potter movies")
    let barcelona = CanYouFigureItOut(title: "Sportsteam", answer: "FC Barcelona", firstWord: "The club was founded in 1899", secondWord: "The football team's home jersey is red and blue", thirdWord: "Playing at Camp Nou", fourthWord: "Have won La Liga 23 times (2018)", fifthWord: "The team's stars include Lionell Messi and Luis Suárez")
    let historicalMoment = CanYouFigureItOut(title: "Historical moment", answer: "Titanics downfall", firstWord: "Officially, 1514 people died during this incident", secondWord: "This incident occurred on April 10, 1912", thirdWord: "Has since been filmed as a Drama movie by James Cameron", fourthWord: "In the movie, Kate Winslet and Leonardo DiCaprio play", fifthWord: "This ship sank in the Atlantic after colliding with an iceberg")
    let samsung = CanYouFigureItOut(title: "Technical company", answer: "Samsung", firstWord: "The company initially dedicated to the food trade and production of noodles", secondWord: "The company was founded in 1938 by Lee Byung-chul", thirdWord: "The headquarters is located in Seoul, South Korea", fourthWord: "Is world leader in mobile phone sales", fifthWord: "Several of the company's mobile phone models are called Galaxy")
    let detroit = CanYouFigureItOut(title: "American city", answer: "Detroit", firstWord: "Is one of the United States largest inland ports and is connected to the Atlantic via Saint Lawrenceleden", secondWord: "The city's population has fallen by a third in the last fifty years due to few jobs", thirdWord: "The city is also called the Motor city and is the center of the American automotive industry", fourthWord: "The city's hockey team is called Red Wings", fifthWord: "Is the largest city in Michigan")
    let nobel = CanYouFigureItOut(title: "Inventor", answer: "Alfred Nobel", firstWord: "Has a street in Paris and a school in Chicago named in his honor", secondWord: "Born in Stockholm in 1833", thirdWord: "Blessed peace, somewhat contradictory in view of his most famous invention", fourthWord: "Discover the dynamite", fifthWord: "A prize is awarded in his name every year in physics, chemistry, medicine, literature and peace work")
    let dior = CanYouFigureItOut(title: "Fashion designer", answer: "Christian Dior", firstWord: "Born in France in 1905", secondWord: "Founded his own fashion department in 1946 with the same name as his last name", thirdWord: "Is primarily known for 'The new look'", fourthWord: "The company, also called the same as his surname, is considered to be one of the more luxurious clothing brands", fifthWord: "The range includes shoes, sunglasses, perfumes and handbags")
    let JKRowling = CanYouFigureItOut(title: "Author", answer: "JK Rowling", firstWord: "The author published its first adult book under the pseudonym Robert Galbraith in 2012", secondWord: "Her books have been sold in over 450 million copies and translated into 73 languages", thirdWord: "Her most famous books have been filmed into eight different movies", fourthWord: "In her most famous book series, one can follow Professor Snape and Rubeus Hagrid", fifthWord: "The main character of her books is Harry Potter")
    let coffee = CanYouFigureItOut(title: "Beverage", answer: "Coffee", firstWord: "Finns and Swedes are the nationalities who drink the most of this beverage", secondWord: "This beverage originates in Ethiopia", thirdWord: "The beverage is the world's second most traded after oil", fourthWord: "The beverage is made by grinding this kind of bean and mixing it with warm water", fifthWord: "This black beverage usually contains caffeine and does not rarely mix with milk")
    
    
    // Hum The song ENG(55 + 1 tmp)
    let tmpHumTheSong = HumTheSong(title: "Missing card", firstWord: "No", secondWord: "Hum the song", thirdWord: "card", fourthWord: "in", fifthWord: "own deck")
    let boyBand1 = HumTheSong(title: "Boy Bands", firstWord: "Backst... - I Want It That Way", secondWord: "NSYNC - Bye Bye Bye", thirdWord: "Hanson - MMMBop", fourthWord: "Backst... - As long as you love me", fifthWord: "Westlife - Mandy")
    let beatles = HumTheSong(title: "Beatles", firstWord: "Hey Jude", secondWord: "Twist and shout", thirdWord: "Let it be", fourthWord: "Come together", fifthWord: "Here comes the sun")
    let first80 = HumTheSong(title: "80´s", firstWord: "Toto - Africa", secondWord: "Journey - Don't stop belivin'", thirdWord: "The P... - Every breath you take", fourthWord: "Michael Jackson - Billie Jean", fifthWord: "Dolly Parton - 9-5")
    let second80 = HumTheSong(title: "80´s", firstWord: "Paul S... - You can call me Al", secondWord: "Men at work - Down under", thirdWord: "Michael Jackson - Beat it", fourthWord: "Wham! - Wake me up before you go-go", fifthWord: "Scorpions - Rock you like a hurricane")
    let disco = HumTheSong(title: "Disco-songs", firstWord: "Donna Summer - Hot stuff", secondWord: "Boney M. - Daddy Cool", thirdWord: "Sister S. - We Are Family", fourthWord: "Bee Gees - Stayin' Alive", fifthWord: "Pointer S. - I'm So Excited")
    let hipHopRnB1 = HumTheSong(title: "Hip hop/RnB", firstWord: "R. Kelly - Worlds greatest", secondWord: "Black Eyed. - Where Is The Love?", thirdWord: "Mario - Let Me Love You", fourthWord: "Usher - Yeah!", fifthWord: "Akon - Beautiful")
    let hipHopRnB2 = HumTheSong(title: "Hip hop/RnB", firstWord: "Beyonce - Single Ladies", secondWord: "Diddy - Last Night", thirdWord: "Snoop - Young, Wild & Free", fourthWord: "W. Smith - Gettin’ Jiggy Wit It", fifthWord: "MC Hammer - U Can’t Touch This")
    let house = HumTheSong(title: "House", firstWord: "Avicii- Wake me up", secondWord: "Swedish house M. - One", thirdWord: "Kygo - Stole the show", fourthWord: "David guetta - Titanium", fifthWord: "Axwell/Ing. - More then you know")
    let classicRock = HumTheSong(title: "Classic rock", firstWord: "The Clash - London Calling", secondWord: "Nirvana - Smells Like Teen Spirit", thirdWord: "Rolling Stones - Satisfaction", fourthWord: "Bruce S. - Born to Run", fifthWord: "Deep P... - Smoke on the water")
    let loveballads = HumTheSong(title: "Love ballads", firstWord: "Roxette - It Must Have Been Love", secondWord: "Foreigner - I wan't to know what love is", thirdWord: "Simon & Garfunkel - Bridge Over Troubled Water", fourthWord: "Stevie Wonder - I Just Called to Say I Love You", fifthWord: "Percy Sledge - When a Man Loves a Woman")
    let loveSongs = HumTheSong(title: "Love songs", firstWord: "Elton John - Your Song", secondWord: "Eric C. - All by my self", thirdWord: "Reo S. - Can’t Fight This Feeling", fourthWord: "Sonny n Cher - I Got You Babe", fifthWord: "Percy S. - When a Man Loves a Woman”")
    let first70 = HumTheSong(title: "Soft 70´s", firstWord: "Marvin G. - Let's Get It On", secondWord: "Killing Me Softly With His Song", thirdWord: "John Lennon - Imagine", fourthWord: "Pink Floyd - Wish you were here", fifthWord: "Aerosmith - Dream on")
    let second70 = HumTheSong(title: "Hits of the 70´s", firstWord: "Bee Gees - Night Fever", secondWord: "ABBA - Dancing Queen", thirdWord: "Wild C. - Play That Funky Music", fourthWord: "Queen - Bohemian Rhapsody", fifthWord: "Eagles - Hotel California")
    let movieMusic = HumTheSong(title: "Movie Music", firstWord: "Survivor - Eye Of The Tiger ", secondWord: "Ray Parker Jr. - Ghostbusters", thirdWord: "Celine D. - My heart will go on", fourthWord: "A.- I don't want to miss a thing", fifthWord: "D. R. - Ain’t No Mountain High Enough")
    let chilldrensSongs = HumTheSong(title: "Childrens Song", firstWord: "Incy wincy spider", secondWord: "Bananas in Pyjamas", thirdWord: "Twinkle twinkle little star", fourthWord: "Demi Lovato - Let it go(frozen)", fifthWord: "Pharell Williams - Happy")
    let country = HumTheSong(title: "Country", firstWord: "Johnny C. - Walk the line", secondWord: "N... - These Boots Are Made For Walking", thirdWord: "Dolly Parton - Jolene", fourthWord: "Johnny C. - Ring of Fire", fifthWord: "Zac brown b. - Chicken fried")
    let oneHitWonders = HumTheSong(title: "One hit wonders", firstWord: "Vanilla I. - Ice ice baby", secondWord: "Ba... - Who let the dogs out", thirdWord: "Aha - take on me", fourthWord: "W. C. - Play that funky music", fifthWord: "Right S... - I'm too sexy")
    let first90s = HumTheSong(title: "90´s", firstWord: "Toni B. - Un-Break My Heart", secondWord: "Britney S. - Baby One More Time’", thirdWord: "R.E.M. - Losing My Religion", fourthWord: "Destiny's c. - Say my name", fifthWord: "Michael J. - Black or white")
    let latinSongs = HumTheSong(title: "Latin songs", firstWord: "Luis Fonsi &... - Despacito" , secondWord: "Enrique I. - Bailando", thirdWord: "Ritchie Valens - La Bamba", fourthWord: "Ricky M. - Livin la Vida Loca", fifthWord: "Shakira - Suerte (Whenever, Wherever)")
    let summerSongs = HumTheSong(title: "Summer songs", firstWord: "Bryan A. - Summer Of '69", secondWord: "Don H. - The Boys Of Summer", thirdWord: "Bryan H. - Teenie Weenie Bikini" , fourthWord: "Katy P. & Snoop - California Gurls", fifthWord: "Alice. - School’s Out for Summer")
    let rap = HumTheSong(title: "Rap", firstWord: "N.W.A - Fuck tha Police", secondWord: "50 Cent - In Da Club", thirdWord: "Eminem - Lose Yourself", fourthWord: "Public E. - Fight the Power", fifthWord: "Jay Z & A.K. -Empire State of Mind")
    let after2010 = HumTheSong(title: "After 2010", firstWord: "Adele - Rolling In The Deep", secondWord: "Bruno M. - Just The Way You Are", thirdWord: "LMFAO - Sexy And I Know It", fourthWord: "Macklemore & R... - Thrift Shop", fifthWord: "Carly Rae. - Call Me Maybe")
    let hardRock = HumTheSong(title: "Hard Rock", firstWord: "Guns N. – Welcome To The Jungle", secondWord: "S.. – Rock You Like A Hurricane", thirdWord: "Motley C. – Dr. Feelgood", fourthWord: "Europe – The Final Countdown", fifthWord: "Iron Maiden – Run To The Hills")
    let rockOf90s = HumTheSong(title: "Rock of the 90´s", firstWord: "Nir.. - Smells Like Teen Spirit", secondWord: "Metallica - Enter Sandman", thirdWord: "Qu.. - The Show Must Go On", fourthWord: "Green Day - Basket case", fifthWord: "Soundg... - Black Hole Sun")
    
    let y2015 = HumTheSong(title: "2015", firstWord: "Ellie G.-Love Me Like You Do", secondWord: "OMI- Cheerleader", thirdWord: "Hozier- Take Me To Church", fourthWord: "Drake- Hotline Bling", fifthWord: "Sam S.- Stay With Me")
    let y2016 = HumTheSong(title: "2016", firstWord: "Mike P.- Took A Pill In Ibiza", secondWord: "Drake- Hotline Bling", thirdWord: "Justin B.- What Do You Mean", fourthWord: "Rihanna- Work", fifthWord: "Adele- Hello")
    let y2017 = HumTheSong(title: "2017", firstWord: "Luis F... - Despacito", secondWord: "James A. -Say You Won't Let Go", thirdWord: "Future- Mask off", fourthWord: "The Week.- I Feel It Coming", fifthWord: "Ed S.- Shape Of You")
    let y2000 = HumTheSong(title: "2000", firstWord: "U2 - Beautiful Day", secondWord: "Outcast- Ms. Jackson", thirdWord: "Eminem - Stan", fourthWord: " Daft P.- One more time", fifthWord: "Coldplay - Yellow")
    let y2008 = HumTheSong(title: "2008", firstWord: "Beyoncé - Single Ladies", secondWord: "Lady Gaga - Poker Face", thirdWord: "Katy Perry- I Kissed a Girl", fourthWord: "Jason Mraz- I’m Yours", fifthWord: "Kings of Leon - Sex On Fire")
    let y50s = HumTheSong(title: "50´s", firstWord: "Hank W.- Hey Good Lookin'", secondWord: "Little R.- Tutti-Frutti", thirdWord: "Elvis P. - Jailhouse Rock", fourthWord: "Chuck B.- Johnny B. Goode", fifthWord: "Jerry.- Great Balls Of Fire")
    let y60s = HumTheSong(title: "60's", firstWord: "Ray C.-Hit The Road Jack", secondWord: "Ben E King- Stand By Me", thirdWord: "Rolling Stones- Satisfaction ", fourthWord: "Beatles - Yesterday", fifthWord: "Ray O. - Oh, Pretty Woman")
    let rock60s = HumTheSong(title: "Rock of the 60´s", firstWord: "Byrds- Mr. Tambourine Man", secondWord: "Doors - Light My Fire", thirdWord: "Kink- You Really Got Me", fourthWord: "Bob D.- Like A Rolling Stone", fifthWord: "Beatles- Hey Jude")
    let groups70s = HumTheSong(title: "Groups of the 70´s", firstWord: "ABBA - Mamma Mia", secondWord: "Qu..- We are the Champ...", thirdWord: "Led Ze.- Stairway to heaven", fourthWord: "Pink F.- Wish You Were Here", fifthWord: "Rolling St.- Start me up")
    let soloSingers80 = HumTheSong(title: "80´s solo singers", firstWord: "Michael Jackson- Thriller", secondWord: "Phil C.-Another day in paradise", thirdWord: "George Michael- One more try", fourthWord: "Sting- Fields of gold", fifthWord: "Lionel R.- Say You, Say Me")
    let weddingSongs = HumTheSong(title: "Wedding songs", firstWord: "John Legend - All of me", secondWord: "Bruno Mars - Marry you", thirdWord: "Ed Sh. - Thinking out loud", fourthWord: "Jason Mraz - I’m yours", fifthWord: "Eric C.- Wonderful tonight")
    let duets = HumTheSong(title: "Duets", firstWord: "DR & LR - Endless Love", secondWord: "KR-DP - Islands In The Stream", thirdWord: "EJ&KD- Don't Go Breaking My Heart", fourthWord: "NS&FS- Somethin' Stupid", fifthWord: "JT&ON- You're The One That I Want")
    let girlGroups = HumTheSong(title: "Girl groups", firstWord: "Spice Girls- Wannabe", secondWord: "Destiny's C.- Say My Name", thirdWord: "Pussycat Dolls- Don't Cha", fourthWord: "Labelle- Lady Marmalade", fifthWord: "Sister S.- We Are Family")
    let colorSongs = HumTheSong(title: "Songs about color", firstWord: "UB40 - Red red wine", secondWord: "Eiffel 65 - Blue", thirdWord: "Beatles - Yellow Submarine", fourthWord: "Soundg.- Black hole sun", fifthWord: "Chris dB - The lady in red")
    let tvShows = HumTheSong(title: "TV-shows(name of show)", firstWord: "Friends", secondWord: "Cheers", thirdWord: "The Simpsons", fourthWord: "Fresh Prince in Bel Air", fifthWord: "The big bang theory")
    let americanIdol = HumTheSong(title: "Idol participants", firstWord: "Kelly C. - Since U Been Gone", secondWord: "Jordin Sparks- No Air", thirdWord: "Daughtry- No Surprise", fourthWord: "Kris A -Live Like We're Dying", fifthWord: "Jennifer Hudson - Spotlight")
    let ukSingers = HumTheSong(title: "Songs from the UK", firstWord: "D M R - Come on Eileen", secondWord: "Bon...- Total eclipse of my heart", thirdWord: "Culture c. - Karma chameleon", fourthWord: "Whites. - Here i go again", fifthWord: "James B - You´re beautiful")
    let euroDance90 = HumTheSong(title: "Euro dance", firstWord: "Culture Beat - Mr Vain", secondWord: "Dr.Alban- Sing Hallulujah!", thirdWord: "Scatman John - Scatman", fourthWord: "Rednex - Cotton Eye Joe", fifthWord: "Reel 2 R.-I Like To Move It")
    let euroVision = HumTheSong(title: "Eurovision", firstWord: "ABBA -Waterloo", secondWord: "Alexander Rybak – Fairytale", thirdWord: "Helena Pap. – My number 1", fourthWord: "Olsen.– Fly On The Wings Of Love", fifthWord: "Lordi – Hard Rock Hallelujah")
    
    
    let americanSoloSingers = HumTheSong(title: "American solo singers", firstWord: "Frank S.- Fly me too the moon", secondWord: "Michael J. - Beat it", thirdWord: "Elvis - Jailhouse rock", fourthWord: "Stevie W - For once in my life", fifthWord: "Willie N.- On the road again")
    let americanBands = HumTheSong(title: "American Bands", firstWord: "Nirvana- Smells like teen sp..", secondWord: "Pear Jam- Alive", thirdWord: "Foo fighters-Learn to fly", fourthWord: "REM-Losing my religion", fifthWord: "Green Day- Good Riddance")
    let europeanBands = HumTheSong(title: "European bands", firstWord: "Roxette- Joyride", secondWord: "U2- With or without you", thirdWord: "A-ha - Take on me", fourthWord: "Ace of base - The sign", fifthWord: "ABBA- Dancing queen")
    let europeanSoloArtists = HumTheSong(title: "European solo artists", firstWord: "Adele- Rolling in the deep", secondWord: "Sin...-Nothing compares 2 U", thirdWord: "Enrique E. -Bailamos", fourthWord: "Pitbull - Give me everything ", fifthWord: "Leona Lewis- Bleeding love")
    let songsAboutUSA = HumTheSong(title: "Songs about USA", firstWord: "Bruce S- Born in the U.S.A", secondWord: "Don McLean- American Pie", thirdWord: "Lenny K.- American Woman", fourthWord: "James Br.- Living in America", fifthWord: "Miley Cyrus- Party in the USA")
    let y2011 = HumTheSong(title: "2011", firstWord: "Katy Perry- Firework", secondWord: "Bruno Mars- Grenade", thirdWord: "P!nk- Raise Your Glass", fourthWord: "Lady Gaga- Born This Way", fifthWord: "Maroon 5- Moves Like Jagger")
    let y2012 = HumTheSong(title: "2012", firstWord: "Carly R. J.-Call Me Maybe", secondWord: "Rihanna-We Found Love", thirdWord: "One...- What Makes You Beautiful", fourthWord: "LMFAO- Sexy And I Know It", fifthWord: "fun.- Some Nights")
    let y2013 = HumTheSong(title: "2013", firstWord: "Macklemore- Thrift Shop", secondWord: "Baauer- Harlem Shake", thirdWord: "Miley C.- Wrecking Ball", fourthWord: "Avicii- Wake Me Up!", fifthWord: "SHM- Don't You Worry Child")
    let y2014 = HumTheSong(title: "2014", firstWord: "Pharrell Williams- Happy", secondWord: "Passenger- Let Her Go", thirdWord: "Aloe Blacc- The Man", fourthWord: "Avicii- Hey Brother", fifthWord: "Sia- Chandelier")
    let femaleArtist = HumTheSong(title: "Female singers", firstWord: "Ariana Grande- Santa tell me", secondWord: "Rihanna - Umbrella", thirdWord: "Beyonce - Halo", fourthWord: "Lady Gaga- Paparazzi ", fifthWord: "Britney S.- Oops I did it again")
    let songsAboutFoodAndDrinks = HumTheSong(title: "Songs about food/drinks", firstWord: "Aaron carter - I want Candy", secondWord: "The Chordetts - Lollipop", thirdWord: "Ub40 - Red red wine", fourthWord: "50 cent- Candy shop", fifthWord: "Zac Brown Band- Chicken fried")
    let y2009 = HumTheSong(title: "2009", firstWord: "Black E...- Boom Boom Pow", secondWord: "Lady Gaga- Poker Face", thirdWord: "Kings Of L.- Use Somebody", fourthWord: "Drake- Best I Ever Had", fifthWord: "Katy Perry- Hot N Cold")
    
    
    //HUM THE SONG SWE(55)
    
    let boyBand1SWE = HumTheSong(title: "Boy Bands", firstWord: "B. Boys - I Want It That Way", secondWord: "NSYNC - Bye Bye Bye", thirdWord: "Hanson - MMMBop", fourthWord: "Backst... - As long as you love me", fifthWord: "Westlife - Mandy")
    let beatlesSWE = HumTheSong(title: "Beatles", firstWord: "Hey Jude", secondWord: "Twist and shout", thirdWord: "Let it be", fourthWord: "Come together", fifthWord: "Here comes the sun")
    let first80SWE = HumTheSong(title: "80´s", firstWord: "Toto - Africa", secondWord: "Journey - Don't stop belivin'", thirdWord: "The P... - Every breath you take", fourthWord: "Michael Jackson - Billie Jean", fifthWord: "Dolly Parton - 9-5")
    let second80SWE = HumTheSong(title: "80´s", firstWord: "Paul S... - You can call me Al", secondWord: "Men at work - Down under", thirdWord: "Michael Jackson - Beat it", fourthWord: "Wham! - Wake me up before you go-go", fifthWord: "Scorpions - Rock you like a hurricane")
    let discoSWE = HumTheSong(title: "Disco-songs", firstWord: "Donna Summer - Hot stuff", secondWord: "Boney M. - Daddy Cool", thirdWord: "Sister S. - We Are Family", fourthWord: "Bee Gees - Stayin' Alive", fifthWord: "Pointer S. - I'm So Excited")
    let hipHopRnB1SWE = HumTheSong(title: "Hip hop/RnB", firstWord: "R. Kelly - Worlds greatest", secondWord: "Black Eyed... - Where Is The Love?", thirdWord: "Mario - Let Me Love You", fourthWord: "Usher - Yeah!", fifthWord: "Akon - Beautiful")
    let hipHopRnB2SWE = HumTheSong(title: "Hip hop/RnB", firstWord: "Beyonce - Single Ladies", secondWord: "Diddy - Last Night", thirdWord: "Snoop - Young, Wild & Free", fourthWord: "W. Smith - Gettin’ Jiggy Wit It", fifthWord: "MC Hammer - U Can’t Touch This")
    let houseSWE = HumTheSong(title: "House", firstWord: "Avicii- Wake me up", secondWord: "Swedish house M. - One", thirdWord: "Kygo - Stole the show", fourthWord: "David guetta - Titanium", fifthWord: "Axwell/Ing. - More then you know")
    let classicRockSWE = HumTheSong(title: "Klassisk rock", firstWord: "The Clash - London Calling", secondWord: "Nirvana - Smells Like Teen Spirit", thirdWord: "The Rolling Stones - Satisfaction", fourthWord: "Bruce S. - Born to Run", fifthWord: "Deep Purp. - Smoke on the water")
    let loveballadsSWE = HumTheSong(title: "Kärleksballader", firstWord: "Rox.. - It Must Have Been Love", secondWord: "Fo... - I wan't to know what love is", thirdWord: "S.& G. - Bridge Over Troubled Water", fourthWord: "S. W - I Just Called to Say I Love You", fifthWord: "Percy S. - When a Man Loves a Woman")
    let loveSongsSWE = HumTheSong(title: "Kärlekslåtar", firstWord: "Elton John - Your Song", secondWord: "Eric C. - All by my self", thirdWord: "Reo S. - Can’t Fight This Feeling", fourthWord: "Sonny n Cher - I Got You Babe", fifthWord: "Percy S. - When a Man Loves a Woman” ")
    let first70Swe = HumTheSong(title: "Soft 70´s", firstWord: "Marvin G. - Let's Get It On", secondWord: "Killing Me Softly With His Song", thirdWord: "John Lennon - Imagine", fourthWord: "Pink F. - Wish you were here", fifthWord: "Aerosmith - Dream on")
    let second70SWE = HumTheSong(title: "Hits of the 70´s", firstWord: "Bee Gees - Night Fever", secondWord: "ABBA - Dancing Queen", thirdWord: "Wild C. - Play That Funky Music", fourthWord: "Queen - Bohemian Rhapsody", fifthWord: "Eagles - Hotel California")
    let movieMusicSWE = HumTheSong(title: "Filmmusik", firstWord: "Survivor - Eye Of The Tiger ", secondWord: "Ray Parker Jr. - Ghostbusters", thirdWord: "Celine D. - My heart will go on", fourthWord: "A.- I don't want to miss a thing", fifthWord: "D. R. - Ain’t No Mountain High Enough")
    let chilldrensSongsSwe = HumTheSong(title: "Barn sånger", firstWord: "Imse vimse spindel", secondWord: "Bananer i Pyjamas", thirdWord: "Blinka lilla stjärna", fourthWord: "Demi Lovato - Let it go(frozen)", fifthWord: "Pharell Williams - Happy")
    let countrySWE = HumTheSong(title: "Country", firstWord: "Johnny C. - Walk the line", secondWord: "Nancy S. - These Boots Are Made For Walking", thirdWord: "Dolly Parton - Jolene", fourthWord: "Johnny C. - Ring of Fire", fifthWord: "Zac brown b. - Chicken fried")
    let oneHitWondersSWE = HumTheSong(title: "One hit wonders", firstWord: "Vanilla I. - Ice ice baby", secondWord: "Ba... - Who let the dogs out", thirdWord: "Aha - take on me", fourthWord: "W. C. - Play that funky music", fifthWord: "Right S... - I'm too sexy")
    let first90sSWE = HumTheSong(title: "90´s", firstWord: "Toni B. - Un-Break My Heart", secondWord: "Britney S. - Baby One More Time’", thirdWord: "R.E.M. - Losing My Religion", fourthWord: "Destiny's C. - Say my name", fifthWord: "Michael J.- Black or white")
    let latinSongsSWE = HumTheSong(title: "Latin songs", firstWord: "Luis Fonsi &... - Despacito" , secondWord: "Enrique I. - Bailando", thirdWord: "Ritchie Valens - La Bamba", fourthWord: "Ricky M. - Livin la Vida Loca", fifthWord: "Shakira - Suerte (Whenever, Wherever)")
    let summerSongsSWE = HumTheSong(title: "Sommar låtar", firstWord: "Bryan A. - Summer Of '69", secondWord: "Don H. - The Boys Of Summer", thirdWord: "Bryan H. - Teenie Weenie Bikini" , fourthWord: "Katy P. & Snoop - California Gurls", fifthWord: "Alice C. - School’s Out for Summer")
    let rapSWE = HumTheSong(title: "Rap", firstWord: "N.W.A - Fuck tha Police", secondWord: "50 Cent - In Da Club", thirdWord: "Eminem - Lose Yourself", fourthWord: "Public E. - Fight the Power", fifthWord: "Jay Z & A.K. -Empire State of Mind")
    let after2010SWE = HumTheSong(title: "Efter 2010", firstWord: "Adele - Rolling In The Deep", secondWord: "Bruno M. - Just The Way You Are", thirdWord: "LMFAO - Sexy And I Know It", fourthWord: "Macklemore & R... - Thrift Shop", fifthWord: "Carly Rae. - Call Me Maybe")
    let hardRockSWE = HumTheSong(title: "Hård Rock", firstWord: "Guns N. – Welcome To The Jungle", secondWord: "S.. – Rock You Like A Hurricane", thirdWord: "Motley C. – Dr. Feelgood", fourthWord: "Europe – The Final Countdown", fifthWord: "Iron Maiden – Run To The Hills")
    let rockOf90sSWE = HumTheSong(title: "90-tals rock", firstWord: "Nir.. - Smells Like Teen Spirit", secondWord: "Metallica - Enter Sandman", thirdWord: "Qu.. - The Show Must Go On", fourthWord: "Green Day - Basket case", fifthWord: "Soundg... - Black Hole Sun")
    let svenskSchlager = HumTheSong(title: "Svensk Schlager", firstWord: "Satelit", secondWord: "Waterloo", thirdWord: "Listen to your heartbeat", fourthWord: "Genom eld och vatten", fifthWord: "I cant go on")
    let melodifestivalenSwe = HumTheSong(title: "Melodifestivalsvinnare", firstWord: "Roger Pontare-Vindarna viskar mitt namn", secondWord: "Abba-Waterloo", thirdWord: "Loreen - Euphoria", fourthWord: "Måns Zelmerlöv - Heroes", fifthWord: "Charlotte Nilsson (Perrelli) - Tusen och en natt")
    
    let y2015Swe = HumTheSong(title: "År 2015", firstWord: "Ellie G.-Love Me Like You Do", secondWord: "OMI- Cheerleader", thirdWord: "Hozier- Take Me To Church", fourthWord: "Drake- Hotline Bling", fifthWord: "Sam S.- Stay With Me")
    let y2016Swe = HumTheSong(title: "År 2016", firstWord: "Mike P.- Took A Pill In Ibiza", secondWord: "Drake- Hotline Bling", thirdWord: "Justin B.- What Do You Mean", fourthWord: "Rihanna- Work", fifthWord: "Adele- Hello")
    let y2017Swe = HumTheSong(title: "År 2017", firstWord: "Luis F... - Despacito", secondWord: "James A. -Say You Won't Let Go", thirdWord: "Future- Mask off", fourthWord: "The Week.- I Feel It Coming", fifthWord: "Ed S.- Shape Of You")
    let y2000Swe = HumTheSong(title: "År 2000", firstWord: "U2 - Beautiful Day", secondWord: "Outcast- Ms. Jackson", thirdWord: "Eminem - Stan", fourthWord: " Daft P.- One more time", fifthWord: "Coldplay - Yellow")
    let y2008Swe = HumTheSong(title: "År 2008", firstWord: "Beyoncé - Single Ladies", secondWord: "Lady Gaga - Poker Face", thirdWord: "Katy Perry- I Kissed a Girl", fourthWord: "Jason Mraz- I’m Yours", fifthWord: "Kings of Leon - Sex On Fire")
    let y50sSwe = HumTheSong(title: "50 talet", firstWord: "Hank W.- Hey Good Lookin'", secondWord: "Little R.- Tutti-Frutti", thirdWord: "Elvis P. - Jailhouse Rock", fourthWord: "Chuck B.- Johnny B. Goode", fifthWord: "Jerry.- Great Balls Of Fire")
    let y60sSwe = HumTheSong(title: "60 talet", firstWord: "Ray C.-Hit The Road Jack", secondWord: "Ben E King- Stand By Me", thirdWord: "Rolling Stones- Satisfaction ", fourthWord: "Beatles - Yesterday", fifthWord: "Ray O. - Oh, Pretty Woman")
    let rock60sSew = HumTheSong(title: "60-tals rock", firstWord: "Byrds- Mr. Tambourine Man", secondWord: "Doors - Light My Fire", thirdWord: "Kink- You Really Got Me", fourthWord: "Bob D.- Like A Rolling Stone", fifthWord: "Beatles- Hey Jude")
    let groups70sSwe = HumTheSong(title: "70-tals grupper", firstWord: "ABBA - Mamma Mia", secondWord: "Qu..- We are the Champ...", thirdWord: "Led Ze.- Stairway to heaven", fourthWord: "Pink F.- Wish You Were Here", fifthWord: "Rolling St.- Start me up")
    let soloSingers80Swe = HumTheSong(title: "80-tals solosångare", firstWord: "Michael Jackson- Thriller", secondWord: "Phil C.-Another day in paradise", thirdWord: "George Michael- One more try", fourthWord: "Sting- Fields of gold", fifthWord: "Lionel R.- Say You, Say Me")
    let weddingSongsSwe = HumTheSong(title: "Bröllops låtar", firstWord: "John Legend - All of me", secondWord: "Bruno Mars - Marry you", thirdWord: "Ed Sh. - Thinking out loud", fourthWord: "Jason Mraz - I’m yours", fifthWord: "Eric C.- Wonderful tonight")
    let duetsSwe = HumTheSong(title: "Duetter", firstWord: "DR & LR - Endless Love", secondWord: "KR-DP - Islands In The Stream", thirdWord: "EJ&KD- Don't Go Breaking My Heart", fourthWord: "NS&FS- Somethin' Stupid", fifthWord: "JT&ON- You're The One That I Want")
    let girlGroupsSwe = HumTheSong(title: "Tjejgrupper", firstWord: "Spice Girls- Wannabe", secondWord: "Destiny's C.- Say My Name", thirdWord: "Pussycat Dolls- Don't Cha", fourthWord: "Labelle- Lady Marmalade", fifthWord: "Sister S.- We Are Family")
    let colorSongsSwe = HumTheSong(title: "Låtar om färg", firstWord: "UB40 - Red red wine", secondWord: "Eiffel 65 - Blue", thirdWord: "Beatles - Yellow Submarine", fourthWord: "Soundg.- Black hole sun", fifthWord: "Chris dB - The lady in red")
    let tvShowsSwe = HumTheSong(title: "TV-serier(namnet på serien)", firstWord: "Friends", secondWord: "Cheers", thirdWord: "The Simpsons", fourthWord: "Fresh Prince in Bel Air", fifthWord: "The big bang theory")
 
    let ukSingersSwe = HumTheSong(title: "Storbritannien", firstWord: "D M R - Come on Eileen", secondWord: "Bon...- Total eclipse of my heart", thirdWord: "Culture c. - Karma chameleon", fourthWord: "Whites. - Here i go again", fifthWord: "James B - You´re beautiful")
    let euroDance90Swe = HumTheSong(title: "Euro dance", firstWord: "Culture Beat - Mr Vain", secondWord: "Dr.Alban- Sing Hallulujah!", thirdWord: "Scatman John - Scatman", fourthWord: "Rednex - Cotton Eye Joe", fifthWord: "Reel 2 R.-I Like To Move It")
    let euroVisionSwe = HumTheSong(title: "Eurovision", firstWord: "ABBA -Waterloo", secondWord: "Alexander Rybak – Fairytale", thirdWord: "Helena Pap. – My number 1", fourthWord: "Olsen.– Fly On The Wings Of Love", fifthWord: "Lordi – Hard Rock Hallelujah")
    //11 till
    let americanSoloSingersSwe = HumTheSong(title: "Amerikanska solosångare", firstWord: "Frank S.- Fly me too the moon", secondWord: "Michael J. - Beat it", thirdWord: "Elvis - Jailhouse rock", fourthWord: "Stevie W - For once in my life", fifthWord: "Willie N.- On the road again")
    let americanBandsSwe = HumTheSong(title: "Amerikanska band", firstWord: "Nirvana- Smells like teen sp..", secondWord: "Pear Jam- Alive", thirdWord: "Foo fighters-Learn to fly", fourthWord: "REM-Losing my religion", fifthWord: "Green Day- Good Riddance")
    let europeanBandsSwe = HumTheSong(title: "Europeiska band", firstWord: "Roxette- Joyride", secondWord: "U2- With or without you", thirdWord: "A-ha - Take on me", fourthWord: "Ace of base - The sign", fifthWord: "ABBA- Dancing queen")
    let europeanSoloArtistsSwe = HumTheSong(title: "Europiska soloartister", firstWord: "Adele- Rolling in the deep", secondWord: "Sin...-Nothing compares 2 U", thirdWord: "Enrique E. -Bailamos", fourthWord: "Pitbull - Give me everything ", fifthWord: "Leona Lewis- Bleeding love")
    let songsAboutUSASwe = HumTheSong(title: "Låtar om USA", firstWord: "Bruce S- Born in the U.S.A", secondWord: "Don McLean- American Pie", thirdWord: "Lenny K.- American Woman", fourthWord: "James Br.- Living in America", fifthWord: "Miley Cyrus- Party in the USA")
    let y2011Swe = HumTheSong(title: "År 2011", firstWord: "Katy Perry- Firework", secondWord: "Bruno Mars- Grenade", thirdWord: "P!nk- Raise Your Glass", fourthWord: "Lady Gaga- Born This Way", fifthWord: "Maroon 5- Moves Like Jagger")
    let y2012Swe = HumTheSong(title: "År 2012", firstWord: "Carly R. J.-Call Me Maybe", secondWord: "Rihanna-We Found Love", thirdWord: "One...- What Makes You Beautiful", fourthWord: "LMFAO- Sexy And I Know It", fifthWord: "fun.- Some Nights")
    let y2013SWe = HumTheSong(title: "År 2013", firstWord: "Macklemore- Thrift Shop", secondWord: "Baauer- Harlem Shake", thirdWord: "Miley C.- Wrecking Ball", fourthWord: "Avicii- Wake Me Up!", fifthWord: "SHM- Don't You Worry Child")
    let y2014Swe = HumTheSong(title: "År 2014", firstWord: "Pharrell Williams- Happy", secondWord: "Passenger- Let Her Go", thirdWord: "Aloe Blacc- The Man", fourthWord: "Avicii- Hey Brother", fifthWord: "Sia- Chandelier")
    let femaleArtistSwe = HumTheSong(title: "Kvinnliga sångare", firstWord: "Ariana Grande- Santa tell me", secondWord: "Rihanna - Umbrella", thirdWord: "Beyonce - Halo", fourthWord: "Lady Gaga- Paparazzi ", fifthWord: "Britney S.- Oops I did it again")
     let songsAboutFoodAndDrinksSwe = HumTheSong(title: "Låtar om mat/dryck", firstWord: "Aaron carter - I want Candy", secondWord: "The Chordetts - Lollipop", thirdWord: "Ub40 - Red red wine", fourthWord: "50 cent- Candy shop", fifthWord: "Zac Brown Band- Chicken fried")
    
    
    
    //Team Challenge Swe (56 + 1 tmp)
    let tmpTeamChallenge = TeamChallenge(title: "Missing card", challenge: "There is no Team Challenge card in your own deck")
    let cities1Swe  = TeamChallenge(title: "Geografi", challenge: "Nämn minst sex huvudstäder i Afrika innan tiden runnit ut")
    let physicalExercise1Swe  = TeamChallenge(title: "Fysisk aktivitet", challenge: "Stå upp på raka ben. Om alla i laget kan nudda golvet med sina fingertoppar har ni klarat utmaningen.")
    let physicalExercise2Swe  = TeamChallenge(title: "Fysisk aktivitet", challenge: "Alla i laget måste göra 15 armhävningar innan tiden har runnit ut för att ni ska lyckas med utmaningen.")
    let physicalExercise3Swe  = TeamChallenge(title: "Balans", challenge: "Stå på tå på ett ben i minst 20 sekunder innan tiden runnit ut. Om någon i laget klarar det får ni full poäng.")
    let foodSwe  = TeamChallenge(title: "Mat", challenge: "Nämn totalt 6 maträtter som börjar med alfabetets sex första bokstäver(A-F). En maträtt för varje bokstav.")
    let carsSwe = TeamChallenge(title: "Fordon", challenge: "Kan ni som lag komma på 10 bilmärken innan tiden är ute?")
    let physicalExercise4Swe  = TeamChallenge(title: "Smidighet", challenge: "Om någon i laget kan kyssa sin egen fot har ni lyckats med utmaningen")
    let physicalExercise5Swe  = TeamChallenge(title: "Fysisk utmaning", challenge: "Alla spelare i laget ska lägga sig på rygg på golvet. Om alla därfrån lyckas ställa sig upp utan att använda armarna eller händerna har ni klarat utmaningen")
    let famousPersonsSwe = TeamChallenge(title: "Kända personer", challenge: "Kan laget komma på fyra kända personer med förnamnet Kim?")
    let music2Swe = TeamChallenge(title: "Musik", challenge: "Kan laget sjunga den försa delen av låten ”We are the world”? Om ni klarar de första 20 orden får ni full poäng")
    let seriousSwe = TeamChallenge(title: "Seriositet", challenge: "Ingen i laget får skratta under 45 sekunder. Resterande lag får göra allt för att få er att misslyckas med utmaningen")
    let fishSwe = TeamChallenge(title: "I havet", challenge: "Kan laget tillsammans nämna 8 olika sorters fiskar innan tiden runnit ut")
    let choirSwe = TeamChallenge(title: "Kör", challenge: "Om alla i laget samstämmigt kan vissla ”Jingle Bells”, då har ni lyckats med utmaningen")
    let namesSwe = TeamChallenge(title: "Namn", challenge: "Kan laget nämna 10 flicknamn som börjar med bokstaven ”S” innan tiden runnit ut")
    let names2Swe = TeamChallenge(title: "Namn", challenge: "Kan laget nämna 10 pojknamn som börjar med bokstaven ”M” innan tiden runnit ut")
    let wordsSwe = TeamChallenge(title: "Ord", challenge: "Kan laget komma på fem synonymer till ordet ”näsa”")
    let languageSwe = TeamChallenge(title: "Språk", challenge: "Kan laget säga ”tack” på minst 6 olika språk")
    let sportsSwe = TeamChallenge(title: "Sporter", challenge: "Kan laget nämna 10 sporter där man INTE använder sig av en boll")
    let dogsSwe = TeamChallenge(title: "Djur", challenge: "Kan laget nämna minst 10 hundraser innan tiden runnit ut ")
    let worldSwe = TeamChallenge(title: "Världen", challenge: "Kan laget nämna minst 8 länder där man talar spanska innan tiden runnit ut?")
    let usaSwe = TeamChallenge(title: "USA", challenge: "Kan laget nämna minst fyra stater i USA som börjar på bokstaven ”A”")
    let countriesOnBSwe = TeamChallenge(title: "Länder", challenge: "Kan laget nämna minst fyra länder som börjar med bokstaven ”B”")
    let moviesInNYSWe = TeamChallenge(title: "Filmer", challenge: "Kan laget nämna minst fyra filmer som utspelar sig i New York")
    let animalesWithoutTailSwe = TeamChallenge(title: "Djur", challenge: "Kan laget komma på 8 djur som inte har en svans")
    let fatalitiesSwe = TeamChallenge(title: "Omkomna kändisar", challenge: "Kan laget komma på minst fyra kändisar som har skjutits till döds")
    
    let musicGroupsSwe = TeamChallenge(title: "Musikgrupper", challenge: "Kan laget komma på 8 musikgrupper där minst en av sångarna är kvinnlig")
    let knowNamesSwe = TeamChallenge(title: "Lagkunskap", challenge: "Om ni kan berätta alla lagmedlemmars andranamn har ni klarat utmaningen. Annars har ni tiden på er att ställa ja/nej-frågor för att få fram namnen")
    let mathSwe = TeamChallenge(title: "Matematik", challenge: "Kan laget multiplicera alla speldeltagares åldrar med varandra. Efter tiden runnit ut får ni kontrollera ert svar på kalkylatorn")
    let celebertiesSwe = TeamChallenge(title: "Kändiskärlek", challenge: "Kan laget nämna minst fem kändis-par som är gifta innan tiden runnit ut")
    let sleepyAnimalesSwe = TeamChallenge(title: "Trötta djur", challenge: "Kan laget nämna minst fem djur som går i idé")
    let lastNamesSwe = TeamChallenge(title: "Efternamn", challenge: "Kan laget komma på 5 kända personer med efternamnet ”Andersson”")
    let famousKidsSwe = TeamChallenge(title: "Kändisbarn", challenge: "Kan laget nämna namnet på minst 5 barnskådespelare som slog igenom innan de fyllde 10 år")
    let islandsSwe = TeamChallenge(title: "Öar", challenge: "Kan laget nämna minst fem länder som är öar. Alltså inte har landsgräns mot ett annat land")
    let artistsSwe = TeamChallenge(title: "Konstnärer", challenge: "Kan laget nämna åtta olika konstnärer")
    let ekvatornSwe = TeamChallenge(title: "Ekvatorn", challenge: "Kan laget nämna tre länder som beskärs av ekvatorn")
    let candyBarsSwe = TeamChallenge(title: "Godis", challenge: "Kan laget nämna fem olika sorters chockladkaksmärken")
    let shoesSwe = TeamChallenge(title: "Skor", challenge: "Kan laget nämna minst åtta skomärken")
    let mobilPhoneSwe = TeamChallenge(title: "Mobiltelefoni", challenge: "Kan laget komma på fem olika mobiltelefonstillverkare")
    let disneySwe = TeamChallenge(title: "Disney", challenge: "Kan laget nämna alla de ”sju djärgarna” innan tiden runnit ut")
    let newsPapersSwe = TeamChallenge(title: "Tidningar", challenge: "Kan laget nämna minst fem olika  dagstidningar")
    let airportsSwe = TeamChallenge(title: "Flygplatser", challenge: "Kan laget komma på fem olika flygplatskoder innan tiden tagit slut?")
    let sodaSwe = TeamChallenge(title: "Läskedrycker", challenge: "Kan laget komma på 10 olika läskedrycker innan tiden runnit ut")
    let planetsSwe = TeamChallenge(title: "Space", challenge: "Kan laget nämna minst 7 av 8 planeter i vårt solsystem (Pluto räknas inte som planet)")
    let fotbollSwe2 = TeamChallenge(title: "Fotboll", challenge: "Kan laget komma på minst fem fotbollsspelare vars efternamn börjar på ”M”")
    let skiResortsSwe = TeamChallenge(title: "Skidorter", challenge: "Kan laget komma på minst sex olika skidorter")
    let musicalsSWe = TeamChallenge(title: "Musikaler", challenge: "Kan laget komma på minst sex olika musikaler")
    let yellowFruitsSwe = TeamChallenge(title: "Frukter", challenge: "Kan laget komma på 5 frukter som är gula?")
    let cityNamesSwe = TeamChallenge(title: "Huvudstäder", challenge: "Kan laget komma på minst fyra huvudstäder som börjar på samma bokstav som landet den tillhör?")
    let flowersSwe = TeamChallenge(title: "Blommor", challenge: "Kan laget komma på minst 10 olika sorters blommor")
    let headSwe = TeamChallenge(title: "Huvudet", challenge: "Kan laget komma på 5 olika saker man normalt bär på huvudet")
    let theBodySwe = TeamChallenge(title: "Kroppen", challenge: "Kan laget komma på minst 6 olika kroppsdelar man har dubbel uppsättning av")
    let countryNamesSwe = TeamChallenge(title: "Europeiska länder", challenge: "Kan laget komma på fyra europeiska länder som börjar på bokstaven ”S”")
    let loveSongsTCSwe = TeamChallenge(title: "Musik och romantik", challenge: "Kan laget komma på fyra låtar där det engelska ordet ”love” förekommer i låttexten")
    let birdsSwe = TeamChallenge(title: "Fåglar", challenge: "Kan laget komma på 10 olika fågelarter")
    let premierLeagueSwe = TeamChallenge(title: "Engelsk fotboll", challenge: "Kan laget nämna minst 8 lag som spelar i Premier League den här säsongen innan tiden runnit ut")
    
    let f1Swe = TeamChallenge(title: "Formel 1", challenge: "Kan laget nämna fem aktiva formel 1 förare innan tiden runnit ut")
    
    
    
    
    
    //Team Challenge (55 ENG)
    let cities1  = TeamChallenge(title: "Geography", challenge: "Name at least six capitals in Africa before the expiry of the time")
    let physicalExercise1  = TeamChallenge(title: "Physical Exercise", challenge: "Stand up on straight legs. If everyone in the team can reach the floor with your fingertips, you have succeeded in the challenge")
    let physicalExercise2  = TeamChallenge(title: "Physical Exercise", challenge: "All team members must make 15 push ups before the time runs out to succeed in the challenge")
    let physicalExercise3  = TeamChallenge(title: "Balance", challenge: "Stand on your toes on one leg for at least 20 seconds before the time runs out. If one in the team can do it, you have succeeded in the challenge")
    let food  = TeamChallenge(title: "Food", challenge: "Mention a total of 6 dishes starting with the alphabet's first six letters (A-F). One dish for each letter")
    let cars = TeamChallenge(title: "Vehicles", challenge: "Can you, as a team, get ten car brands before the time has expired")
    let physicalExercise4  = TeamChallenge(title: "Flexibility", challenge: "If someone in the team can kiss their own foot, you have comepleted the task")
    let physicalExercise5  = TeamChallenge(title: "Physical Exercies", challenge: "Can all players in the team rise from laying on their backs without using their arms and hands")
    let famousPersons = TeamChallenge(title: "Famous persons", challenge: "Can the team come up with 3 famous persons with the first name Kim")
    let music2 = TeamChallenge(title: "Music", challenge: "Can the team sing the first part in: ”We are the world”. At least the 20 first words.")
    let serious = TeamChallenge(title: "Seriousness", challenge: "No one in the team gets to laugh for one minute. Remaining players may do anything to make you fail")
    let fish = TeamChallenge(title: "In the sea", challenge: "Can you as a team name 8 diffrent fishes")
    let choir = TeamChallenge(title: "Choir", challenge: "If everyone in the team can whistle ”Jingle Bells” in a choir, then you've succeeded")
    let names = TeamChallenge(title: "Names", challenge: "Can the team name 10 Girl-names that begins with the letter ”S” before the time runs out")
    let names2 = TeamChallenge(title: "Names", challenge: "Can the team name 10 Boy-names that begins with the letter ”M” before the time runs out")
    let words = TeamChallenge(title: "Words", challenge: "Can the team come up with five synonyms for the word nose")
    let language = TeamChallenge(title: "Language", challenge: "Can the team say ”Thank you” in at least six different languages")
    let sports = TeamChallenge(title: "Sports", challenge: "Can the team say at least 10 sports where you do NOT use a ball")
    let dogs = TeamChallenge(title: "Animals", challenge: "Can the team mention ten different dog breeds")
    let world = TeamChallenge(title: "The World", challenge: "Can the team mention 8 different countries where you speak Spanish")
    let usa = TeamChallenge(title: "USA", challenge: "Can the team name 4 states in USA that begins with the letter ”A”")
    
    let countriesOnB = TeamChallenge(title: "Countries", challenge: "Can the team mention at least four countries that begin with the letter ”B”")
    let moviesInNY = TeamChallenge(title: "Movies", challenge: "Can the team mention at least four films that are taking place in New York")
    let animalesWithoutTail = TeamChallenge(title: "Animals", challenge: "Can the team get 8 animals that do not have a tail")
    let fatalities = TeamChallenge(title: "Dead celebrities", challenge: "Can the team come up with at least four celebrities who have been shot dead")
    
    let musicGroups = TeamChallenge(title: "Music groups", challenge: "Kan laget komma på 8 musikgrupper där minst en av sångarna är kvinnlig")
    let math = TeamChallenge(title: "Math", challenge: "Can the team multiply the age of all players in the game. After the time is up, you can check your answer to the calculator")
    let celeberties = TeamChallenge(title: "Celebrity Love", challenge: "Can the team mention at least five celebrity couples married before the time has elapsed")
    let sleepyAnimales = TeamChallenge(title: "Sleepy animals", challenge: "Can the team mention at least five animals that go to hibernate")
    let lastNames = TeamChallenge(title: "Surenames", challenge: "Can the team come up with 5 famous people with the surname ”Johnson”")
    let famousKids = TeamChallenge(title: "Famous kids", challenge: "Can the team mention the name of at least 5 children's actors who broke through before they were 10 years old")
    let islands = TeamChallenge(title: "Islands", challenge: "Can the team mention at least five countries that are islands. Thus, do not have a national border against another country")
    let artists = TeamChallenge(title: "Artists", challenge: "Can the team name eight different artists? ")
    let ekvatorn = TeamChallenge(title: "Equator", challenge: "Can the team name three countries that is on the equator")
    let candyBars = TeamChallenge(title: "Candy", challenge: "Can the team mention six different types of candy bars")
    let shoes = TeamChallenge(title: "Shoes", challenge: "Can the team name at least eight shoe brands")
    let mobilPhone = TeamChallenge(title: "Mobile phones", challenge: "Can the team come from five different mobile phone manufacturers")
    let disney = TeamChallenge(title: "Disney", challenge: "Can the team name all the 'seven dwarfs' before the time has expired")
    let newsPapers = TeamChallenge(title: "Magazines", challenge: "Can the team mention at least five different newspapers")
    let airports = TeamChallenge(title: "Airports", challenge: "Can the team get five different airport codes before time has expired?")
    let soda = TeamChallenge(title: "Soda", challenge: "Can the team get 10 different soft drinks before the time has elapsed")
    let planets = TeamChallenge(title: "Space", challenge: "Can the team mention at least 7 out of 8 planets in our solar system (Pluto does not count as the planet)")
    let fotboll2 = TeamChallenge(title: "Soccer", challenge: "Can the team get at least five football players whose last name starts with ”M”")
    let skiResorts = TeamChallenge(title: "Ski resorts", challenge: "Can the team reach at least six different ski resorts")
    let musicals = TeamChallenge(title: "Musicals", challenge: "Can the team get at least six different musicals? ")
    let yellowFruits = TeamChallenge(title: "Fruits", challenge: "Can the team get 5 fruits that are yellow?")
    let cityNames = TeamChallenge(title: "Capitals", challenge: "Can the team come with at least four capitals that begin in the same letter as the country it belongs to?")
    let flowers = TeamChallenge(title: "Flowers", challenge: "Can the team get at least 10 different kinds of flowers")
    let head = TeamChallenge(title: "The head", challenge: "Can the team come up with 5 different things that you usually wear on the head")
    let theBody = TeamChallenge(title: "The body", challenge: "Can the team get at least 6 different body parts you have a double set of")
    let countryNames = TeamChallenge(title: "European countries", challenge: "Can the team name four European countries that begin with the letter ”S”")
    let loveSongsTC = TeamChallenge(title: "Music and romance", challenge: "Can the team comes with four songs in which the English word ”love” appears in the song text")
    let birds = TeamChallenge(title: "Birds", challenge: "Can the team get 10 different bird species")
    let premierLeague = TeamChallenge(title: "English football", challenge: "Can the team mention at least 8 teams playing in the Premier League this season before the time has expired")
    let f1 = TeamChallenge(title: "Formula 1", challenge: "Can the team name five active Formula 1 drivers before the time has elapsed")
    
    //Charades SWE (57)
    let tmpCharades = Charades(title: "Missing card", firstWord: "No", secondWord: "Charades", thirdWord: "Card", fourthWord: "in", fifthWord: "own deck")
    
    let animales1Swe = Charades(title: "Djur", firstWord: "Orm", secondWord: "Myra", thirdWord: "Giraff", fourthWord: "Katt", fifthWord: "Delfin")
    let animales2Swe = Charades(title: "Djur", firstWord: "Hund", secondWord: "Val", thirdWord: "Spindel", fourthWord: "Björn", fifthWord: "Fjäril")
    let kitchenSwe = Charades(title: "I huset", firstWord: "Byrålåda", secondWord: "Gaffel", thirdWord: "Stekpanna", fourthWord: "Micro", fifthWord: "TV")
    let sports2Swe = Charades(title: "Sporter", firstWord: "Frisbee", secondWord: "Badminton", thirdWord: "Curling", fourthWord: "Dart", fifthWord: "Long jump")
    let clothesSwe = Charades(title: "Kläder", firstWord: "Strumpor", secondWord: "Shorts", thirdWord: "Underkläder", fourthWord: "Keps", fifthWord: "Väst")
    let drinksSwe = Charades(title: "Drycker", firstWord: "Mjölk", secondWord: "Öl", thirdWord: "Vatten", fourthWord: "Vin", fifthWord: "Kaffe")
    let vehiclesSwe = Charades(title: "Transport", firstWord: "Buss", secondWord: "Helikopter", thirdWord: "Tåg", fourthWord: "Cykel", fifthWord: "Teleportering")
    let electronicsSwe = Charades(title: "Elektronik", firstWord: "Platt-TV", secondWord: "Mobilladdare", thirdWord: "Lap-top", fourthWord: "Stereo", fifthWord: "Skrivare")
    let natureSwe = Charades(title: "Naturen", firstWord: "Träd", secondWord: "Mossa", thirdWord: "Berg", fourthWord: "Sjö", fifthWord: "Gräs")
    let moviesSwe = Charades(title: "Filmer", firstWord: "Gudfadern", secondWord: "Grease", thirdWord: "Dirty Dancing", fourthWord: "Spiderman", fifthWord: "Jurassic Park")
    let fruitsSwe = Charades(title: "Frukt och grönt", firstWord: "Apelsin", secondWord: "Banan", thirdWord: "Jordgubar", fourthWord: "Gurka", fifthWord: "Plommon")
    
    let furnituresSwe = Charades(title: "Inredning", firstWord: "Soffa", secondWord: "Pall", thirdWord: "Matta", fourthWord: "Tavlor", fifthWord: "Krukväxt")
    let commicsSwe = Charades(title: "Seriefigurer", firstWord: "Bamse", secondWord: "Pluto", thirdWord: "Musse Pigg", fourthWord: "Fantomen", fifthWord: "Joakim von Anka")
    let foodsSwe = Charades(title: "Mat", firstWord: "Pannkakor", secondWord: "Tacos", thirdWord: "Tapas", fourthWord: "Pizza", fifthWord: "Varmkorv")
    let sports3Swe = Charades(title: "Sporter", firstWord: "Rugby", secondWord: "Golf", thirdWord: "Konståkning", fourthWord: "Judo", fifthWord: "Handboll")
    let musicSwe = Charades(title: "Musik", firstWord: "Elgitarr", secondWord: "Trumpet", thirdWord: "Harpa", fourthWord: "Hårdrock", fifthWord: "Dirigent")
    let nationalitiesSwe = Charades(title: "Nationaliteter", firstWord: "Ryss", secondWord: "Kines", thirdWord: "Argentinare", fourthWord: "Japan", fifthWord: "Mexikanare")
    let professions1Swe = Charades(title: "Yrken", firstWord: "Målare", secondWord: "Bankman", thirdWord: "Kock", fourthWord: "Kapten", fifthWord: "Frisör")
    let professions2Swe = Charades(title: "Yrken", firstWord: "Pilot", secondWord: "Sommelier", thirdWord: "Städare", fourthWord: "IT-tekniker", fifthWord: "Advokat")
    let movieCharactersSwe = Charades(title: "Filmkaraktärer", firstWord: "Batman", secondWord: "Rocky", thirdWord: "Rose DeWitt Bucater", fourthWord: "Forrest Gump", fifthWord: "Gandalf")
    
    let danceSwe = Charades(title: "Dans", firstWord: "Flamenco", secondWord: "Bugg", thirdWord: "Partner", fourthWord: "Tango", fifthWord: "Breakdance")
    let socialMediaSwe = Charades(title: "Sociala medier", firstWord: "Instagrambild", secondWord: "Snapchat", thirdWord: "Facebook-vän", fourthWord: "Blogg", fifthWord: "Mark Zuckerberg")
    let stomachSWe = Charades(title: "Magproblem", firstWord: "Bajamaja", secondWord: "Toalettborste", thirdWord: "Diarré", fourthWord: "Spya", fifthWord: "Magknip")
    let hobbiesSwe = Charades(title: "Sällskapsspel", firstWord: "Pusselbit", secondWord: "Kortlek", thirdWord: "Schack", fourthWord: "Tärning", fifthWord: "Monopol")
    let safteySwe = Charades(title: "Säkerhet", firstWord: "Cykelhjälm", secondWord: "Lösenord", thirdWord: "Bilbälte", fourthWord: "Flytväst", fifthWord: "Övervakningskameror")
    let marriageSwe = Charades(title: "Äktenskap", firstWord: "Förlovningsring", secondWord: "Tårta", thirdWord: "Bröllopsfotograf", fourthWord: "Äktenskapsförord", fifthWord: "Smekmånad")
    let softSwe = Charades(title: "Mjukt", firstWord: "Kudde", secondWord: "Madrass", thirdWord: "Bomull", fourthWord: "Kattunge", fifthWord: "Dunfjäder")
    let hygienSwe = Charades(title: "Hygien", firstWord: "Munskölj", secondWord: "Deodorant", thirdWord: "Shamponering", fourthWord: "Fotbad", fifthWord: "Örontops")
    let toolSwe = Charades(title: "Verktyg", firstWord: "Såg", secondWord: "Hammare", thirdWord: "Skruvdragare", fourthWord: "Tumstock", fifthWord: "Skiftnyckel")
    let summerOlympicsSwe = Charades(title: "Sommar-OS", firstWord: "Fotboll", secondWord: "Marathon", thirdWord: "Spjutkastning", fourthWord: "Fjärilsim", fifthWord: "Tennis")
    let winterOlympicsSwe = Charades(title: "Vinter-OS", firstWord: "Konståkning", secondWord: "Backhoppning", thirdWord: "Ishockey", fourthWord: "Bob", fifthWord: "Skidskytte")
    let unlikeableAnimalesSwe = Charades(title: "Mindre omtyckta djur", firstWord: "Mygga", secondWord: "Skorpion", thirdWord: "Vägglöss", fourthWord: "Dammråtta", fifthWord: "Huggorm")
    let inTheBathSwe = Charades(title: "I badet", firstWord: "Simfötter", secondWord: "Magplask", thirdWord: "Snorkel", fourthWord: "Bikini", fifthWord: "Badring")

    let crimesSWe = Charades(title: "Brott", firstWord: "Rån", secondWord: "Mord", thirdWord: "Snatteri", fourthWord: "Piratkopiering", fifthWord: "Förskingring")
    let inTheFaceSwe = Charades(title: "I ansiktet", firstWord: "Ögonskugga", secondWord: "Tandställning", thirdWord: "Finnar", fourthWord: "Rynkor", fifthWord: "Brun utan sol")
    let gardenWorkSwe = Charades(title: "Trädgårdsarbete", firstWord: "Vattna gräset", secondWord: "Klippa häcken", thirdWord: "Rensa ogräs", fourthWord: "Plantera", fifthWord: "Klippa gräset")
    let inSchoolSWe = Charades(title: "I skolan", firstWord: "Läxor", secondWord: "Gymnastik", thirdWord: "Matte", fourthWord: "Svenska", fifthWord: "Kemi")
    let winterSwe = Charades(title: "På vintern", firstWord: "Skidor", secondWord: "Snö", thirdWord: "Istapp", fourthWord: "Halka", fifthWord: "Yllemössa")
    let italySwe = Charades(title: "Italien", firstWord: "Lutande tornet i Pisa", secondWord: "Colosseum", thirdWord: "Spagetti", fourthWord: "Gianluigi Buffon", fifthWord: "Pizza")
    
    let lightsSwe = Charades(title: "Ljus", firstWord: "Fackla", secondWord: "Skrivbordslampa", thirdWord: "Tändsticksask", fourthWord: "Ficklampa", fifthWord: "Strålkastare")
    let morningSwe = Charades(title: "Morgon", firstWord: "Kaffekopp", secondWord: "Snooze", thirdWord: "Frukost", fourthWord: "Gäspning", fifthWord: "Tandborstning")
    let essentialSwe = Charades(title: "Livsviktigt", firstWord: "Hjärtslag", secondWord: "Luft", thirdWord: "Vatten", fourthWord: "Solen", fifthWord: "Mat")
    let inTheCitySwe = Charades(title: "I stan", firstWord: "Kullersten", secondWord: "Övergångsställe", thirdWord: "Restaurang", fourthWord: "Park", fifthWord: "Sevärdhet")
    let treatmentsSwe = Charades(title: "Kroppsbehandlingar", firstWord: "Massage", secondWord: "Pedikyr", thirdWord: "Vaxning", fourthWord: "Kiropraktik", fifthWord: "Hudbehandling")
    let inThePhoneSwe = Charades(title: "I telefonen", firstWord: "E-moji", secondWord: "Ringsignal", thirdWord: "SMS", fourthWord: "Mobilkamera", fifthWord: "MMS")
    let gymnasticsSwe = Charades(title: "Gymnastik", firstWord: "Kullerbytta", secondWord: "Bygelhäst", thirdWord: "Hjulning", fourthWord: "Frivolt", fifthWord: "Trampett")
    let hobbies2Swe = Charades(title: "Hobbyverksamhet", firstWord: "Frimärkssamling", secondWord: "Shopping", thirdWord: "Drejning", fourthWord: "Fotografering", fifthWord: "Måleri")
    let painSwe = Charades(title: "Åkommor", firstWord: "Magont", secondWord: "Benbrott", thirdWord: "Hjärnskakning", fourthWord: "Ryggskott", fifthWord: "Halsfluss")
    let atTheBeachSwe = Charades(title: "På stranden", firstWord: "Vågor", secondWord: "Surfingbräda", thirdWord: "Sandkorn", fourthWord: "Livräddare", fifthWord: "Badbyxor")
    let consertSwe = Charades(title: "Konsert", firstWord: "Publik", secondWord: "Idol", thirdWord: "Högtalare", fourthWord: "Sångare", fifthWord: "Biljett")
    let snacksSwe = Charades(title: "Tilltugg", firstWord: "Nötter", secondWord: "Popcorn", thirdWord: "Korv med bröd", fourthWord: "Snittar", fifthWord: "Kex")
    let famousAnimalsSwe = Charades(title: "Kända djur", firstWord: "Dumbo", secondWord: "Simba", thirdWord: "Musse Pigg", fourthWord: "King Kong", fifthWord: "Turtles")
    let everyDayLifeSwe = Charades(title: "Vardagslivet", firstWord: "Brush teeth", secondWord: "Shower", thirdWord: "Doing dishes", fourthWord: "Vacuum", fifthWord: "Breathe")
    let extremSportsSwe = Charades(title: "Extrem sporter", firstWord: "Parkour", secondWord: "Motocross", thirdWord: "Wakeboarding", fourthWord: "Whitewater", fifthWord: "Hang Gliding")
    
    let yellowStuffsSwe = Charades(title: "Gula saker", firstWord: "Kyckling", secondWord: "Solstråle", thirdWord: "Äggula", fourthWord: "Banan", fifthWord: "Höstlöv")
    let swedishAtlethesSwe = Charades(title: "Kända svenska idrottare", firstWord: "Peter Forsberg", secondWord: "Björn Borg", thirdWord: "Magdalena Forsberg", fourthWord: "Anja Person", fifthWord: "Henke Larsson")
    
    
    
    
    //Charades ENG (55)
    let animales1 = Charades(title: "Animals", firstWord: "Snake", secondWord: "Ant", thirdWord: "Giraff", fourthWord: "Cat", fifthWord: "Dolphin")
    let animales2 = Charades(title: "Animals", firstWord: "Dog", secondWord: "Whale", thirdWord: "Spider", fourthWord: "Bear", fifthWord: "Butterfly")
    let kitchen = Charades(title: "In the house", firstWord: "Drawer", secondWord: "Fork", thirdWord: "Frying pan", fourthWord: "Microwave", fifthWord: "TV")
    let sports2 = Charades(title: "Sports", firstWord: "Soccer", secondWord: "Tennis", thirdWord: "Curling", fourthWord: "Dart", fifthWord: "Long jump")
    let clothes = Charades(title: "Clothes", firstWord: "Socks", secondWord: "Shorts", thirdWord: "Underwear", fourthWord: "Cap", fifthWord: "T-Shirt")
    let drinks = Charades(title: "Drinks", firstWord: "Milk", secondWord: "Beer", thirdWord: "Water", fourthWord: "Wine", fifthWord: "Coffee")
    let vehicles = Charades(title: "Transportation", firstWord: "Bus", secondWord: "Helicopter", thirdWord: "Teleportation", fourthWord: "Bike", fifthWord: "Train")
    let electronics = Charades(title: "Electronics", firstWord: "TV", secondWord: "Lamp", thirdWord: "Computer", fourthWord: "Stereo", fifthWord: "Print writer")
    let nature = Charades(title: "Nature", firstWord: "Tree", secondWord: "Flower", thirdWord: "Mountain", fourthWord: "Lake", fifthWord: "Grass")
    let movies = Charades(title: "Movies", firstWord: "The Godfather", secondWord: "Grease", thirdWord: "Dirty Dancing", fourthWord: "Spiderman", fifthWord: "Jurassic Park")
    let fruits = Charades(title: "Fruits and greens", firstWord: "Orange", secondWord: "Banana", thirdWord: "Strawberry", fourthWord: "Cucumber", fifthWord: "Plum")
    let italy = Charades(title: "Italy", firstWord: "Leaning Tower of Pisa", secondWord: "Colosseum", thirdWord: "Spaghetti", fourthWord: "Gianluigi Buffon", fifthWord: "Pizza")
    let furnitures = Charades(title: "Furniture", firstWord: "Couch", secondWord: "Stool", thirdWord: "Carpet", fourthWord: "Paintings", fifthWord: "Houseplant")
    let commics = Charades(title: "Cartoon characters", firstWord: "Lucky Luke", secondWord: "Pluto", thirdWord: "Mickey mouse", fourthWord: "Popeye", fifthWord: "Scrooge McDuck")
    let foods = Charades(title: "Food", firstWord: "Pancakes", secondWord: "Tacos", thirdWord: "Tapas", fourthWord: "Pizza", fifthWord: "Hot dogs")
    
    let sports3 = Charades(title: "Sports", firstWord: "Rugby", secondWord: "Golf", thirdWord: "Figure skating", fourthWord: "Judo", fifthWord: "Handball")
    let music = Charades(title: "Music", firstWord: "Electric guitar", secondWord: "Trumpet", thirdWord: "Harp", fourthWord: "Heavy metal", fifthWord: "Conductor")
    let nationalities = Charades(title: "Nationalities", firstWord: "Russian", secondWord: "Chinese", thirdWord: "Argentinean", fourthWord: "Japanese", fifthWord: "Mexican")
    let professions1 = Charades(title: "Professions", firstWord: "Painter", secondWord: "Banker", thirdWord: "Chef", fourthWord: "Capten", fifthWord: "Hairdresser")
    let professions2 = Charades(title: "Professions", firstWord: "Pilot", secondWord: "Sommelier", thirdWord: "Cleaner", fourthWord: "Engineer", fifthWord: "Lawyer")
    let movieCharacters = Charades(title: "Movie characters", firstWord: "Batman", secondWord: "Rocky", thirdWord: "Rose DeWitt Bucater", fourthWord: "Forrest Gump", fifthWord: "Gandalf")
    let dance = Charades(title: "Dance", firstWord: "Flamenco", secondWord: "Cheerleading", thirdWord: "Partner", fourthWord: "Tango", fifthWord: "Breakdance")
    let socialMedia = Charades(title: "Social media", firstWord: "Instagram picture", secondWord: "Snapchat", thirdWord: "Facebook-vän", fourthWord: "Blog", fifthWord: "Mark Zuckerberg")
    let stomach = Charades(title: "Stomach Problems", firstWord: "Privy", secondWord: "Toilet Brush", thirdWord: "Diarrhea", fourthWord: "Vomit", fifthWord: "Belly-ache")
    let hobbies = Charades(title: "Parlor Games", firstWord: "Puzzle", secondWord: "Deck of cards", thirdWord: "Chess", fourthWord: "Dice", fifthWord: "Monopoly")
    
    let saftey = Charades(title: "Saftey", firstWord: "Bicycle helmet", secondWord: "Password", thirdWord: "Seat belts", fourthWord: "Life vest", fifthWord: "Surveillance cameras")
    let marriage = Charades(title: "Marriage", firstWord: "Engagement ring", secondWord: "Cake", thirdWord: "Wedding Photographer", fourthWord: "Prenuptial", fifthWord: "Honeymoon")
    let soft = Charades(title: "Soft", firstWord: "Pillow", secondWord: "Mattress", thirdWord: "Cotton", fourthWord: "Kitten", fifthWord: "fluff")
    let hygien = Charades(title: "Hygiene", firstWord: "Mouthwash", secondWord: "Deodorant", thirdWord: "Shampooing", fourthWord: "Footbath", fifthWord: "Ear Tops")
    let tool = Charades(title: "Tools", firstWord: "Saw", secondWord: "Hammer", thirdWord: "Screwdrivers", fourthWord: "Folding rule", fifthWord: "Wrench")
    let summerOlympics = Charades(title: "Summer olympics", firstWord: "Soccer", secondWord: "Marathon", thirdWord: "Javelin-throwing", fourthWord: "Swimming", fifthWord: "Tennis")
    let winterOlympics = Charades(title: "Winter Olympics", firstWord: "Figure skating", secondWord: "Ski jumping", thirdWord: "Ice Hockey", fourthWord: "Bob", fifthWord: "Biathlon")
    let yellowStuffs = Charades(title: "Yellow stuffs", firstWord: "Poult", secondWord: "Sunbeam", thirdWord: "Yolk", fourthWord: "Banana", fifthWord: "Autumn leaf")
    let unlikeableAnimales = Charades(title: "Less-favored animals", firstWord: "Mosquito", secondWord: "Scorpion", thirdWord: "Bedbugs", fourthWord: "Dust Rat", fifthWord: "Snake")
    let inTheBath = Charades(title: "In the bath", firstWord: "Flippers", secondWord: "Beach ball", thirdWord: "Snorkel", fourthWord: "Bikini", fifthWord: "Inflatable Ring")
    let crimes = Charades(title: "Crimes", firstWord: "Robbery", secondWord: "Murder", thirdWord: "Shoplifting", fourthWord: "Piracy", fifthWord: "Embezzlement")
    let inTheFace = Charades(title: "I the face", firstWord: "Eye shadow", secondWord: "Braces", thirdWord: "Pimples", fourthWord: "Wrinkles", fifthWord: "Nostril")
    let gardenWork = Charades(title: "Garden work", firstWord: "Water the grass", secondWord: "Trim the hedge", thirdWord: "Weeding", fourthWord: "Plant", fifthWord: "Move the lawn")
    let inSchool = Charades(title: "In school", firstWord: "Home work", secondWord: "Physical education", thirdWord: "Math", fourthWord: "English", fifthWord: "Chemistry")
    let winter = Charades(title: "Winter", firstWord: "Ski", secondWord: "Snow", thirdWord: "Icicle", fourthWord: "Slipperiness", fifthWord: "Wool Hat")
    
    let lights = Charades(title: "Lights", firstWord: "Torch", secondWord: "Desk Lamp", thirdWord: "Matchbox", fourthWord: "Flashlight", fifthWord: "Headlamp")
    let morning = Charades(title: "Morning", firstWord: "Coffee cup", secondWord: "Snooze", thirdWord: "Breakfast", fourthWord: "Yawn", fifthWord: "Brushing")
    let essential = Charades(title: "Vital", firstWord: "Heartbeat", secondWord: "Air", thirdWord: "Water", fourthWord: "Sun", fifthWord: "Food")
    let inTheCity = Charades(title: "In the city", firstWord: "Cobblestone", secondWord: "Pedestrian crossing", thirdWord: "Restaurant", fourthWord: "Park", fifthWord: "Sight")
    let treatments = Charades(title: "Treatments", firstWord: "Massage", secondWord: "Pedicure", thirdWord: "Waxing", fourthWord: "Chiropractic", fifthWord: "Skin Treatment")
    let inThePhone = Charades(title: "In the phone", firstWord: "E-moji", secondWord: "Ringing", thirdWord: "SMS", fourthWord: "Mobile camera", fifthWord: "MMS")
    let gymnastics = Charades(title: "Gymnastics", firstWord: "Somersault", secondWord: "Vaulting horse", thirdWord: "Cartwheel", fourthWord: "Balance beam", fifthWord: "Trampette")
    let hobbies2 = Charades(title: "Hobbies", firstWord: "Stamp collection", secondWord: "Shopping", thirdWord: "Pottery", fourthWord: "Photographing", fifthWord: "Painting")
    let pain = Charades(title: "Pain", firstWord: "Stomach pain", secondWord: "Fracture", thirdWord: "Concussion", fourthWord: "Lumbago", fifthWord: "Tonsillitis")
    let atTheBeach = Charades(title: "At the beach", firstWord: "Waves", secondWord: "Surfboard", thirdWord: "Grain of sand", fourthWord: "Lifeguard", fifthWord: "Swimming trunks")
    let consert = Charades(title: "Concert", firstWord: "Audience", secondWord: "Idol", thirdWord: "Speakers", fourthWord: "Singer", fifthWord: "Ticket")
    let snacks = Charades(title: "Snacks", firstWord: "Nuts", secondWord: "Popcorn", thirdWord: "Hot dogs", fourthWord: "Chips", fifthWord: "Biscuit")
    let famousAnimals = Charades(title: "Famous animals", firstWord: "Dumbo", secondWord: "Simba", thirdWord: "Mickey Mouse", fourthWord: "King Kong", fifthWord: "Turtles")
    
    let everyDayLife = Charades(title: "Every day life", firstWord: "Brush teeth", secondWord: "Shower", thirdWord: "Doing dishes", fourthWord: "Vacuum", fifthWord: "Breathe")
    let extremSports = Charades(title: "Extreme sports", firstWord: "Parkour", secondWord: "Motocross", thirdWord: "Wakeboarding", fourthWord: "Whitewater", fifthWord: "Hang Gliding")
    
    
    
    
    
    
    public func getSortedTeams()->[Team]{
        return LocalDataBase.teamArray.sorted{ $0.points > $1.points }
        
    }
    
    func randomGenerator(max maxNumber: Int) -> Int {
        return Int(arc4random_uniform(UInt32(maxNumber)))
    }
    
    public func upDateCoreDateOnFirstLaunch(){
        if(CoreDataHandler.fetchWithOtherWordsCount()!.count == 0){
            let _ = CoreDataHandler.saveWithOtherWordsCount(index: 0)
            LocalDataBase.withOtherWordsCount = 0
        }
        else{
            LocalDataBase.withOtherWordsCount = Int(CoreDataHandler.fetchWithOtherWordsCount()![0].index)
            
        }
        
        if(CoreDataHandler.fetchCharadesCount()!.count == 0){
            let _ = CoreDataHandler.saveCharadesCount(index: 0)
            LocalDataBase.charadesCount = 0
        }
        else{
            LocalDataBase.charadesCount = Int(CoreDataHandler.fetchCharadesCount()![0].index)
            
        }
        
        if(CoreDataHandler.fetchTeamChallengeCount()!.count == 0){
            let _ = CoreDataHandler.saveTeamChallengeCount(index: 0)
            LocalDataBase.teamChallengeCount = 0
        }
        else{
            LocalDataBase.teamChallengeCount = Int(CoreDataHandler.fetchTeamChallengeCount()![0].index)
            
        }
        if(CoreDataHandler.fetchCanYouFigureItOutCount()!.count == 0){
            let _ = CoreDataHandler.saveCanYouFigureItOutCount(index: 0)
            LocalDataBase.canYouFigureItOutCount = 0
        }
        else{
            LocalDataBase.canYouFigureItOutCount = Int(CoreDataHandler.fetchCanYouFigureItOutCount()![0].index)
            
        }
        if(CoreDataHandler.fetchHumTheSongCount()!.count == 0){
            let _ = CoreDataHandler.saveHumTheSongCount(index: 0)
            LocalDataBase.humTheSongCount = 0
        }
        else{
            LocalDataBase.humTheSongCount = Int(CoreDataHandler.fetchHumTheSongCount()![0].index)
            
        }
        
    }
    
    
    public func updateTheListCount(index: Int){
        if(index == 0){
            if(CoreDataHandler.fetchWithOtherWordsCount()!.count == 0){
                let _ = CoreDataHandler.saveWithOtherWordsCount(index: 1)
            }
            else{
                if(LocalDataBase.withOtherWordsCount<self.withOtherWordsList.count-1){
                    let _ = CoreDataHandler.upDateWithOtherWordsCount(withOtherWordsCount: CoreDataHandler.fetchWithOtherWordsCount()![0], index: LocalDataBase.withOtherWordsCount+1)
                } else{
                    let _ = CoreDataHandler.upDateWithOtherWordsCount(withOtherWordsCount: CoreDataHandler.fetchWithOtherWordsCount()![0], index: 0)
                }
                LocalDataBase.withOtherWordsCount = Int(CoreDataHandler.fetchWithOtherWordsCount()![0].index)
            }
        }
        
        if(index == 1){
            if(CoreDataHandler.fetchCharadesCount()!.count == 0){
                let _ = CoreDataHandler.saveCharadesCount(index: 1)
            }
            else{
                if(LocalDataBase.charadesCount<self.charadeList.count-1){
                    let _ = CoreDataHandler.upDateCharadesCount(charadesCount: CoreDataHandler.fetchCharadesCount()![0], index: LocalDataBase.charadesCount+1)
                } else{
                    let _ = CoreDataHandler.upDateCharadesCount(charadesCount: CoreDataHandler.fetchCharadesCount()![0], index: 0)
                }
                LocalDataBase.charadesCount = Int(CoreDataHandler.fetchCharadesCount()![0].index)
            }
        }
        
        if (index == 2){
            if(CoreDataHandler.fetchTeamChallengeCount()!.count == 0){
                let _ = CoreDataHandler.saveTeamChallengeCount(index: 1)
            }
            else{
                if(LocalDataBase.teamChallengeCount<self.teamChallengeList.count-1){
                    let _ = CoreDataHandler.upDateTeamChallengeCount(teamChallengeCount: CoreDataHandler.fetchTeamChallengeCount()![0], index: LocalDataBase.teamChallengeCount+1)
                    
                } else{
                    let _ = CoreDataHandler.upDateTeamChallengeCount(teamChallengeCount: CoreDataHandler.fetchTeamChallengeCount()![0], index: 0)
                }
                LocalDataBase.teamChallengeCount = Int(CoreDataHandler.fetchTeamChallengeCount()![0].index)
            }
        }
        
        if (index == 3){
            if(CoreDataHandler.fetchCanYouFigureItOutCount()!.count == 0){
                let _ = CoreDataHandler.saveCanYouFigureItOutCount(index: 1)
            }
            else{
                if(LocalDataBase.canYouFigureItOutCount<self.canYouFigureItOutList.count-1){
                    let _ = CoreDataHandler.upDateCanYouFigureItOutCount(canYouFigureItOutCount: CoreDataHandler.fetchCanYouFigureItOutCount()![0], index: LocalDataBase.canYouFigureItOutCount+1)
                    
                } else{
                    let _ = CoreDataHandler.upDateCanYouFigureItOutCount(canYouFigureItOutCount: CoreDataHandler.fetchCanYouFigureItOutCount()![0], index: 0)
                }
                LocalDataBase.canYouFigureItOutCount = Int(CoreDataHandler.fetchCanYouFigureItOutCount()![0].index)
            }
        }
        
        if(index == 4){
            if(CoreDataHandler.fetchHumTheSongCount()!.count == 0){
                let _ = CoreDataHandler.saveHumTheSongCount(index: 1)
            }
            else{
                if(LocalDataBase.humTheSongCount<self.humTheSongList.count-1){
                    let _ = CoreDataHandler.upDateHumTheSongCount(humTheSongCount: CoreDataHandler.fetchHumTheSongCount()![0], index: LocalDataBase.humTheSongCount+1)
                    
                } else{
                    let _ = CoreDataHandler.upDateHumTheSongCount(humTheSongCount: CoreDataHandler.fetchHumTheSongCount()![0], index: 0)
                }
                LocalDataBase.humTheSongCount = Int(CoreDataHandler.fetchHumTheSongCount()![0].index)
            }
        }
    }
    
    
    public func getIndexForEachList(index: Int) ->Int{
        
        switch (index){
        case 0:
            return LocalDataBase.withOtherWordsCount
        case 1:
            return LocalDataBase.charadesCount
        case 2:
            return LocalDataBase.teamChallengeCount
        case 3:
            return LocalDataBase.canYouFigureItOutCount
        case 4:
            return LocalDataBase.humTheSongCount
        default:
            return 0
        }
    }
    
    public func getSubjectFrom(list: Int)-> String{
        switch(list){
        case 0:
            return withOtherWordsList[LocalDataBase.withOtherWordsCount].title
        case 1:
            return charadeList[LocalDataBase.charadesCount].title
        case 2:
            return teamChallengeList[LocalDataBase.teamChallengeCount].title
        case 3:
            return canYouFigureItOutList[LocalDataBase.canYouFigureItOutCount].subject
        case 4:
            return humTheSongList[LocalDataBase.humTheSongCount].title
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
            let tmpString = NSLocalizedString("first_team_to_play", comment: "")
            string = String(format: tmpString, team.name)
        }
        else if(currentPosition == 1){
            let tmpString = NSLocalizedString("if_team_is_first", comment: "")
            string = String(format: tmpString, team.name)
        }
        else if(currentPosition == sortedTeamArray.count){
            let tmpString = NSLocalizedString("if_team_is_last", comment: "")
            string = String(format: tmpString, team.name)
        }
        else {
            let tmpString = NSLocalizedString("if_position_unknown", comment: "")
            string = String(format: tmpString, team.name)
        }
        return string
    }
    
    public func setTextViewInPopUp(team: Team, gameNumber: Int, title: String)->String{
        var string = ""
        
        if (gameNumber == 0){
            let tmpString = NSLocalizedString("if_game_is_withOtherWords", comment: "")
            string = String(format: tmpString, team.players[randomGenerator(max: team.players.count)].name)
        }
        else if (gameNumber == 1){
            let tmpString = NSLocalizedString("if_game_is_charades", comment: "")
            string = String(format: tmpString, team.players[randomGenerator(max: team.players.count)].name)
        }
        else if (gameNumber == 2){
            let tmpString = NSLocalizedString("if_game_is_teamChallenge", comment: "")
            string = String(format: tmpString, team.name)
        }
        else if (gameNumber == 3){
            let tmpString = NSLocalizedString("if_game_is_canYouFigureItOut", comment: "")
            string = String(format: tmpString, team.name)
            
        }
        else if (gameNumber == 4){
            let tmpString = NSLocalizedString("if_game_is_humTheSong", comment: "")
            string = String(format: tmpString, team.players[randomGenerator(max: team.players.count)].name)
        }
        return string
    }
    
    
    public func setTextViewInModalView(points: Int, game: Int)->String{
        var string = ""
        if (game == 0) {
            if (points == 5){
                string = NSLocalizedString("if_wordPoints_is_5", comment: "")
            }
            else if (points == 4){
                string = NSLocalizedString("if_wordPoints_is_4", comment: "")
            }
            else if (points == 3){
                string = NSLocalizedString("if_wordPoints_is_3", comment: "")
            }
            else if (points == 2){
                string = NSLocalizedString("if_wordPoints_is_2", comment: "")
            }
            else if (points == 1){
                string = NSLocalizedString("if_wordPoints_is_1", comment: "")
            }
            else if (points == 0){
                string = NSLocalizedString("if_wordPoints_is_0", comment: "")
            }
            
        }
        else if (game == 1){
            if (points == 5){
                string = NSLocalizedString("if_charades_is_5", comment: "")
            }
            else if (points == 4){
                string = NSLocalizedString("if_charades_is_4", comment: "")
            }
            else if (points == 3){
                string = NSLocalizedString("if_charades_is_3", comment: "")
            }
            else if (points == 2){
                string = NSLocalizedString("if_charades_is_2", comment: "")
            }
            else if (points == 1){
                string = NSLocalizedString("if_charades_is_1", comment: "")
            }
            else if (points == 0){
                string = NSLocalizedString("if_charades_is_0", comment: "")
            }
            
        }
        else if (game == 2){
            if (points == 5){
                string = NSLocalizedString("if_tc_is_5", comment: "")
            }
            if (points == 0){
                string = NSLocalizedString("if_tc_is_0", comment: "")
            }
        }
        else if (game == 3){
            if (points == 5){
                string = NSLocalizedString("if_cyfio_is_5", comment: "")
            }
            else if (points == 4){
                string = NSLocalizedString("if_cyfio_is_4", comment: "")
            }
            else if (points == 3){
                string = NSLocalizedString("if_cyfio_is_3", comment: "")
            }
            else if (points == 2){
                string = NSLocalizedString("if_cyfio_is_2", comment: "")
            }
            else if (points == 1){
                string = NSLocalizedString("if_cyfio_is_1", comment: "")
            }
            else if (points == 0){
                string = NSLocalizedString("if_cyfio_is_0", comment: "")
            }
        }
        else if (game == 4){
            if (points == 5){
                string = NSLocalizedString("if_hum_is_5", comment: "")
            }
            else if (points == 4){
                string = NSLocalizedString("if_hum_is_4", comment: "")
            }
            else if (points == 3){
                string = NSLocalizedString("if_hum_is_3", comment: "")
            }
            else if (points == 2){
                string = NSLocalizedString("if_hum_is_2", comment: "")
            }
            else if (points == 1){
                string = NSLocalizedString("if_hum_is_1", comment: "")
            }
            else if (points == 0){
                string = NSLocalizedString("if_hum_is_0", comment: "")
            }
            
        }
        return string
        
    }
    
}










