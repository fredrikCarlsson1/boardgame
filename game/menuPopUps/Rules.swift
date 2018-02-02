//
//  Rules.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-29.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

class Rules: UIViewController {
    
    @IBOutlet weak var textView1: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textView1.attributedText = attributedText()
        
    }
    func attributedText(string: String) -> NSAttributedString {
        
        let speletIKorthet = "Spelet i korthet:\nSom namnet antyder är det här det ultimata sällskapsspelet. I spelet gömmer det sig nämligen fem delmoment:\n- Med andra ord\n- Charader\n- Nynna låten\n- Kan ni lista ut svaret\n- Lagutmaning\n\nInför varje lags tur slumpas ett av dessa fem spel fram. Maxpoängen per runda är 5 poäng, oavsett vilket av spelen som slumpas fram.\nDet lag som först kommer upp i 40 poäng vinner.\n\n" as NSString
        
        let antalSpelare = "Antal spelare:\n4 eller fler\n\n" as NSString
        
        let antalLag = "Antal lag:\n2-5 lag, där vardera lag behöver minst 2 spelare\n\n" as NSString
        
        let speletsGång = "Spelets gång:\nEfter ni delat upp er i lag kommer spelet slumpa fram startande lag. Det laget " as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 15.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 15.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Spelet i korthet:"))
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Antal spelare:"))
        
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Antal lag:"))
        
        // 4
        return attributedString
    }
    

    @IBAction func doneButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
