//
//  CurencyTextField.swift
//  W_Shopping_app
//
//  Created by shahin miraftabi on 4/26/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit

class CurencyTextField: UITextField {

    
    override func awakeFromNib() {
       super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2528058979)
        layer.cornerRadius = 5.0
//       textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        placeholder = "Salam"
        textAlignment = .center
        if let p = placeholder
        {

        p
            var attributed =  NSAttributedString(string: p, attributes: [.foregroundColor  : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
            attributedPlaceholder = attributed
            
         textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        }
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
