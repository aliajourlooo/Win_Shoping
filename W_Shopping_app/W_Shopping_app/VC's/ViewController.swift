//
//  ViewController.swift
//  W_Shopping_app
//
//  Created by shahin miraftabi on 4/26/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var NumberOfHours: UILabel!
    @IBOutlet weak var wageTxt: CurencyTextField!
    
    @IBOutlet weak var priceTxt: CurencyTextField!
    @IBOutlet weak var hoursLbl: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
            
        // Do any additional setup after loading the view, typically from a nib.
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width ,height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
    }
    
    @objc func calculate ()
    {
        
        //because there might not be any number
        // so we must check them at the first that is there any text and then check that they are convertable to double or nor (they must be double for caclulatirng
        if let wageText = wageTxt.text , let priceText = priceTxt.text
        {
            if let wage = Double(wageText) , let price = Double(priceText)
            {
                
                view.endEditing(true)
                NumberOfHours.isHidden = false
                hoursLbl.isHidden = false
                NumberOfHours.text = "\(Wage.howManyHours(workWage: wage, forMaterial: price))"
            }
        }
    }
    
    @IBAction func ClearCalculator(_ sender: UIButton) {
        hoursLbl.isHidden = true
        NumberOfHours.isHidden = true
        priceTxt.text = ""
        wageTxt.text = ""
        
    }
    
    
}

//control + i : for formating all the text  

