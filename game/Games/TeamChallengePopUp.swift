
import UIKit
import AVFoundation

class TeamChallengePopUp: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var teamChallengeLabel: UILabel!
    @IBOutlet weak var menuView: UIViewX!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var scoreButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var menuButton: FloatingActionButton!
    
    
    var tapGesture = UITapGestureRecognizer()
    var teamID: Int?
    var game: Int?
    var timer = Timer()
    var seconds = 45
    var soundPlayer = AVAudioPlayer()
    var audioArray = ["end_bell"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        closeMenu()
        timeLabel.text = String(45)
        timer.fire()
        timeLabel.layer.masksToBounds = true
        timeLabel.layer.cornerRadius = 25
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WordsCharadesHum.startTimer), userInfo: nil, repeats: true)
        teamChallengeLabel.text = NSLocalizedString("teamChallenge", comment: "")
        if let game = game{
            subjectLabel.text = LocalDataBase().getSubjectFrom(list: game)
            textView.text = LocalDataBase().teamChallengeList[LocalDataBase().getIndexForEachList(index: game)].challenge
        }
        
    }
    
    @IBAction func exitButton(_ sender: UIButton) {
    }
    
    func pausTimer(){
        timer.invalidate()
    }
    func continueTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WordsCharadesHum.startTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuView.transform == .identity){
                self.closeMenu()
                self.continueTimer()
            }
            else {
                self.tapGesture = UITapGestureRecognizer(target: self, action: #selector(StartingPage.handleTap))
                self.tapGesture.numberOfTapsRequired = 1
                self.tapGesture.numberOfTouchesRequired = 1
                self.view.addGestureRecognizer(self.tapGesture)
                self.view.isUserInteractionEnabled = true
                self.pausTimer()
                self.menuView.transform = .identity
            }
        })
        UIView.animate(withDuration: 0.6, delay: 0.2, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: [], animations: {
            if(self.menuView.transform == .identity){
                self.helpButton.transform = .identity
                self.scoreButton.transform = .identity
                self.exitButton.transform = .identity
                self.settingsButton.transform = .identity
            }
        })
    }
    
    func closeMenu(){
        self.menuView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
        self.settingsButton.transform = CGAffineTransform(translationX: 15, y: 0)
        self.helpButton.transform = CGAffineTransform(translationX: 15, y: -8)
        self.exitButton.transform = CGAffineTransform(translationX: 0, y: -15)
        self.scoreButton.transform = CGAffineTransform(translationX: 8, y: -9)
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuButton.transform != .identity){
                self.menuButton.transform = .identity
                self.closeMenu()
                self.continueTimer()
            }
        })
        
    }
    
    @IBAction func doneButton(_ sender: UIButton) {
        timer.invalidate()
        performSegue(withIdentifier: "challengeToAlertSegue", sender: self)
    }
    
    func playMusic(){
        if(LocalDataBase.soundOn == true){
            do{
                soundPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: audioArray[0], ofType: "mp3")!))
                soundPlayer.prepareToPlay()
            }
            catch{
                print(error)
            }
            soundPlayer.play()
        }
    }
    
    
    @objc func startTimer() {
        seconds=seconds-1
        if (seconds > 0){
            timeLabel.text = String(seconds)
        }
        else{
            timeLabel.text = "0"
        }
        
        if (seconds == 0){
            playMusic()
            
        }
        if (seconds == -3){
            if(LocalDataBase.soundOn == true){
                
                soundPlayer.stop()
            }
            timer.invalidate()
            performSegue(withIdentifier: "challengeToAlertSegue", sender: self)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AlertView {
            if let team = teamID{
                destination.teamID = team
            }
            destination.gameNumber = 2
        }
        if let destination = segue.destination as? Rules{
            destination.firstViewString = "teamChallenge"
        }
    }
}






