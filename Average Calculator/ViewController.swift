//
//  ViewController.swift
//  Average Calculator
//
//  Created by Shaan Mirchandani 
//  Copyright © 2017 Shaan Mirchandani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTitleLabelOUTLET: UILabel!
    @IBOutlet weak var txtInputTxtOUTLET: UITextField!
    @IBOutlet var calcBtnOUTLET: UIButton!
    @IBOutlet weak var lblShowAvgOUTLET: UILabel!
    @IBOutlet weak var btnResetOUTLET: UIButton!
    
    var avg: Double = 0
    var total: Double = 0
    var count: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func pressCalculateButton(_ sender: UIButton) {
        if (!(txtInputTxtOUTLET.text?.isEmpty)!){
            var inputNumber = Double(txtInputTxtOUTLET.text!)
            count += 1
            calculateAvg(inputNum: inputNumber!)
            showAverage()
            txtInputTxtOUTLET.text?.removeAll()
        } else {
            lblShowAvgOUTLET.text = "Enter a number"
        }
   

    }
    @IBAction func pressResetButton(_ sender: UIButton) {
        resetValuess()
    }
    
    func calculateAvg(inputNum: Double){
        total += inputNum
        
        avg = total/count
    }
    
    func showAverage(){
        lblShowAvgOUTLET.text = String(avg)
    }
    
    func resetValuess(){
        avg = 0
        total = 0
        count = 0
        lblShowAvgOUTLET.text = "Show Average"
    }

}

