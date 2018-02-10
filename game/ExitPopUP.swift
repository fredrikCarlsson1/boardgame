//
//  ExitPopUP.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-30.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class ExitPopUP: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func exitButton(_ sender: UIButton) {
        LocalDataBase.teamArray.removeAll()
        performSegue(withIdentifier: "exitToStartSegue", sender: self)
    }
    @IBAction func dismissBackgroundButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func noButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
