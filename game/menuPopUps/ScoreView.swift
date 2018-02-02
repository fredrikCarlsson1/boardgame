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
    let goalView = UIView()
    let zeroPointsView = UIView()
    let twetyPointsView = UIView()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let label5 = UILabel()
    let label0Points = UILabel()
    let label20Points = UILabel()
    let label40Points = UILabel()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let viewHeight = uiView.frame.height
    let viewWidth = uiView.frame.width
    let nrOfTeams = LocalDataBase.teamArray.count
    
        view1.backgroundColor = .black
        view2.backgroundColor = .black
        view3.backgroundColor = .black
        view4.backgroundColor = .black
        view5.backgroundColor = .black
        goalView.backgroundColor = .gray
        zeroPointsView.backgroundColor = .gray
        twetyPointsView.backgroundColor = .gray
        
        label0Points.text = "0"
        label20Points.text = "20"
        label40Points.text = "40"
        label1.text = LocalDataBase.teamArray[0].name
        label2.text = LocalDataBase.teamArray[1].name
        
        
        view1.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        view1.layer.shadowOffset = CGSize(width:0, height:2.75)
        view1.layer.shadowRadius = 1.75
        view1.layer.shadowOpacity = 0.45
        
        view2.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
        view2.layer.shadowOffset = CGSize(width:0, height:2.75)
        view2.layer.shadowRadius = 1.75
        view2.layer.shadowOpacity = 0.45
        
        zeroPointsView.frame = CGRect(x: Int(uiView.frame.origin.x)-10, y: Int(viewHeight)-5, width: Int(uiView.frame.width-30), height: 2)
        twetyPointsView.frame = CGRect(x: Int(uiView.frame.origin.x)-10, y: Int(uiView.frame.origin.y)+Int(viewHeight)/2-25, width: Int(uiView.frame.width-30), height: 2)
        goalView.frame = CGRect(x: Int(uiView.frame.origin.x)-10, y: Int(uiView.frame.origin.y), width: Int(uiView.frame.width-30), height: 2)
        
        label0Points.frame = CGRect(x: Int(uiView.frame.origin.x)-40, y: Int(viewHeight)-25, width: 35, height: 20)
        label20Points.frame = CGRect(x: Int(uiView.frame.origin.x)-40, y: Int(uiView.frame.origin.y)+Int(viewHeight)/2-45, width: 35, height: 20)
        label40Points.frame = CGRect(x: Int(uiView.frame.origin.x)-40, y: Int(uiView.frame.origin.y)-20, width: 35, height: 20)
        
        
        label1.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 0)+2, y: Int(viewHeight)+15, width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: 20)
        label2.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 1)+2, y: Int(viewHeight)+15, width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: 20)
        
        view1.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 0), y: getStartingY(viewHeight: viewHeight, barHeight: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[0].points)), width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[0].points))
        
        view2.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 1), y: getStartingY(viewHeight: viewHeight, barHeight: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[1].points)), width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[1].points))
        
        if(nrOfTeams == 3){
             view3.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 2), y: getStartingY(viewHeight: viewHeight, barHeight: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[2].points)), width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[2].points))
        }
        else if(nrOfTeams == 4){
             view3.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 2), y: getStartingY(viewHeight: viewHeight, barHeight: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[2].points)), width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[2].points))
            view4.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 3), y: getStartingY(viewHeight: viewHeight, barHeight: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[3].points)), width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[3].points))
        }
        else if(nrOfTeams == 5){
             view3.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 2), y: getStartingY(viewHeight: viewHeight, barHeight: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[2].points)), width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[2].points))
              view4.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 3), y: getStartingY(viewHeight: viewHeight, barHeight: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[3].points)), width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[3].points))
            view5.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 4), y: getStartingY(viewHeight: viewHeight, barHeight: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[4].points)), width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: getBarHeight(viewHeight: viewHeight, points: LocalDataBase.teamArray[4].points))
        }
        
        uiView.addSubview(goalView)
        uiView.addSubview(zeroPointsView)
        uiView.addSubview(twetyPointsView)
        uiView.addSubview(label0Points)
        uiView.addSubview(label20Points)
        uiView.addSubview(label40Points)
        
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
            label3.text = LocalDataBase.teamArray[2].name
            label3.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 2)+2, y: Int(viewHeight)+15, width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: 15)
            
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
            label3.text = LocalDataBase.teamArray[2].name
            label3.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 2)+2, y: Int(viewHeight)+15, width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: 15)
            
            
            view4.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
            view4.layer.shadowOffset = CGSize(width:0, height:2.75)
            view4.layer.shadowRadius = 1.75
            view4.layer.shadowOpacity = 0.45
            label4.text = LocalDataBase.teamArray[3].name
            label4.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 3)+2, y: Int(viewHeight)+15, width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: 15)
            
            
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
            label3.text = LocalDataBase.teamArray[2].name
            label3.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 2)+2, y: Int(viewHeight)+15, width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: 15)
            
            view4.layer.shadowColor = UIColor(red:0/255.0, green:0/255.0, blue:0/255.0, alpha:1.0).cgColor
            view4.layer.shadowOffset = CGSize(width:0, height:2.75)
            view4.layer.shadowRadius = 1.75
            view4.layer.shadowOpacity = 0.45
            label4.text = LocalDataBase.teamArray[3].name
            label4.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 3)+2, y: Int(viewHeight)+15, width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: 15)
            
            view5.layer.shadowOffset = CGSize(width:0, height:2.75)
            view5.layer.shadowRadius = 1.75
            view5.layer.shadowOpacity = 0.45
            label5.text = LocalDataBase.teamArray[4].name
            label5.frame = CGRect(x: getStartingX(viewWidth: viewWidth, nrOfTeams: nrOfTeams, position: 4)+2, y: Int(viewHeight)+15, width: getBarWidth(viewWidth: viewWidth, nrOfTeams: nrOfTeams), height: 15)
            
            
           
        }
      
    }
    
    func getBarHeight(viewHeight: CGFloat, points: Int) -> Int{
        let oneCell = Int(viewHeight)/45
        let heightOfBar = oneCell*points
        return heightOfBar+5
    }
    
    func getBarWidth(viewWidth: CGFloat, nrOfTeams: Int) -> Int{
        let oneColumn = Int(viewWidth)/nrOfTeams-20
        return oneColumn
    }
    func getStartingX (viewWidth: CGFloat, nrOfTeams: Int, position: Int) -> Int{
        let x = Int(viewWidth)*position/nrOfTeams+15
        return x
    }
    func getStartingY(viewHeight: CGFloat, barHeight: Int) -> Int{
        let y = Int(viewHeight)-barHeight
        return y
    }
    
    

    @IBAction func doneButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    


}
