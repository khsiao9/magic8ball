//
//  SecondViewController.swift
//  magic8ball
//
//  Created by Jacqueline Chen 2021 on 5/8/19.
//  Copyright © 2019 Kaylin Hsiao 2019. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    var check: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        if(userQuestion.isEqual(""))
        {
            check = false
            
        }
        else
        {
            check = true
        }
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    @IBOutlet weak var userQuestion: UITextView!
    @IBAction func responseButtonTapped(_ sender: UIButton)
    {
        if(check == true)
        {
            let computerChoice = Int.random(in: 1 ... 3)
        
            var reply:String = ""
        
            if computerChoice == 1
            {
                reply = "Sure, go ahead"
            }
            if computerChoice == 2
            {
                reply = "That's probably not a good idea right now"
            }
            if computerChoice == 3
            {
                reply = "Sure, go ahead"
            }
            if computerChoice == 4
            {
                reply = "Sure, go ahead"
            }
            if computerChoice == 5
            {
                reply = "Sure, go ahead"
            }
            else
            {
                reply = "Reply hazy, please try again"
            }
        }
    }
    

}
