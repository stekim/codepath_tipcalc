//
//  DestyViewController.swift
//  small tipper
//
//  Created by Steve Kim on 9/22/16.
//  Copyright © 2016 Steve Kim. All rights reserved.
//

import UIKit

class DestyViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func takeAction(sender: UIButton) {
        self.performSegueWithIdentifier("mySeg", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let desty : ViewController = segue.destinationViewController as! ViewController
        desty.myString = myTextField.text!
    }


}
