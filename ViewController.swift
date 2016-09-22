//
//  ViewController.swift
//  small tipper
//
//  Created by Steve Kim on 9/20/16.
//  Copyright © 2016 Steve Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billBill: UIImageView!
    @IBOutlet weak var tipBill: UIImageView!
    @IBOutlet weak var totalBill: UIImageView!
    
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
 
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet weak var myLabel: UILabel!
    

    var myString = String()
    
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

        myLabel.text = myString

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func amountChange(sender: AnyObject) {
        myLabel.text = myString
        let myTipPercent = Double(myLabel.text!)
        let bill = Double(billField.text!) ?? 0
        let tip = bill * myTipPercent!/100
        let total = bill + tip
        billLabel.text = String(format: "%.2f",bill)
        tipLabel.text = String(format: "%.2f",tip)
        totalLabel.text = String(format: "%.2f",total)
        showbillBill()
        showtipBill()
        showtotalBill()
        rmbillBill()
        rmtipBill()
        rmtotalBill()
    }
    @IBAction func touchChange(sender: AnyObject) {
        myLabel.text = myString
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    func showbillBill(){
        UIView.animateWithDuration(0.5, animations:{ self.billBill.alpha = 1.0
        })}
    func showtipBill(){
        UIView.animateWithDuration(0.5, animations:{ self.tipBill.alpha = 1.0
        })}
    func showtotalBill(){
        UIView.animateWithDuration(0.5, animations:{ self.totalBill.alpha = 1.0
        })}
    func rmbillBill(){
        UIView.animateWithDuration(0.7, animations:{ self.billBill.alpha = 0
        })}
    func rmtipBill(){
        UIView.animateWithDuration(0.7, animations:{ self.tipBill.alpha = 0
        })}
    func rmtotalBill(){
        UIView.animateWithDuration(0.7, animations:{ self.totalBill.alpha = 0
        })}


}

