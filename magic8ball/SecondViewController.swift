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
        if(userQuestion.text == "") //check to make sure a question is entered before they press the button
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
            
            
            let computerChoice = Int.random(in: 1 ... 10)
        
            var reply:String = ""
        
            switch computerChoice
            {
            case 1:  reply = "Sure, go ahead"
            case 2:  reply = "That's probably not a good idea"
            case 3:  reply = "That's for you to decide"
            case 4:  reply = "Go ahead, sieze the day"
            case 5:  reply = "The future is looking bright"
            case 6:  reply = "Keep working on it and you'll get there"
            case 7:  reply = "It might be best to just wait right now"
            case 8:  reply = "If it doesn't work the first time, try again"
            case 9:  reply = "Remember it's not the end of the world"
            case 10:  reply = "Sit back and think more about it first"
            case 11:  reply = "Just push through it"
            case 12:  reply = "Brilliant!"
                
                
            default: reply = "Try again later"
            }
            
            let alert = UIAlertController(title: "Response", message: "\(reply)", preferredStyle: .alert)
            
            let addAction = UIAlertAction(title: "OK", style: .default) { (action) in
            }
            alert.addAction(addAction)
            
            present(alert, animated: false, completion: nil)
        
        }
        else
        {
            //directionLabel.text = "Please enter a question first"
            let alertController = UIAlertController(title: "Try again", message: "Please ask a question.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    

}
