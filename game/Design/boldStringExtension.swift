//
//  boldStringExtension.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-02-01.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

    extension NSMutableAttributedString {
        @discardableResult func bold(_ text: String) -> NSMutableAttributedString {
            let attrs: [NSAttributedStringKey: Any] = [.font: UIFont(name: "AvenirNext-Medium", size: 12)!]
            let boldString = NSMutableAttributedString(string:text, attributes: attrs)
            append(boldString)
            
            return self
        }
        
        @discardableResult func normal(_ text: String) -> NSMutableAttributedString {
            let normal = NSAttributedString(string: text)
            append(normal)
            
            return self
        
    }

}
