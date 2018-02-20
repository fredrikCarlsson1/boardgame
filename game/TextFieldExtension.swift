//
//  TextFieldExtension.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-02-14.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

extension UITextView{
    
    func numberOfLines() -> Int{
        if let fontUnwrapped = self.font{
            return Int(self.contentSize.height / fontUnwrapped.lineHeight)
        }
        return 0
    }

}
