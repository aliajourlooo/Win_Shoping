//
//  CurencyTextField.swift
//  W_Shopping_app
//
//  Created by shahin miraftabi on 4/26/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit
@IBDesignable
class CurencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        
        let size :CGFloat = 20
        var labl  = UILabel(frame: CGRect(x: size, y: (frame.size.height)/2 - (size/2) , width: size, height: size))
        labl.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.3166538292)
        labl.textAlignment = .center
        labl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        var formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        labl.text = formatter.currencySymbol
        print(labl.text)
        
        
        addSubview(labl)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizingFunc()
        
    }
    
    override  func prepareForInterfaceBuilder()
    {
        customizingFunc()
    }
    
    func customizingFunc()
    {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4987896127)
        layer.cornerRadius = 5.0
        
        
        textAlignment = .center
        if let p = placeholder
        {
            
            
            let attributed =  NSAttributedString(string: p, attributes: [.foregroundColor  : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
            attributedPlaceholder = attributed
            
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
            keyboardType = .decimalPad
            //because always we have place holder so we always white or code ,don't be worri about it
            
            
        }
    }
    //@ibdesign has a function that i think it's prepar
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
