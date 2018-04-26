//
//  ViewController.swift
//  W_Shopping_app
//
//  Created by shahin miraftabi on 4/26/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wageTxt: CurencyTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width ,height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        
    }
    
    @objc func calculate ()
    {
     print("helo")
    }
    
    
    
}

//control + i : for formating all the text  

