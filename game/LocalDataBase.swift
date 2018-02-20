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
    
    public var arrayOfSubjects = [Any]()
    
    
    init() {
        self.arrayOfSubjects.append(withOtherWordsList)
        self.arrayOfSubjects.append(charadeList)
        self.arrayOfSubjects.append(teamChallengeList)
        self.arrayOfSubjects.append(canYouFigureItOutList)
        self.arrayOfSubjects.append(humTheSongList)
        
        
        if(LocalDataBase.cardDeck.contains(1)){
            //(20)
            self.charadeList.append(animales1Swe)
            self.charadeList.append(animales2Swe)
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
            self.charadeList.append(sports3Swe)
            self.charadeList.append(musicSwe)
            self.charadeList.append(nationalitiesSwe)
            self.charadeList.append(professions1Swe)
            self.charadeList.append(professions2Swe)
            self.charadeList.append(movieCharactersSwe)
            
            //(20)
            self.teamChallengeList.append(cities1Swe)
            self.teamChallengeList.append(physicalExercise1Swe)
            self.teamChallengeList.append(physicalExercise2Swe)
            self.teamChallengeList.append(physicalExercise3Swe)
            self.teamChallengeList.append(physicalExercise4Swe)
            self.teamChallengeList.append(physicalExercise5Swe)
            self.teamChallengeList.append(foodSwe)
            self.teamChallengeList.append(carsSwe)
            self.teamChallengeList.append(famousPersonsSwe)
            self.teamChallengeList.append(music2Swe)
            self.teamChallengeList.append(seriousSwe)
            self.teamChallengeList.append(fishSwe)
            self.teamChallengeList.append(choirSwe)
            self.teamChallengeList.append(wordsSwe)
            self.teamChallengeList.append(languageSwe)
            self.teamChallengeList.append(namesSwe)
            self.teamChallengeList.append(names2Swe)
            self.teamChallengeList.append(sportsSwe)
            self.teamChallengeList.append(worldSwe)
            self.teamChallengeList.append(usaSwe)
            
            //(15)
            self.withOtherWordsList.append(capitalCitiesSwe)
            self.withOtherWordsList.append(beersSwe)
            self.withOtherWordsList.append(fastFoodRestauransSwe)
            self.withOtherWordsList.append(inTheGroceryStoreSwe)
            self.withOtherWordsList.append(inYourHomeSwe)
            self.withOtherWordsList.append(iSverigeSwe)
            self.withOtherWordsList.append(famousWomenOver50Swe)
            self.withOtherWordsList.append(legendaryWomensSwe)
            self.withOtherWordsList.append(historicalPersonsSwe)
            self.withOtherWordsList.append(menOver50Swe)
            self.withOtherWordsList.append(clothes2Swe)
            self.withOtherWordsList.append(fictitiousPersonsSwe)
            self.withOtherWordsList.append(proffesions3Swe)
            self.withOtherWordsList.append(criminalsSwe)
            self.withOtherWordsList.append(inTheBathRoomSwe)
            
            
            //(20)
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
            self.canYouFigureItOutList.append(massling)
            self.canYouFigureItOutList.append(tiger)
            self.canYouFigureItOutList.append(gt)
            self.canYouFigureItOutList.append(bach)
            self.canYouFigureItOutList.append(beiber)
            
            
            
            //Hum the song (20)
            self.humTheSongList.append(svenskSchlager)
            self.humTheSongList.append(boyBand1)
            self.humTheSongList.append(first80)
            self.humTheSongList.append(second80)
            self.humTheSongList.append(hipHopRnB1)
            self.humTheSongList.append(beatles)
            self.humTheSongList.append(house)
            self.humTheSongList.append(disco)
            self.humTheSongList.append(classicRock)
            self.humTheSongList.append(loveballads)
            self.humTheSongList.append(loveSongs)
            self.humTheSongList.append(first70)
            self.humTheSongList.append(movieMusic)
            self.humTheSongList.append(chilldrensSongs)
            self.humTheSongList.append(country)
            self.humTheSongList.append(oneHitWonders)
            self.humTheSongList.append(first90s)
            self.humTheSongList.append(latinSongs)
            self.humTheSongList.append(summerSongs)
            self.humTheSongList.append(after2010)
            
            
       
            
            
            
        }
        if(LocalDataBase.cardDeck.contains(2)){
            self.withOtherWordsList.append(capitalCitiesSwe)
            
            self.teamChallengeList.append(dogsSwe)
            
            self.humTheSongList.append(rap)
            self.humTheSongList.append(second70)
            self.humTheSongList.append(hardRock)
            self.humTheSongList.append(rockOf90s)
            self.humTheSongList.append(melodifestivalenSwe)
            self.humTheSongList.append(hipHopRnB2)
            
            self.canYouFigureItOutList.append(merkel)
            self.canYouFigureItOutList.append(eight)
            self.canYouFigureItOutList.append(koranen)
            
            
        }
        if(LocalDataBase.cardDeck.contains(3)){
            addCoreDataToWithOtherWordsList()
            
        }
        
        
        
        // With other Words append
        
        
        //Can you figure it out?
      
        
        
        
        
        //Team Challenge (20 st)
        //        self.teamChallengeList.append(cities1)
        //        self.teamChallengeList.append(physicalExercise1)
        //        self.teamChallengeList.append(physicalExercise2)
        //        self.teamChallengeList.append(physicalExercise3)
        //        self.teamChallengeList.append(physicalExercise4)
        //        self.teamChallengeList.append(physicalExercise5)
        //        self.teamChallengeList.append(food)
        //        self.teamChallengeList.append(cars)
        //        self.teamChallengeList.append(famousPersons)
        //        self.teamChallengeList.append(music2)
        //        self.teamChallengeList.append(serious)
        //        self.teamChallengeList.append(fish)
        //        self.teamChallengeList.append(choir)
        //        self.teamChallengeList.append(words)
        //        self.teamChallengeList.append(language)
        //        self.teamChallengeList.append(names)
        //        self.teamChallengeList.append(names2)
        //        self.teamChallengeList.append(sports)
        //        self.teamChallengeList.append(world)
        //        self.teamChallengeList.append(usa)
        //        self.teamChallengeList.append(dogs)
        
        
        //Charades ENG
        self.charadesArrayEng1.append(animales1)
        self.charadesArrayEng1.append(animales2)
        self.charadesArrayEng1.append(sports2)
        self.charadesArrayEng1.append(kitchen)
        self.charadesArrayEng1.append(fruits)
        self.charadesArrayEng1.append(movies)
        self.charadesArrayEng1.append(vehicles)
        self.charadesArrayEng1.append(electronics)
        self.charadesArrayEng1.append(clothes)
        self.charadesArrayEng1.append(nature)
        self.charadesArrayEng1.append(drinks)
        
        
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
    
    
    
    // WithOtherWords Swe (15 + 3)
    let capitalCitiesSwe = withOtherWords(title: "Huvudstäder i Europa", firstWord: "Madrid", secondWord: "Warzava", thirdWord: "Lisabon", fourthWord: "Sofia", fifthWord: "Bucarest")
    let beersSwe = withOtherWords(title: "Ölmärken", firstWord: "Carlsberg", secondWord: "Heiniken", thirdWord: "Guiness", fourthWord: "Singha", fifthWord: "Red Label")
    let fastFoodRestauransSwe = withOtherWords(title: "Snabbmatsrestauranger", firstWord: "McDonalds", secondWord: "Burger King", thirdWord: "Subway", fourthWord: "KFC", fifthWord: "Pizza Hut")
    
    let inTheGroceryStoreSwe = withOtherWords(title: "I mataffären", firstWord: "Växelpengar", secondWord: "Kundvagn", thirdWord: "Flintastek", fourthWord: "Keso", fifthWord: "Mjölkförpackning")
    let inYourHomeSwe = withOtherWords(title: "I hemmet", firstWord: "Dörrklocka", secondWord: "Skohorn", thirdWord: "Sovrumslampa", fourthWord: "Disktrasa", fifthWord: "Parkettgolv")
    let iSverigeSwe = withOtherWords(title: "I Sverige", firstWord: "Gävlebocken", secondWord: "Statshuset", thirdWord: "Öresundsbron", fourthWord: "Kaknästornet", fifthWord: "Liseberg")
    let famousWomenOver50Swe = withOtherWords(title: "Kända kvinnor över 50", firstWord: "Madonna", secondWord: "Michelle Pfeiffer", thirdWord: "Lill-Babs", fourthWord: "Oprah Winfrey", fifthWord: "Janet Jackson")
    let legendaryWomensSwe = withOtherWords(title: "Legendariska kvinnor", firstWord: "Marie Curie", secondWord: "Rosa Parks", thirdWord: "Anne Frank", fourthWord: "Marlyn Monroe", fifthWord: "Mother Theresa")
    let historicalPersonsSwe = withOtherWords(title: "Historiska personer", firstWord: "Cleopatra", secondWord: "Judas", thirdWord: "Joan of Arc", fourthWord: "Alexander den store", fifthWord: "Napoleon")
    let menOver50Swe = withOtherWords(title: "Kända män över 50", firstWord: "Richard Gere", secondWord: "Bruce Springsteen", thirdWord: "Michael Jordan", fourthWord: "George Bush", fifthWord: "Bill Gates")
    let clothes2Swe = withOtherWords(title: "Klädmärken", firstWord: "Henry Lloyd", secondWord: "Peak Performance ", thirdWord: "Gucci ", fourthWord: "HM", fifthWord: "Nike")
    let fictitiousPersonsSwe = withOtherWords(title: "Fiktiva personer", firstWord: "Harry Potter", secondWord: "Alice i underlandet", thirdWord: "Rödluvan", fourthWord: "Tintin", fifthWord: "Sherlock Holmes")
    let proffesions3Swe = withOtherWords(title: "Yrken", firstWord: "Kassörska", secondWord: "Fönsterputsare", thirdWord: "Sömmerska", fourthWord: "Barberare", fifthWord: "Takläggare")
    let criminalsSwe = withOtherWords(title: "Brottslingar", firstWord: "Bonnie Parker", secondWord: "Pablo Escobar", thirdWord: "Clark Olofsson", fourthWord: "Joseph Fritzl", fifthWord: "Al Capone")
    let inTheBathRoomSwe = withOtherWords(title: "I badrummet", firstWord: "Shampoflaska", secondWord: "Toalettrulle", thirdWord: "Tandkrämstub", fourthWord: "Tvålkopp", fifthWord: "Deodorant")
    
    
    
    
    var capitalCities = withOtherWords(title: "Capitals in Europe", firstWord: "Madrid", secondWord: "Warzava", thirdWord: "Lisabon", fourthWord: "Sofia", fifthWord: "Bucarest")
    var beers = withOtherWords(title: "Beer Brands", firstWord: "Carlsberg", secondWord: "Heiniken", thirdWord: "Guiness", fourthWord: "Singha", fifthWord: "Red Label")
    var fastFoodRestaurans = withOtherWords(title: "Fast Food Restaurants", firstWord: "McDonalds", secondWord: "Burger King", thirdWord: "Subway", fourthWord: "KFC", fifthWord: "Pizza Hut")
    
    
    
    
    // Can you figure it out? (2 + 18 Swe)
    var city1 = CanYouFigureItOut(title: "City", answer: "Stockholm", firstWord: "Was founded 1252", secondWord:"Also goes by the name: Venice of the North" , thirdWord: "Home of Karl XVI Gustav", fourthWord: "Globen, Kaknästornet, and Vasa Museum are famous places in this city", fifthWord: "The Capital of Sweden")
    var federer = CanYouFigureItOut(title: "Athlete", answer: "Roger Federer", firstWord: "Was born 8 August, 1981", secondWord:"Says he has three idols; Boris Becker, Stefan Edberg and Pete Sampras" , thirdWord: "Has had a Swiss Post stamp issued in his honour ", fourthWord: "Has won all four Major Tennis Tournament", fifthWord: "Is the most successful tennis player in Switzerland history")
    
    
    let federerSwe = CanYouFigureItOut(title: "Idrottare", answer: "Roger Federer", firstWord: "Föddes 8 Augusti, 1981", secondWord:"Säger att han har tre idoler; Boris Becker, Stefan Edberg och Pete Sampras" , thirdWord: "Har fått ett schweiziskt frimärke tryckt i sin ära", fourthWord: "Har vunnit alla de stora Grand Slam turneringarna", fifthWord: "Är den mest framgångsrika tennisspelaren i Schweiz historia")
    let stockholmSwe = CanYouFigureItOut(title: "Stad", answer: "Stockholm", firstWord: "Grundades 1252", secondWord:"Går också under namnet Nordens Venedig" , thirdWord: "Hem för Karl XVI Gustav", fourthWord: "Globen, Kaknästornet, och Vasa Museumet är kända platser i denna stad", fifthWord: "Sveriges huvudstad")
    let obamaSwe = CanYouFigureItOut(title: "Känd person", answer: "Barack Obama", firstWord: "Har gett ut en självbiografi med titeln; 'Min far hade en dröm'", secondWord: "Har tilldelats Nobels fredspris", thirdWord: "Föddes 4 augusti 1961 på Hawaii ", fourthWord: "Är gift med Michelle och har döttrarna Malia och Sasha ", fifthWord: "Valdes 2008 in som USAs 44e president.")
    let nyckelnTillFrihetSwe = CanYouFigureItOut(title: "Film", answer: "Nyckeln till frihet", firstWord: "Filmmusiken gjordes av Thomas Newman", secondWord: "Var inledningsvis ingen ekonomisk succé. Mycket på grund av konkurrens från filmer som Pulp Fiction och Forrest Gump.", thirdWord: " Baserad på en roman av Stephan King", fourthWord: "Filmens huvudkaraktärer spelas av Tim Robbins och Morgan Freeman", fifthWord: "Berättar historien om Andy Dufrense, som döms mot sitt nekande till livstids fängelse för mordet på sin fru och hennes älskare.")
    let friendsSwe = CanYouFigureItOut(title: "TV-serie", answer: "Friends", firstWord: "Serien kallades från början Insomnia Cafe, innan namnet byttes", secondWord: "Serien har haft gästskådespelare som exempelvis George Clooney and Christina Applegate", thirdWord: "Serien är skapad av David Crane och Marta Kauffman", fourthWord: "En stor del av handlingen utspelar sig på cafét Central Perk", fifthWord: "Serien handlar om 6 vänner som bor i new york")
    let uranusSwe = CanYouFigureItOut(title: "Planet", answer: "Uranus", firstWord: "Upptäcktes 1781 av William Herschel", secondWord: "Planetens diameter är ca 4 gånger större än Jordens", thirdWord: "Det tar 84 år för planeten att fullborda ett varv runt solen", fourthWord: "Planeten har i dagsläget tjugosju bekräftade månar, varav de fem största heter Miranda, Ariel, Umbriel, Titania och Oberon", fifthWord: "Är den sjunde planeten från solen och har ungefär samma storlek som Neptunus ")
    let varldsdelSwe = CanYouFigureItOut(title: "Världsdel", answer: "Sydamerika", firstWord: "Arean på världsdelen är 17 831 956 km²", secondWord: "Det bor ca 420 miljoner människor i denna världsdel", thirdWord: "Här finns världens högsta vattenfall, Angel Fall", fourthWord: "Består av 12 länder", fifthWord: "Två kända städer i denna världsdel är Santiago och Caracas ")
    let indonesienSwe = CanYouFigureItOut(title: "Land", answer: "Indonesien", firstWord: "Har världens största muslimska befolkning", secondWord: "Det asiatiska landet blev erkänt självständigt från Nederländerna 1949", thirdWord: "Landet består av över 13 000 öar och 33 provinser", fourthWord: "Landet gränsar till Papua Nya Guinea, Östtimor och Malaysia", fifthWord: "Huvudstaden heter Jakarta ")
    let bornInTheUSASWe = CanYouFigureItOut(title: "Musik-album", answer: "Born in the USA", firstWord: "Musiktidskriften Rolling Stone rankade albumet som nummer 85 på sin lista The 500 Greatest Albums of All Time.", secondWord: "Detta rockalbum gavs ut 1984", thirdWord: "Titellåten handlar om Vietnamveteraner som glömts bort av samhället i USA.", fourthWord: "Kända låtar på albumet är Dancing in the dark och I Surrernder.", fifthWord: "Artisten är Bruce Springsteen och albumet heter likadant som den första singeln på skivan")
    let cocaColaSwe = CanYouFigureItOut(title: "Företag", answer: "Coca Cola", firstWord: "Hade 2017 100 300 anställda och omsatte 41,8 miljarder dollar", secondWord: "Företaget grundades 1892 av Asa Griggs Candler", thirdWord: "Huvudkontoret ligger i Atlanta, USA ", fourthWord: "Deras slogan är 'Taste the feeling'", fifthWord: "Har förutom huvudprodukten även Fanta och Sprite i sortimentet")
    let colosseumSwe = CanYouFigureItOut(title: "Sevärdhet", answer: "Colosseum", firstWord: "Ett talesätt hos folket i det här landet vid korsdrag inomhus är 'Stäng dörren, du är inte i ***'", secondWord: "Höjden på sevärdheten är 48 meter", thirdWord: "En sida av sevärdheten raserades vid en jordbävning år 1349", fourthWord: "Sevärdheten ligger i Rom och lät byggas av kejsare Titus Vespasianus", fifthWord: "En central plats i filmen Gladiator")
    let palmSwe = CanYouFigureItOut(title: "Växt", answer: "Palm", firstWord: "Är en familj enhjärtbladiga växter och den enda familjen i ordningen Arecales ", secondWord: "Förekommer som vildväxande nästan enbart i världens tropiska och subtropiska områden.", thirdWord: " Från den här växten utvinns en olja som ofta kritiseras av miljöskäl, då avverkning av regnskog sker i stor skala", fourthWord: "Växten syns ofta på paradisstränder ", fifthWord: "På den här växten växer det kokosnötter")
    let niagaraSwe = CanYouFigureItOut(title: "Natur", answer: "Niagara Fallen", firstWord: "Upptäcktes på 1600-talet av Louis Hennepin", secondWord: "Bredden på detta är 1203m", thirdWord: "Här finns ett minnesmärke över Nikola Tesla, som var den förste att utvinna elektrisk energi härifrån", fourthWord: "Består av tre fall", fifthWord: "Ett vattenfall som gränsar mellan Kanada och USA")
    let cangaruSwe = CanYouFigureItOut(title: "Djur", answer: "Kängru", firstWord: "Djuret är växtätare och är vanligen aktiva på natten eller skymningen.", secondWord: "Pälsens färg är ofta enhetligt grå- eller brunaktig. Svansen är lång, stark och huvudsakligen hårbeklädd.", thirdWord: "Djuret förekommer i Australien och på Nya Guinea samt på kringliggande öar som Tasmanien.", fourthWord: "Deras baktassar är betydligt större än de främre. Djuret är kanske som mest känd för sitt skuttande och hoppande när de ska ta sig framåt.", fifthWord: "Är ett pungdjur. Honan föder och förvarar sina ungar i sin pung tills ungen blir ungefär ett halvår gammal")
    let fotbollSwe = CanYouFigureItOut(title: "Sport", answer: "Fotboll", firstWord: "En känd legend inom denna idrott är Carlos Alberto", secondWord: "En känd aktiv spelare är Carli Lloyd", thirdWord: "En annan är målvakten Hugo Lloris", fourthWord: "Marta har dominerat denna sport på damsidan under många år.", fifthWord: "På herrsidan är Messi och Ronaldo de starkast lysande stjärnorna")
    let massling = CanYouFigureItOut(title: "Sjukdom", answer: "Mässling", firstWord: "Sjukdomen orsakas av ett virus i morbillisläktet. Viruset sprids främst i droppform via luften", secondWord: "Hos vuxna är det en farlig sjukdom som obehandlad kan leda till döden", thirdWord: "Sjukdomen är den med vaccin förebyggbara sjukdom som orsakar mest dödsfall i världen. Främst i fattiga länder i Afrika. År 1980 dog 2,6 miljoner människor och 2014 dog 73 00", fourthWord: "Sjukdomen är ovanlig i Sverige tack vare den allmänna vaccinationen  som sker med en första dos vid 1,5 års ålder och en andra dos i samband med skolstarten", fifthWord: "Sjukdomen är en virussjukdom som orsakar infektioner i luftvägarna och röda hudutslag")
    let tiger = CanYouFigureItOut(title: "Djur", answer: "Tiger", firstWord: "Djuret lever endast i Asien ", secondWord: "Den jagar ensam och äter främst medelstora djur ur familjerna svindjur och hjortdjur", thirdWord: "Djuret är det största nu levande kattdjuret.", fourthWord: "De flesta lever i fuktig tropisk och subtropisk lövskog, men finns även i tempererade löv- och barrskogar. I denna miljö utgör pälsens mönster bra kamouflage", fifthWord: "Namnet på djuret härstammar från det grekiska ordet tigris")
    let gt = CanYouFigureItOut(title: "Drink", answer: "Gin and tonic", firstWord: "Ursprunget till drinken sägs vara att brittiska soldater i Indien fick idén att ta den mycket beskt smakande malariamedicinen utspädd med sockervatten och denna dryck i syfte att göra intaget mer njutbart", secondWord: "Mycket populärt i Spanien, där det i storstäderna inte är ovanligt med barlokaler som enbart serverar olika varianter av denna dryck.", thirdWord: "Serveras traditionellt i ett highballglas med isbitar och en skiva citron eller lime", fourthWord: "Innehåller endast två huvudingredienser som tillsammans skapar en friskt och syrlig smakförnimmelse", fifthWord: "Varianter förekommer, exempelvis Turbo G&T (eller Cold Brew G&T)")
    let bach = CanYouFigureItOut(title: "Kompositör", answer: "Bach", firstWord: "Han har kallats för 'Den femte evangelisten'", secondWord: "Är en av barockens stora", thirdWord: "Föddes i Tyskland 1685", fourthWord: "Räknas som orgelns mästare", fifthWord: "Hans förnamn är Johann Sebastian ")
    let beiber = CanYouFigureItOut(title: "Popsångare", answer: "Justin Bieber", firstWord: "Upptäckes av Scooter Braun, som senare blev personens manager", secondWord: "Är kanadensare", thirdWord: "Föddes 1994", fourthWord: "Har varit tillsammans med Selena Gomez", fifthWord: "Är känd för låtar som ’Favorite Girl’ och Baby’")
    
    let merkel = CanYouFigureItOut(title: "Politiker", answer: "Angela Merkel", firstWord: "Personen har en doktorsexamen i kvantkemi", secondWord: "Hon föddes 1954", thirdWord: "Hon rankades 2011 som världens näst mäktigaste person av tidningen Forbes", fourthWord: " Är kristdemokrat", fifthWord: "Hon blev Tysklands åttonde förbundskansler")
    let eight = CanYouFigureItOut(title: "En siffra", answer: "8", firstWord: "Syre har den här positionen i det periodiska systemet", secondWord: "Är ett japanskt och kinesiskt lyckotal och kallas pånyttfödelsens tal.", thirdWord: "Siffran heter octo på latin", fourthWord: " Skrevs som VIII i antika Rom", fifthWord: "Bokstaven H kommer på denna plats i alfabetet")
    let koranen = CanYouFigureItOut(title: "En bok", answer: "Koranen", firstWord: "Kallas även den ädla recitationen", secondWord: "Innehåller 114 suror", thirdWord: "Skrevs på arabiska", fourthWord: "Består av profeten Muhammeds uppenbarelser", fifthWord: "Är muslimernas heliga skrift")
    

    
    // Hum The song challenge(25)
    let boyBand1 = HumTheSong(title: "Boy Bands", firstWord: "Backstreet Boys - I Want It That Way", secondWord: "NSYNC - Bye Bye Bye", thirdWord: "Hanson - MMMBop", fourthWord: "Backstreet Boys - As long as you love me", fifthWord: "Mandy")
    
    let beatles = HumTheSong(title: "Beatles", firstWord: "Hey Jude", secondWord: "Twist and shout", thirdWord: "Let it be", fourthWord: "Come together", fifthWord: "Here comes the sun")
    
    let first80 = HumTheSong(title: "80´s", firstWord: "Toto-Africa", secondWord: "Journey - Don't stop belivin'", thirdWord: "The Police - Every breath you take.", fourthWord: "Michael Jackson - Billie Jean", fifthWord: "Dolly Parton - 9-5")
    let second80 = HumTheSong(title: "80´s", firstWord: "Paul Simon - You can call me Al", secondWord: "Men at work - Down under", thirdWord: "Michael Jackson - Beat it", fourthWord: "Wham! - Wake me up before you go-go", fifthWord: "Scorpions - Rock you like a hurricane")
    let disco = HumTheSong(title: "Disco-songs", firstWord: "Donna Summer - Hot stuff", secondWord: "Boney M. - Daddy Cool", thirdWord: "Sister Sledge - We Are Family", fourthWord: "Bee Gees - Stayin' Alive", fifthWord: "Pointer Sisters - I'm So Excited")
    let hipHopRnB1 = HumTheSong(title: "Hip hop/RnB", firstWord: "R. Kelly - Worlds greatest", secondWord: "The Black Eyed Peas - Where Is The Love?", thirdWord: "Mario - Let Me Love You", fourthWord: "Usher - Yeah!", fifthWord: "Akon - Beautiful")
    let hipHopRnB2 = HumTheSong(title: "Hip hop/RnB", firstWord: "Beyonce - Single Ladies", secondWord: "Diddy - Last Night", thirdWord: "Snoop Dogg - Young, Wild & Free", fourthWord: "Will Smith - Gettin’ Jiggy Wit It", fifthWord: "MC Hammer - U Can’t Touch This")
    let house = HumTheSong(title: "House", firstWord: "Avicii- Wake me up", secondWord: "Swedish House  Mafia - One", thirdWord: "Kygo - Stole the show", fourthWord: "David guetta - Titanium", fifthWord: "Axwell/Ingrosso - More then you know")
    let classicRock = HumTheSong(title: "Klassisk rock", firstWord: "The Clash - London Calling", secondWord: "Nirvana - Smells Like Teen Spirit", thirdWord: "The Rolling Stones - Satisfaction", fourthWord: "Bruce Springsteen - Born to Run", fifthWord: "Deep Purple - Smoke on the water")
    let loveballads = HumTheSong(title: "Love ballads", firstWord: "Roxette - It Must Have Been Love", secondWord: "Foreigner - I wan't to know what love is", thirdWord: "Simon & Garfunkel - Bridge Over Troubled Water", fourthWord: "Stevie Wonder - I Just Called to Say I Love You", fifthWord: "Percy Sledge - When a Man Loves a Woman")
    let loveSongs = HumTheSong(title: "Love songs", firstWord: "Elton John - Your Song", secondWord: "Eric Carmen - All by my self", thirdWord: "Reo Speedwagon - Can’t Fight This Feeling", fourthWord: "Sonny and Cher - I Got You Babe", fifthWord: "When a Man Loves a Woman” – Percy Sledge")
    let first70 = HumTheSong(title: "Soft 70´s", firstWord: "Marvin Gaye - Let's Get It On", secondWord: "Roberta Flack - Killing Me Softly With His Song", thirdWord: "John Lennon - Imagine", fourthWord: "Pink Floyd - Wish you were here", fifthWord: "Aerosmith - Dream on")
    let second70 = HumTheSong(title: "Hits of the 70´s", firstWord: "Bee Gees - Night Fever", secondWord: "ABBA- Dancing Queen", thirdWord: "Wild Cherry - Play That Funky Music", fourthWord: "Queen - Bohemian Rhapsody", fifthWord: "Eagles - Hotel California")
    let movieMusic = HumTheSong(title: "Movie Music", firstWord: "Survivor - Eye Of The Tiger ", secondWord: "Ray Parker Jr. - Ghostbusters", thirdWord: "Celine Dion - My heart will go on", fourthWord: "Aerosmith - I don't want to miss a thing", fifthWord: "Diana Ross - Ain’t No Mountain High Enough")
    let chilldrensSongs = HumTheSong(title: "Childrens Song", firstWord: "Incy wincy spider", secondWord: "Bananas in Pyjamas", thirdWord: "Twinkle twinkle little star", fourthWord: "Demi Lovato - Let it go(frozen)", fifthWord: "Pharell Williams - Happy")
    let country = HumTheSong(title: "Country", firstWord: "Johnny Cash - Walk the line", secondWord: "Nancy Sinatra - These Boots Are Made For Walking", thirdWord: "Dolly Parton - Jolene", fourthWord: "Johnny Cash - Ring of Fire", fifthWord: "Zac brown band - Chicken fried")
    let oneHitWonders = HumTheSong(title: "One hit wonders", firstWord: "Vanilla ice - Ice ice baby", secondWord: "Baha men - Who let the dogs out", thirdWord: "Aha - take on me", fourthWord: "Wild cherry - Play that funky music", fifthWord: "Right Said Fred - I'm too sexy")
    let first90s = HumTheSong(title: "90´s", firstWord: "Toni Braxton - Un-Break My Heart", secondWord: "Britney Spears - Baby One More Time’", thirdWord: "R.E.M. - Losing My Religion", fourthWord: "Destiny's child - Say my name", fifthWord: "Michael Jackson - Black or white")
    let latinSongs = HumTheSong(title: "Latin songs", firstWord: "Luis Fonsi & Daddy Yankee Featuring Justin Bieber - Despacito" , secondWord: "Enrique Iglesias - Bailando", thirdWord: "Ritchie Valens - La Bamba", fourthWord: "Ricky Martin - Livin la Vida Loca", fifthWord: "Shakira - Suerte (Whenever, Wherever)")
    let summerSongs = HumTheSong(title: "Summer songs", firstWord: "Bryan Adams - Summer Of '69", secondWord: "Don Henley - The Boys Of Summer", thirdWord: "Bryan Hyland - Teenie Weenie Bikini" , fourthWord: "Katy Perry feat. Snoop Dogg - California Gurls", fifthWord: "Alice Cooper - School’s Out for Summer")
    let rap = HumTheSong(title: "Public Enemy - Fight the Power", firstWord: "N.W.A - Fuck tha Police", secondWord: "50 Cent - In Da Club", thirdWord: "Eminem - Lose Yourself", fourthWord: "Sir Mix-A-Lot - Baby Got Back", fifthWord: "Jay Z and Alicia Keys -Empire State of Mind")
    let after2010 = HumTheSong(title: "After 2010", firstWord: "Adele - Rolling In The Deep", secondWord: "Bruno Mars - Just The Way You Are", thirdWord: "LMFAO - Sexy And I Know It", fourthWord: "Macklemore & Ryan Lewis - Thrift Shop", fifthWord: "Carly Rae Jepsen - Call Me Maybe")
    let hardRock = HumTheSong(title: "Hard Rock", firstWord: "Guns N’ Roses – Welcome To The Jungle", secondWord: "Scorpions – Rock You Like A Hurricane", thirdWord: "Motley Crue – Dr. Feelgood", fourthWord: "Europe – The Final Countdown", fifthWord: "Iron Maiden – Run To The Hills")
    let rockOf90s = HumTheSong(title: "Rock of the 90´s", firstWord: "Nirvana - Smells Like Teen Spirit", secondWord: "Metallica - Enter Sandman", thirdWord: "Queen - The Show Must Go On", fourthWord: "Green Day - Basket case", fifthWord: "Soundgarden - Black Hole Sun")
    
    let svenskSchlager = HumTheSong(title: "Svensk Schlager", firstWord: "Satelit", secondWord: "Waterloo", thirdWord: "Listen to your heartbeat", fourthWord: "Genom eld och vatten", fifthWord: "I cant go on")
    let melodifestivalenSwe = HumTheSong(title: "Melodifestivalsvinnare", firstWord: "Roger Pontare-Vindarna viskar mitt namn", secondWord: "Abba-Waterloo", thirdWord: "Loreen - Euphoria", fourthWord: "Måns Zelmerlöv - Heroes", fifthWord: "Charlotte Nilsson (Perrelli) - Tusen och en natt")
    
    
    
    //Team Challenge Swe
    var cities1Swe  = TeamChallenge(title: "Geografi", challenge: "Nämn minst sex huvudstäder i Afrika innan tiden runnit ut")
    var physicalExercise1Swe  = TeamChallenge(title: "Fysisk aktivitet", challenge: "Stå upp på raka ben. Om alla i laget kan nudda golvet med sina fingertoppar har ni klarat utmaningen.")
    var physicalExercise2Swe  = TeamChallenge(title: "Fysisk aktivitet", challenge: "Alla i laget måste göra 15 armhävningar innan tiden har runnit ut för att ni ska lyckas med utmaningen.")
    var physicalExercise3Swe  = TeamChallenge(title: "Balans", challenge: "Stå på tå på ett ben i minst 20 sekunder innan tiden runnit ut. Om någon i laget klarar det får ni full poäng. S")
    var foodSwe  = TeamChallenge(title: "Mat", challenge: "Nämn totalt 6 maträtter som börjar med alfabetets sex första bokstäver(A-F). En maträtt för varje bokstav.")
    var carsSwe = TeamChallenge(title: "Fordon", challenge: "Kan ni som lag komma på 10 bilmärken innan tiden är ute?")
    var physicalExercise4Swe  = TeamChallenge(title: "Smidighet", challenge: "Om någon i laget kan kyssa sin egen fot har ni lyckats med utmaningen")
    var physicalExercise5Swe  = TeamChallenge(title: "Fysisk utmaning", challenge: "Alla spelare i laget ska lägga sig på rygg på golvet. Om alla därfrån lyckas ställa sig upp utan att använda armarna eller händerna har ni klarat utmaningen")
    var famousPersonsSwe = TeamChallenge(title: "Kända personer", challenge: "Can the team come up with 3 famous persons with the first name Kim")
    var music2Swe = TeamChallenge(title: "Musik", challenge: "Kan laget sjunga den försa delen av låten 'We are the world'? Om ni klarar de första 20 orden får ni full poäng")
    var seriousSwe = TeamChallenge(title: "Seriositet", challenge: "Ingen i laget får skratta under 45 sekunder. Resterande lag får göra allt för att få er att misslyckas med utmaningen")
    var fishSwe = TeamChallenge(title: "I havet", challenge: "Kan laget tillsammans nämna 8 olika sorters fiskar innan tiden runnit ut")
    var choirSwe = TeamChallenge(title: "Kör", challenge: "Om alla i laget samstämmigt kan vissla 'Jingle Bells', då har ni lyckats med utmaningen")
    var namesSwe = TeamChallenge(title: "Namn", challenge: "Kan laget nämna 10 flicknamn som börjar med bokstaven 'S' innan tiden runnit ut")
    var names2Swe = TeamChallenge(title: "Namn", challenge: "Kan laget nämna 10 pojknamn som börjar med bokstaven 'M' innan tiden runnit ut")
    var wordsSwe = TeamChallenge(title: "Ord", challenge: "Kan laget komma på fem synonymer till ordet 'näsa'")
    var languageSwe = TeamChallenge(title: "Språk", challenge: "Kan laget säga 'tack' på minst 6 olika språk")
    var sportsSwe = TeamChallenge(title: "Sporter", challenge: "Kan laget nämna 10 sporter där man INTE använder sig av en boll")
    var dogsSwe = TeamChallenge(title: "Djur", challenge: "Kan laget nämna minst 10 hundraser innan tiden runnit ut ")
    var worldSwe = TeamChallenge(title: "Världen", challenge: "Kan laget nämna minst 8 länder där man talar spanska innan tiden runnit ut?")
    var usaSwe = TeamChallenge(title: "USA", challenge: "Kan laget nämna minst fyra stater i USA som börjar på bokstaven 'A'")
    
    
    //Team Challenge (21 ENG)
    var cities1  = TeamChallenge(title: "Geography", challenge: "Name at least six capitals in Africa before the expiry of the time")
    var physicalExercise1  = TeamChallenge(title: "Physical Exercise", challenge: "Stand up on straight legs. If everyone in the team can reach the floor with your fingertips, you have succeeded in the challenge")
    var physicalExercise2  = TeamChallenge(title: "Physical Exercise", challenge: "All team members must make 15 push ups before the time runs out to succeed in the challenge")
    var physicalExercise3  = TeamChallenge(title: "Balance", challenge: "Stand on your toes on one leg for at least 20 seconds before the time runs out. If one in the team can do it, you have succeeded in the challenge")
    var food  = TeamChallenge(title: "Food", challenge: "Mention a total of 6 dishes starting with the alphabet's first six letters (A-F). One dish for each letter")
    var cars = TeamChallenge(title: "Vehicles", challenge: "Can you, as a team, get ten car brands before the time has expired")
    var physicalExercise4  = TeamChallenge(title: "Flexibility", challenge: "If someone in the team can kiss their own foot, you have comepleted the task")
    var physicalExercise5  = TeamChallenge(title: "Physical Exercies", challenge: "Can all players in the team rise from laying on their backs without using their arms and hands")
    var famousPersons = TeamChallenge(title: "Famous persons", challenge: "Can the team come up with 3 famous persons with the first name Kim")
    var music2 = TeamChallenge(title: "Music", challenge: "Can the team sing the first part in: 'We are the world'. At least the 20 first words.")
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
    
    
    //Charades SWE (20)
    let animales1Swe = Charades(title: "Djur", firstWord: "Orm", secondWord: "Myra", thirdWord: "Giraff", fourthWord: "Katt", fifthWord: "Delfin")
    let animales2Swe = Charades(title: "Djur", firstWord: "Hund", secondWord: "Val", thirdWord: "Spindel", fourthWord: "Björn", fifthWord: "Fjäril")
    let kitchenSwe = Charades(title: "I huset", firstWord: "Byrålåda", secondWord: "Gaffel", thirdWord: "Stekpanna", fourthWord: "Micro", fifthWord: "TV")
    let sports2Swe = Charades(title: "Sporter", firstWord: "Frisbee", secondWord: "Badminton", thirdWord: "Curling", fourthWord: "Dart", fifthWord: "Long jump")
    let clothesSwe = Charades(title: "Kläder", firstWord: "Strumpor", secondWord: "Shorts", thirdWord: "Underkläder", fourthWord: "Keps", fifthWord: "Väst")
    let drinksSwe = Charades(title: "Drycker", firstWord: "Mjölk", secondWord: "Öl", thirdWord: "Vatten", fourthWord: "Vin", fifthWord: "Kaffe")
    let vehiclesSwe = Charades(title: "Transport", firstWord: "Buss", secondWord: "Helikopter", thirdWord: "Tåg", fourthWord: "Cykel", fifthWord: "Teleportering")
    let electronicsSwe = Charades(title: "Elektronik", firstWord: "Platt-TV", secondWord: "Lampa", thirdWord: "Lap-top", fourthWord: "Stereo", fifthWord: "Skrivare")
    let natureSwe = Charades(title: "Naturen", firstWord: "Träd", secondWord: "Mossa", thirdWord: "Berg", fourthWord: "Sjö", fifthWord: "Gräs")
    let moviesSwe = Charades(title: "Filmer", firstWord: "Gudfadern", secondWord: "Grease", thirdWord: "Dirty Dancing", fourthWord: "Spiderman", fifthWord: "Jurassic Park")
    let fruitsSwe = Charades(title: "Frukt och grönt", firstWord: "Apelsin", secondWord: "Banan", thirdWord: "Jordgubar", fourthWord: "Gurk", fifthWord: "Plommon")
    
    let furnituresSwe = Charades(title: "Inredning", firstWord: "Soffa", secondWord: "Pall", thirdWord: "Matta", fourthWord: "Tavlor", fifthWord: "Krukväxt")
    let commicsSwe = Charades(title: "Seriefigurer", firstWord: "Bamse", secondWord: "Pluto", thirdWord: "Musse Pigg", fourthWord: "Fantomen", fifthWord: "Joakim von Anka")
    let foodsSwe = Charades(title: "Mat", firstWord: "Pannkakor", secondWord: "Tacos", thirdWord: "Tapas", fourthWord: "Pizza", fifthWord: "Varmkorv")
    let sports3Swe = Charades(title: "Sporter", firstWord: "Rugby", secondWord: "Golf", thirdWord: "Konståkning", fourthWord: "Judo", fifthWord: "Handboll")
    let musicSwe = Charades(title: "Musik", firstWord: "Elgitarr", secondWord: "Trumpet", thirdWord: "Harpa", fourthWord: "Hårdrock", fifthWord: "Dirigent")
    let nationalitiesSwe = Charades(title: "Nationaliteter", firstWord: "Ryss", secondWord: "Kinies", thirdWord: "Argentinare", fourthWord: "Japan", fifthWord: "Mexikanare")
    let professions1Swe = Charades(title: "Yrken", firstWord: "Målare", secondWord: "Bankman", thirdWord: "Kock", fourthWord: "Kapten", fifthWord: "Frisör")
    let professions2Swe = Charades(title: "Yrken", firstWord: "Pilot", secondWord: "Somilier", thirdWord: "Städare", fourthWord: "IT-tekniker", fifthWord: "Advokat")
    let movieCharactersSwe = Charades(title: "Filmkaraktärer", firstWord: "Batman", secondWord: "Rocky", thirdWord: "Rose DeWitt Bucater", fourthWord: "Forrest Gump", fifthWord: "Gandalf")
    
    
    //Charades ENG (11)
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
    var fruits = Charades(title: "Fruits and greens", firstWord: "Orange", secondWord: "Banana", thirdWord: "Strawberry", fourthWord: "Cucumber", fifthWord: "Plum")
    
    
    
    
    
    
    
    
    
    
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
            
        else if(index == 1){
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
        else if(index == 2){
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
        
        else if(index == 3){
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
        else if(index == 4){
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










