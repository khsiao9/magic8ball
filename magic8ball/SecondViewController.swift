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

        // Do any additional setup after loading the view.
    }
    
    @IBAction func responseButtonTapped(_ sender: UIButton) {
        let computerChoice = Int.random(in: 1 ... 3)
        
        var reply:String = ""
        
        if computerChoice == 1
        {
            reply = "Sure, go ahead"
        }
        else
        {
            reply = "Reply hazy, please try again"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
