//
//  SecondViewController.swift
//  magic8ball
//
//  Created by Jacqueline Chen 2021 on 5/8/19.
//  Copyright © 2019 Kaylin Hsiao 2019. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if(userQuestion.isEqual(""))
        {
            
            
        }
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var userQuestion: UITextView!
    @IBAction func responseButtonTapped(_ sender: UIButton)
    {
        let computerChoice = Int.random(in: 1 ... 3)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    
    
    

}
