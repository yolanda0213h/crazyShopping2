//
//  ViewController.swift
//  crazyShopping
//
//  Created by Yolanda H. on 2018/12/15.
//  Copyright © 2018 Yolanda H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepper01: UIStepper!
    @IBOutlet weak var stepper02: UIStepper!
    @IBOutlet weak var stepper03: UIStepper!
    @IBOutlet weak var stepper04: UIStepper!
    @IBOutlet weak var label01: UILabel!
    @IBOutlet weak var label02: UILabel!
    @IBOutlet weak var label03: UILabel!
    @IBOutlet weak var label04: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    let realprice01 = 300
    let realprice02 = 1000
    let realprice03 = 200
    let realprice04 = 500
    var item1:Int = 0
    var item2:Int = 0
    var item3:Int = 0
    var item4:Int = 0
    let format = NumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func stepperfunc01(_ sender: UIStepper) {
        item1 = Int(stepper01.value)
        item2 = Int(stepper02.value)
        item3 = Int(stepper03.value)
        item4 = Int(stepper04.value)
        label01.text = item1.description
        var total:Int = 0
        total = item1 * realprice01 + item2 * realprice02 + item3 * realprice03 + item4 * realprice04
        format.maximumFractionDigits = 0
        format.numberStyle = .currency
        totalPrice.text = format.string(from: NSNumber(value: total))
        
    }
    @IBAction func stepperfunc02(_ sender: UIStepper) {
        item1 = Int(stepper01.value)
        item2 = Int(stepper02.value)
        item3 = Int(stepper03.value)
        item4 = Int(stepper04.value)
        label02.text = item2.description
        var total:Int = 0
        total = item1 * realprice01 + item2 * realprice02 + item3 * realprice03 + item4 * realprice04
        totalPrice.text = format.string(from: NSNumber(value: total))
    }
    @IBAction func stepperfunc03(_ sender: UIStepper) {
        item1 = Int(stepper01.value)
        item2 = Int(stepper02.value)
        item3 = Int(stepper03.value)
        item4 = Int(stepper04.value)
        label03.text = item3.description
        var total:Int = 0
        total = item1 * realprice01 + item2 * realprice02 + item3 * realprice03 + item4 * realprice04
        format.maximumFractionDigits = 0
        format.numberStyle = .currency
        totalPrice.text = format.string(from: NSNumber(value: total))
    }
    @IBAction func stepperfunc04(_ sender: UIStepper) {
        item1 = Int(stepper01.value)
        item2 = Int(stepper02.value)
        item3 = Int(stepper03.value)
        item4 = Int(stepper04.value)
        label04.text = item4.description
        var total:Int = 0
        total = item1 * realprice01 + item2 * realprice02 + item3 * realprice03 + item4 * realprice04
        format.maximumFractionDigits = 0
        format.numberStyle = .currency
        totalPrice.text = format.string(from: NSNumber(value: total))
        
    }
    
    @IBAction func cleared(_ sender: UIButton) {
        stepper01.value = 0
        stepper02.value = 0
        stepper03.value = 0
        stepper04.value = 0
        item1 = Int(stepper01.value)
        item2 = Int(stepper02.value)
        item3 = Int(stepper03.value)
        item4 = Int(stepper04.value)
        label01.text = item1.description
        label02.text = item2.description
        label03.text = item3.description
        label04.text = item4.description
        var total:Int = 0
        total = item1 * realprice01 + item2 * realprice02 + item3 * realprice03 + item4 * realprice04
        format.maximumFractionDigits = 0
        format.numberStyle = .currency
        totalPrice.text = format.string(from: NSNumber(value: total))
    }
    
}

