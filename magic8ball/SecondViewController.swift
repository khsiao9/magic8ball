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
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if(userQuestion.isEqual("")) //check to make sure a question is entered before they press the button
        {
            check = false
            directionLabel.text = "Please enter a question first"
            
        }
        else
        {
            check = true
        }
        
    }
    
    
    @IBOutlet weak var directionLabel: UILabel!
    
    @IBOutlet weak var userQuestion: UITextView!
    @IBAction func responseButtonTapped(_ sender: UIButton)
    {
        if(check == true) //randomize the responses
        {
            
            
            let computerChoice = Int.random(in: 1 ... 8)
        
            var reply:String = ""
        
            if computerChoice == 1
            {
                reply = "Sure, go ahead"
            }
            if computerChoice == 2
            {
                reply = "That's probably not a good idea"
            }
            if computerChoice == 3
            {
                reply = "That's for you to decide"
            }
            if computerChoice == 4
            {
                reply = "Go ahead, sieze the day"
            }
            if computerChoice == 5
            {
                reply = "The future is looking bright"
            }
            if computerChoice == 6
            {
                reply = "Keep working on it and you'll get there"
            }
            if computerChoice == 7
            {
                reply = "It might be best to just wait right now"
            }
            if computerChoice == 8
            {
                reply = "If it doesn't work the first time, try again"
            }
            
            let alert = UIAlertController(title: "Response", message: "\(reply)", preferredStyle: .alert)
            
            let addAction = UIAlertAction(title: "OK", style: .default) { (action) in
            }
            alert.addAction(addAction)
            
            present(alert, animated: false, completion: nil)
            
        }
        else
        {
            directionLabel.text = "Please enter a question first"
        }
    }
    

}
