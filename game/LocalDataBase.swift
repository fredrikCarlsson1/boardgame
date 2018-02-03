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
    
    var charadesArraySwe1 = [Charades]()
    var charadesArrayEng1 = [Charades]()
    
    public var arrayOfSubjects = [Any]()
    
    init() {
        self.arrayOfSubjects.append(withOtherWordsList)
        self.arrayOfSubjects.append(charadeList)
        self.arrayOfSubjects.append(teamChallengeList)
        self.arrayOfSubjects.append(canYouFigureItOutList)
        self.arrayOfSubjects.append(humTheSongList)
        
        // With other Words append
        self.withOtherWordsList.append(capitalCities)
        self.withOtherWordsList.append(beers)
        self.withOtherWordsList.append(fastFoodRestaurans)
        
        //Can you figure it out?
        self.canYouFigureItOutList.append(city1)
        self.canYouFigureItOutList.append(federer)
        
        
        //Hum the song
        //self.humTheSongList.append(swedishSchlager)
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
        
        
        //Charades ENG
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
        //Charades SWE
        self.charadesArraySwe1.append(animales1Swe)
        self.charadesArraySwe1.append(animales2Swe)
        self.charadesArraySwe1.append(kitchenSwe)
        self.charadesArraySwe1.append(sports2Swe)
        self.charadesArraySwe1.append(clothesSwe)
        self.charadesArraySwe1.append(drinksSwe)
        self.charadesArraySwe1.append(vehiclesSwe)
        self.charadesArraySwe1.append(electronicsSwe)
        self.charadesArraySwe1.append(natureSwe)
        self.charadesArraySwe1.append(moviesSwe)
        self.charadesArraySwe1.append(fruitsSwe)
        self.charadesArraySwe1.append(furnituresSwe)
        self.charadesArraySwe1.append(commicsSwe)
        self.charadesArraySwe1.append(foodsSwe)
        self.charadesArraySwe1.append(sports3Swe)
        self.charadesArraySwe1.append(musicSwe)
        self.charadesArraySwe1.append(nationalitiesSwe)
        self.charadesArraySwe1.append(professions1Swe)
        self.charadesArraySwe1.append(professions2Swe)
        self.charadesArraySwe1.append(movieCharactersSwe)
        
        
        
    }
    
    
    
    
    // WithOtherWords
    
    
    var capitalCities = withOtherWords(title: "Capitals in Europe", firstWord: "Madrid", secondWord: "Warzava", thirdWord: "Lisabon", fourthWord: "Sofia", fifthWord: "Bucarest")
    var beers = withOtherWords(title: "Beer Brands", firstWord: "Carlsberg", secondWord: "Heiniken", thirdWord: "Guiness", fourthWord: "Singha", fifthWord: "Red Label")
    var fastFoodRestaurans = withOtherWords(title: "Fast Food Restaurants", firstWord: "McDonalds", secondWord: "Burger King", thirdWord: "Subway", fourthWord: "KFC", fifthWord: "Pizza Hut")
    
    
    // Can you figure it out? (20)
    var city1 = CanYouFigureItOut(title: "City", answer: "Stockholm", firstWord: "Was founded 1252", secondWord:"Also goes by the name: Venice of the North" , thirdWord: "Home of Karl XVI Gustav", fourthWord: "Globen, Kaknästornet, and Vasa Museum are famous places in this city", fifthWord: "The Capital of Sweden")
    var federer = CanYouFigureItOut(title: "Athlete", answer: "Roger Federer", firstWord: "Was born 8 August, 1981", secondWord:"Says he has three idols; Boris Becker, Stefan Edberg and Pete Sampras" , thirdWord: "Has had a Swiss Post stamp issued in his honour ", fourthWord: "Has won all four Major Tennis Tournament", fifthWord: "Is the most successful tennis player in Switzerland history")
    
    var federerSwe = CanYouFigureItOut(title: "Idrottare", answer: "Roger Federer", firstWord: "Föddes 8 Augusti, 1981", secondWord:"Säger att han har tre idoler; Boris Becker, Stefan Edberg och Pete Sampras" , thirdWord: "Har fått ett schweiziskt frimärke tryckt i sin ära", fourthWord: "Har vunnit alla de stora Grand Slam turneringarna", fifthWord: "Är den mest framgångsrika tennisspelaren i Schweiz historia")
    var stockholmSwe = CanYouFigureItOut(title: "Stad", answer: "Stockholm", firstWord: "Grundades 1252", secondWord:"Går också under namnet Nordens Venedig" , thirdWord: "Hem för Karl XVI Gustav", fourthWord: "Globen, Kaknästornet, och Vasa Museumet är kända platser i denna stad", fifthWord: "Sveriges huvudstad")
    var obamaSwe = CanYouFigureItOut(title: "Känd person", answer: "Barack Obama", firstWord: "Har gett ut en självbiografi med titeln; 'Min far hade en dröm'", secondWord: "Har tilldelats Nobels fredspris", thirdWord: "Föddes 4 augusti 1961 på Havaii ", fourthWord: "Är gift med Michelle och har döttrarna Malia och Sasha ", fifthWord: "Valdes 2008 in som USAs 44e president.")
    var nyckelnTillFrihetSwe = CanYouFigureItOut(title: "Film", answer: "Nyckeln till frihet", firstWord: "Filmmusiken gjordes av Thomas Newman", secondWord: "Var inledningsvis ingen ekonomisk succé. Mycket på grund av konkurrens från filmer som Pulp Fiction och Forrest Gump.", thirdWord: " Baserad på en roman av Stephan King", fourthWord: "Filmens huvudkaraktärer spelas av Tim Robbins och Morgan Freeman", fifthWord: "Berättar historien om Andy Dufrense, som döms mot sitt nekande till livstids fängelse för mordet på sin fru och hennes älskare.")
    var friendsSwe = CanYouFigureItOut(title: "TV-serie", answer: "Friends", firstWord: "Serien kallades från början Insomnia Cafe, innan namnet byttes", secondWord: "Serien har haft gästskådespelare som exempelvis George Clooney and Christina Applegate", thirdWord: "Serien är skapad av David Crane och Marta Kauffman", fourthWord: "En stor del av handlingen utspelar sig på cafét Central Perk", fifthWord: "Serien handlar om 6 vänner som bor i new york")
    var uranusSwe = CanYouFigureItOut(title: "Planet", answer: "Uranus", firstWord: "Upptäcktes 1781 av William Herschel", secondWord: "Planetens diameter är ca 4 gånger större än Jordens", thirdWord: "Det tar 84 år för planeten att fullborda ett varv runt solen", fourthWord: "Planeten har i dagsläget tjugosju bekräftade månar, varav de fem största heter Miranda, Ariel, Umbriel, Titania och Oberon", fifthWord: "Är den sjunde planeten från solen och har ungefär samma storlek som Neptunus ")
    var varldsdelSwe = CanYouFigureItOut(title: "Världsdel", answer: "Sydamerika", firstWord: "Arean på världsdelen är 17 831 956 km²", secondWord: "Det bor ca 420 miljoner människor i denna världsdel", thirdWord: "Här finns världens högsta vattenfall, Angel Fall", fourthWord: "Består av 12 länder", fifthWord: "Två kända städer i denna världsdel är Santiago och Caracas ")
    var indonesienSwe = CanYouFigureItOut(title: "Land", answer: "Indonesien", firstWord: "Har världens största muslimska befolkning", secondWord: "Det asiatiska landet blev erkänt självständigt från Nederländerna 1949", thirdWord: "Landet består av över 13 000 öar och 33 provinser", fourthWord: "Landet gränsar till Papua Nya Guinea, Östtimor och Malaysia", fifthWord: "Huvudstaden heter Jakarta ")
    var bornInTheUSASWe = CanYouFigureItOut(title: "Musik-album", answer: "Born in the USA", firstWord: "Musiktidskriften Rolling Stone rankade albumet som nummer 85 på sin lista The 500 Greatest Albums of All Time.", secondWord: "Detta rockalbum gavs ut 1984", thirdWord: "Titellåten handlar om Vietnamveteraner som glömts bort av samhället i USA.", fourthWord: "Kända låtar på albumet är Dancing in the dark och I Surrernder.", fifthWord: "Artisten är Bruce Springsteen och albumet heter likadant som den första singeln på skivan")
    var cocaColaSwe = CanYouFigureItOut(title: "Företag", answer: "Coca Cola", firstWord: "Hade 2017 100 300 anställda och omsatte 41,8 miljarder dollar", secondWord: "Företaget grundades 1892 av Asa Griggs Candler", thirdWord: "Huvudkontoret ligger i Atlanta, USA ", fourthWord: "Deras slogan är 'Taste the feeling'", fifthWord: "Har förutom huvudprodukten även Fanta och Sprite i sortimentet")
    var colosseumSwe = CanYouFigureItOut(title: "Sevärdhet", answer: "Colosseum", firstWord: "Ett talesätt hos folket i det här landet vid korsdrag inomhus är 'Stäng dörren, du är inte i ***'", secondWord: "Höjden på sevärdheten är 48 meter", thirdWord: "En sida av sevärdheten raserades vid en jordbävning år 1349", fourthWord: "Sevärdheten ligger i Rom och lät byggas av kejsare Titus Vespasianus", fifthWord: "En central plats i filmen Gladiator")
    var palmSwe = CanYouFigureItOut(title: "Växt", answer: "Palm", firstWord: "Är en familj enhjärtbladiga växter och den enda familjen i ordningen Arecales ", secondWord: "Förekommer som vildväxande nästan enbart i världens tropiska och subtropiska områden.", thirdWord: " Från den här växten utvinns en olja som ofta kritiseras av miljöskäl, då avverkning av regnskog sker i stor skala", fourthWord: "Växten syns ofta på paradisstränder ", fifthWord: "På den här växten växer det kokosnötter")
    var niagaraSwe = CanYouFigureItOut(title: "Natur", answer: "Niagara Fallen", firstWord: "Upptäcktes på 1600-talet av Louis Hennepin", secondWord: "Bredden på detta är 1203m", thirdWord: "Här finns ett minnesmärke över Nikola Tesla, som var den förste att utvinna elektrisk energi härifrån", fourthWord: "Består av tre fall", fifthWord: "Ett vattenfall som gränsar mellan Kanada och USA")
    var cangaruSwe = CanYouFigureItOut(title: "Djur", answer: "Kängru", firstWord: "Djuret är växtätare och är vanligen aktiva på natten eller skymningen.", secondWord: "Pälsens färg är ofta enhetligt grå- eller brunaktig. Svansen är lång, stark och huvudsakligen hårbeklädd.", thirdWord: "Djuret förekommer i Australien och på Nya Guinea samt på kringliggande öar som Tasmanien.", fourthWord: "Deras baktassar är betydligt större än de främre. Djuret är kanske som mest känd för sitt skuttande och hoppande när de ska ta sig framåt.", fifthWord: "Är ett pungdjur. Honan föder och förvarar sina ungar i sin pung tills ungen blir ungefär ett halvår gammal")
    var fotbollSwe = CanYouFigureItOut(title: "Sport", answer: "Fotboll", firstWord: "En känd legend inom denna idrott är Carlos Alberto", secondWord: "En känd aktiv spelare är Carli Lloyd", thirdWord: "En annan är målvakten Hugo Lloris", fourthWord: "Marta har dominerat denna sport på damsidan under många år.", fifthWord: "På herrsidan är Messi och Ronaldo de starkast lysande stjärnorna")
    var massling = CanYouFigureItOut(title: "Sjukdom", answer: "Mässling", firstWord: "Sjukdomen orsakas av ett virus i morbillisläktet. Viruset sprids främst i droppform via luften", secondWord: "Hos vuxna är det en farlig sjukdom som obehandlad kan leda till döden", thirdWord: "Sjukdomen är den med vaccin förebyggbara sjukdom som orsakar mest dödsfall i världen. Främst i fattiga länder i Afrika. År 1980 dog 2,6 miljoner människor och 2014 dog 73 00", fourthWord: "Sjukdomen är ovanlig i Sverige tack vare den allmänna vaccinationen  som sker med en första dos vid 1,5 års ålder och en andra dos i samband med skolstarten", fifthWord: "Sjukdomen är en virussjukdom som orsakar infektioner i luftvägarna och röda hudutslag")
    var tiger = CanYouFigureItOut(title: "Djur", answer: "Tiger", firstWord: "Djuret lever endast i Asien ", secondWord: "Den jagar ensam och äter främst medelstora djur ur familjerna svindjur och hjortdjur", thirdWord: "Tigern är det största nu levande kattdjuret.", fourthWord: "De flesta lever i fuktig tropisk och subtropisk lövskog, men finns även i tempererade löv- och barrskogar. I denna miljö utgör pälsens mönster bra kamouflage", fifthWord: "Namnet på djuret härstammar från det grekiska ordet tigris")
    var gt = CanYouFigureItOut(title: "Drink", answer: "Gin and tonic", firstWord: "Ursprunget till drinken sägs vara att brittiska soldater i Indien fick idén att ta den mycket beskt smakande malariamedicinen utspädd med sockervatten och denna dryck i syfte att göra intaget mer njutbart", secondWord: "Mycket populärt i Spanien, där det i storstäderna inte är ovanligt med barlokaler som enbart serverar olika varianter av denna dryck.", thirdWord: "Serveras traditionellt i ett highballglas med isbitar och en skiva citron eller lime", fourthWord: "Innehåller endast två huvudingredienser som tillsammans skapar en friskt och syrlig smakförnimmelse", fifthWord: "Varianter förekommer, exempelvis Turbo G&T (eller Cold Brew G&T)")
    
    
    
    // Hum The song challenge(8 + 1 swe)
    var boyBand1 = HumTheSong(title: "Boy Bands", firstWord: "I Want It That Way", secondWord: "Bye Bye Bye", thirdWord: "MMMBop", fourthWord: "As long as you love me", fifthWord: "Mandy")
    var beatles = HumTheSong(title: "Beatles", firstWord: "Hey Jude", secondWord: "Twist and shout", thirdWord: "Let it be", fourthWord: "Come together", fifthWord: "Here comes the sun")
    var first80 = HumTheSong(title: "80´s", firstWord: "Toto-Africa", secondWord: "Journey - Don't stop belivin'", thirdWord: "The Police - Every breath you take.", fourthWord: "Michael Jackson - Billie Jean", fifthWord: "Dolly Parton - 9-5")
    var second80 = HumTheSong(title: "80´s", firstWord: "Paul Simon - You can call me Al", secondWord: "Men at work - Down under", thirdWord: "Michael Jackson - Beat it", fourthWord: "Wham! - Wake me up before you go-go", fifthWord: "Scorpions - Rock you like a hurricane")
    var disco = HumTheSong(title: "Disco-songs", firstWord: "Diana Summer - Hot stuff", secondWord: "Boney M. - Daddy Cool", thirdWord: "Sister Sledge - We Are Family", fourthWord: "Bee Gees - Stayin' Alive", fifthWord: "Pointer Sisters - I'm So Excited")
    var hipHopRnB1 = HumTheSong(title: "Hip hop/RnB", firstWord: "R. Kelly - Worlds greatest", secondWord: "The Black Eyed Peas - Where Is The Love?", thirdWord: "Mario - Let Me Love You", fourthWord: "Usher - Yeah!", fifthWord: "Akon - Beautiful")
    var hipHopRnB2 = HumTheSong(title: "Hip hop/RnB", firstWord: "Beyonce - Single Ladies", secondWord: "Diddy - Last Night", thirdWord: "Snoop Dogg - Young, Wild & Free", fourthWord: "Will Smith - Gettin’ Jiggy Wit It", fifthWord: "MC Hammer - U Can’t Touch This")
    var house = HumTheSong(title: "House", firstWord: "Avicii- Wake me up", secondWord: "Swedish House  Mafia - One", thirdWord: "Kygo - Stole the show", fourthWord: "David guetta - Titanium", fifthWord: "Axwell/Ingrosso - More then you know")
    
    
    var svenskSchlager = HumTheSong(title: "Swedish Schlager", firstWord: "Satelit", secondWord: "Waterloo", thirdWord: "Listen to your heartbeat", fourthWord: "Genom eld och vatten", fifthWord: "I cant go on")
    
    
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
    
    
    
    
    
    func initCharades(language: String, firstCardDeck: Int, lastCardDeck: Int){
        self.charadeList.removeAll()
        if(language == "swe"){
            for charadeCard in charadesArraySwe1{
                self.charadeList.append(charadeCard)
            }
            if(language == "eng"){
                for charadeCard in charadesArrayEng1 {
                    self.charadeList.append(charadeCard)
                }
            }
        }
    }
    
    
    
    
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










