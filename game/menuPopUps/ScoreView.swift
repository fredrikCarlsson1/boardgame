//
//  ScoreView.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-29.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class ScoreView: UIViewController {

    @IBOutlet weak var uiView: UIView!
    
    let view1 = UIView()
    let view2 = UIView()
    let view3 = UIView()
    let view4 = UIView()
    let view5 = UIView()

    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let label5 = UILabel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
    //let viewHeight = uiView.frame.height
    let viewWidth = uiView.frame.width
    let nrOfTeams = LocalDataBase.teamArray.count
    
        view1.backgroundColor =  UIColor(hexString: "#8f6886")
        view2.backgroundColor =  UIColor(hexString: "#dbd16d")
        view3.backgroundColor =  UIColor(hexString: "#568da0")
        view4.backgroundColor = UIColor(hexString: "#cc7297")
        view5.backgroundColor = UIColor(hexString: "#b4b75f")
        label1.textColor = UIColor(hexString: "#8f6886")
        label2.textColor = UIColor(hexString: "#DBAB2A")
        label3.textColor = UIColor(hexString: "#568da0")
        label4.textColor = UIColor(hexString: "#cc7297")
        label5.textColor = UIColor(hexString: "#b4b75f")
        label1.font = UIFont.boldSystemFont(ofSize: 16)
        label2.font = UIFont.boldSystemFont(ofSize: 16)
        label3.font = UIFont.boldSystemFont(ofSize: 16)
        label4.font = UIFont.boldSystemFont(ofSize: 16)
        label5.font = UIFont.boldSystemFont(ofSize: 16)
   
        label1.text = "\(LocalDataBase.teamArray[0].name) (\(LocalDataBase.teamArray[0].points) \(NSLocalizedString("points", comment: "")))"
        label2.text = "\(LocalDataBase.teamArray[1].name) (\(LocalDataBase.teamArray[1].points) \(NSLocalizedString("points", comment: "")))"
        
        
        view1.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        view1.layer.shadowOffset = CGSize(width:0, height:2.75)
        view1.layer.shadowRadius = 1.75
        view1.layer.shadowOpacity = 0.45
        
        view2.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        view2.layer.shadowOffset = CGSize(width:0, height:2.75)
        view2.layer.shadowRadius = 1.75
        view2.layer.shadowOpacity = 0.45
        
        
        label1.frame = CGRect(x: 40, y: Int(uiView.frame.origin.y)-30, width: 200, height: 25)
        label2.frame = CGRect(x: 40, y: Int(uiView.frame.origin.y)+45, width: 200, height: 25)
        
        view1.frame = CGRect(x: 30, y: Int(uiView.frame.origin.y)-5, width: getBarWidth(viewWidth: viewWidth, points: LocalDataBase.teamArray[0].points), height: 40)
        view2.frame = CGRect(x: 30, y: Int(uiView.frame.origin.y)+70, width: getBarWidth(viewWidth: viewWidth, points: LocalDataBase.teamArray[1].points), height: 40)
        
        if(nrOfTeams == 3){
            label3.frame = CGRect(x: 40, y: Int(uiView.frame.origin.y)+120, width: 200, height: 25)
            
            view3.frame = CGRect(x: 30, y: Int(uiView.frame.origin.y)+145, width: getBarWidth(viewWidth: viewWidth, points: LocalDataBase.teamArray[2].points), height: 40)
        }
        else if(nrOfTeams == 4){
        label3.frame = CGRect(x: 40, y: Int(uiView.frame.origin.y)+120, width: 200, height: 25)
        
        view3.frame = CGRect(x: 30, y: Int(uiView.frame.origin.y)+145, width: getBarWidth(viewWidth: viewWidth, points: LocalDataBase.teamArray[2].points), height: 40)
        
        label4.frame = CGRect(x: 40, y: Int(uiView.frame.origin.y)+195, width: 200, height: 25)
        view4.frame = CGRect(x: 30, y: Int(uiView.frame.origin.y)+220, width: getBarWidth(viewWidth: viewWidth, points: LocalDataBase.teamArray[3].points), height: 40)
        }
        else if(nrOfTeams == 5){
        
        label3.frame = CGRect(x: 40, y: Int(uiView.frame.origin.y)+120, width: 200, height: 25)
        view3.frame = CGRect(x: 30, y: Int(uiView.frame.origin.y)+145, width: getBarWidth(viewWidth: viewWidth, points: LocalDataBase.teamArray[2].points), height: 40)
        label4.frame = CGRect(x: 40, y: Int(uiView.frame.origin.y)+195, width: 200, height: 25)
        view4.frame = CGRect(x: 30, y: Int(uiView.frame.origin.y)+220, width: getBarWidth(viewWidth: viewWidth, points: LocalDataBase.teamArray[3].points), height: 40)
        label5.frame = CGRect(x: 40, y: Int(uiView.frame.origin.y)+270, width: 200, height: 25)
        view5.frame = CGRect(x: 30, y: Int(uiView.frame.origin.y)+295, width: getBarWidth(viewWidth: viewWidth, points: LocalDataBase.teamArray[4].points), height: 40)
    
        }

        uiView.addSubview(view1)
        uiView.addSubview(view2)
        uiView.addSubview(label1)
        uiView.addSubview(label2)

        if(nrOfTeams == 3){
            uiView.addSubview(view3)
            uiView.addSubview(label3)

            view3.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
            view3.layer.shadowOffset = CGSize(width:0, height:2.75)
            view3.layer.shadowRadius = 1.75
            view3.layer.shadowOpacity = 0.45
            label3.text = "\(LocalDataBase.teamArray[2].name) (\(LocalDataBase.teamArray[2].points) \(NSLocalizedString("points", comment: "")))"

        }
        else if(nrOfTeams == 4){
            uiView.addSubview(view3)
            uiView.addSubview(view4)
            uiView.addSubview(label3)
            uiView.addSubview(label4)

            view3.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
            view3.layer.shadowOffset = CGSize(width:0, height:2.75)
            view3.layer.shadowRadius = 1.75
            view3.layer.shadowOpacity = 0.45
            label3.text = "\(LocalDataBase.teamArray[2].name) (\(LocalDataBase.teamArray[2].points) \(NSLocalizedString("points", comment: "")))"

            view4.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
            view4.layer.shadowOffset = CGSize(width:0, height:2.75)
            view4.layer.shadowRadius = 1.75
            view4.layer.shadowOpacity = 0.45
            label4.text = "\(LocalDataBase.teamArray[3].name) (\(LocalDataBase.teamArray[3].points) \(NSLocalizedString("points", comment: "")))"
 
        }
        else if(nrOfTeams == 5){
            uiView.addSubview(view3)
            uiView.addSubview(view4)
            uiView.addSubview(view5)
            uiView.addSubview(label3)
            uiView.addSubview(label4)
            uiView.addSubview(label5)

            view3.layer.shadowOffset = CGSize(width:0, height:2.75)
            view3.layer.shadowRadius = 1.75
            view3.layer.shadowOpacity = 0.45
            label3.text = "\(LocalDataBase.teamArray[2].name) (\(LocalDataBase.teamArray[2].points) \(NSLocalizedString("points", comment: "")))"
      
            view4.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
            view4.layer.shadowOffset = CGSize(width:0, height:2.75)
            view4.layer.shadowRadius = 1.75
            view4.layer.shadowOpacity = 0.45
            label4.text = "\(LocalDataBase.teamArray[3].name) (\(LocalDataBase.teamArray[3].points) \(NSLocalizedString("points", comment: "")))"

            view5.layer.shadowOffset = CGSize(width:0, height:2.75)
            view5.layer.shadowRadius = 1.75
            view5.layer.shadowOpacity = 0.45
            label5.text = "\(LocalDataBase.teamArray[4].name) (\(LocalDataBase.teamArray[4].points) \(NSLocalizedString("points", comment: "")))"
   
        }
      
    }
  
    func getBarWidth(viewWidth: CGFloat, points: Int) -> Int{
        let oneCell = Int(viewWidth)/35
        let heightOfBar = oneCell*points
        return heightOfBar+5
    }
    func getStartingX (viewWidth: CGFloat, nrOfTeams: Int, position: Int) -> Int{
        let x = Int(viewWidth)*position/nrOfTeams+15
        return x
    }
    func getStartingY(viewHeight: CGFloat, barHeight: Int) -> Int{
        let y = Int(viewHeight)-barHeight
        return y
    }
    
    
    @IBAction func dismissBackgroundButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doneButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    


}
