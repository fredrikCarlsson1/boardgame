
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
    
    
    
    var teamID: Int?
    var game: Int?
    var titleNumber: Int?
    var timer = Timer()
    var seconds = 46
    var soundPlayer = AVAudioPlayer()
    var audioArray = ["airHorn"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        closeMenu()
        timer.fire()
        timeLabel.layer.masksToBounds = true
        timeLabel.layer.cornerRadius = 25
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WordsCharadesHum.startTimer), userInfo: nil, repeats: true)
        teamChallengeLabel.text = "Team Challenge"
        if let titleNr = titleNumber{
            subjectLabel.text = LocalDataBase().teamChallengeList[titleNr].title
            textView.text = LocalDataBase().teamChallengeList[titleNr].challenge
        }
        
    }
    
    @IBAction func exitButton(_ sender: UIButton) {
    }
    
    
    @IBAction func pauseButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, animations: {
            if(self.menuView.transform == .identity){
                self.closeMenu()
            }
            else {
                
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
    
    @IBAction func doneButton(_ sender: UIButton) {
        timer.invalidate()
        performSegue(withIdentifier: "challengeToAlertSegue", sender: self)
    }
    
    func playMusic(){
        do{
            soundPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: audioArray[0], ofType: "mp3")!))
            soundPlayer.prepareToPlay()
        }
        catch{
            print(error)
        }
        soundPlayer.play()
    }
    
    
    @objc func startTimer() {
        seconds=seconds-1
        timeLabel.text = String(seconds)
        
        if (seconds == 0){
            playMusic()
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
    }
}






