//
//  ViewController.swift
//  calculator
//
//  Created by nijat on 10/6/19.
//  Copyright © 2019 nijat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var screenNumber:Double = 0;
    var firstNumb:Double = 0;
    var operation:Int = 0;
    var mathSign:Bool = false;
    var dotisPlaced = false ;

    @IBOutlet weak var result: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
            
        }
        else {
            result.text = result.text! + String(sender.tag)

        }
        
        screenNumber = Double(result.text!)!
    }
     	    
 
      
    @IBAction func bformul(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15 {
            if sender.tag == 40 {
                firstNumb = -Double(result.text!)!
                result.text = "\(firstNumb)"
            }
            else {
          firstNumb = Double(result.text!)!
            }
            if sender.tag == 11 {// bol.
                result.text = "÷";

            }
            else if sender.tag == 12 {// vur.
                result.text = "✕";

            }
            else if sender.tag == 13 {// chix.
                result.text = "−";

            }
            else if sender.tag == 14 {// plus.
                result.text = "+";
            }
        
            
            operation = sender.tag
            mathSign = true;
            dotisPlaced = false;
        }
        else if operation =    {
            
            
            
        }
        else if sender.tag == 15 {//hesabla
            if operation == 11 {
                result.text = String(firstNumb / screenNumber)
            }
            else if operation == 12 {
                result.text = String(firstNumb * screenNumber)
            }
            else if operation == 13 {
                result.text = String(firstNumb - screenNumber)
            }
            else if operation == 14 {
                result.text = String(firstNumb + screenNumber)
            }
           
        }
        
        
        else if sender.tag == 10 {
            result.text = ""
            firstNumb = 0
            screenNumber = 0
            operation = 0
        }
        
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

 
