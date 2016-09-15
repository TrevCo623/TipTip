//
//  ViewController.swift
//  TipTip
//
//  Created by Connolly, Trevor on 9/15/16.
//  Copyright © 2016 Connolly, Trevor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func CalcTip(sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.2, 0.25]
        
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipLabel.text = String(format: "$%.2f" , tip)
        TotalLabel.text = String(format: "$%.2f" , total)
    }
    
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        }
}

