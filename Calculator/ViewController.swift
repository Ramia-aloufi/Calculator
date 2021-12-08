//
//  ViewController.swift
//  Calculator
//
//  Created by R on 02/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelNumber: UILabel!
    var firstNum = ""
    var secondNum = ""
    var operation = ""
    var showInLabel = ""
    var operatoreActive = false
    var show = ""

    @IBOutlet var numbers: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func operationCliced(_ sender: Any) {
        for i in numbers{
            let a = sender as! UIButton
            if i.tag == a.tag{
                if i.tag != 10 && i.tag != 20 && i.tag != 30 && i.tag != 40 && i.tag != 50 && i.tag != 60{
                    if !operatoreActive{
                        firstNum += i.titleLabel!.text!
                        showInLabel =  firstNum

                    }else{
                        secondNum += i.titleLabel!.text!
                        showInLabel =  secondNum
                    }
                }else{
                    switch i.tag {
                    case 40:
                        operatoreActive = !operatoreActive
                        operation = "*"
                        showInLabel =  i.titleLabel!.text!
                    case 50:
                        operatoreActive = !operatoreActive
                        operation = "/"
                        showInLabel =  i.titleLabel!.text!
                   case 20:
                        operatoreActive = !operatoreActive
                        operation = "+"
                        showInLabel =  i.titleLabel!.text!
                    case 30:
                        operatoreActive = !operatoreActive
                        operation = "-"
                        showInLabel =  i.titleLabel!.text!
                    case 60:
                        operatoreActive = !operatoreActive
                        firstNum = ""
                        secondNum = ""
                        operation = ""
                        showInLabel =  "0"
                    case 10:
                        print(firstNum)
                        print(secondNum)
                        print(operation)
                        showInLabel =  i.titleLabel!.text!
                        switch operation {
                        case "*" :
                            showInLabel = "\(Double(firstNum)! * Double(secondNum)!)"
                            firstNum = ""
                            secondNum = ""
                        case "/" :
                            showInLabel = "\(Double(firstNum)! / Double(secondNum)!)"
                            firstNum = ""
                            secondNum = ""
                        case "+" :
                            showInLabel = "\(Double(firstNum)! + Double(secondNum)!)"
                            firstNum = ""
                            secondNum = ""
                        case "-" :
                            showInLabel = "\(Double(firstNum)! - Double(secondNum)!)"
                            firstNum = ""
                            secondNum = ""
                        default:
                            showInLabel = "0"
                            firstNum = ""
                            secondNum = ""
                        }
                        operatoreActive = !operatoreActive
                        operation = ""
                        firstNum = showInLabel
                        secondNum = ""
                    default:
                        showInLabel = "0"
                        firstNum = ""
                        secondNum = ""
                        operation = ""
                    }
                }
                labelNumber.text = showInLabel
            }
        }
    }
    
    
    
    
}

