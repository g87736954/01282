//
//  ViewController.swift
//  01282
//
//  Created by User on 2019/1/28.
//  Copyright © 2019 g87. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var red: UISlider!
    @IBOutlet weak var green: UISlider!
    @IBOutlet weak var blue: UISlider!
    @IBOutlet weak var alpha: UISlider!
    @IBOutlet weak var redvalue: UILabel!
    
    @IBOutlet weak var greenvalue: UILabel!
    @IBOutlet weak var bluevalue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func change(){
        imageview.backgroundColor=UIColor(red: CGFloat(red.value), green: CGFloat(green.value), blue: CGFloat(blue.value), alpha: CGFloat(alpha.value))
    }
    
    @IBAction func changecolar(_ sender: UISlider) {
        change()
        if sender == red || sender == green || sender == green{
            redvalue.text = String(format:"%.2f",(red.value))
            bluevalue.text = String(format: "%.2f", (blue.value))
            greenvalue.text = String(format: "%.2f", (green.value))
            
        }
    }
    
    
    
    //    func colorvalue(){
//        if sender == red || sender == green || sender == green
//    }
//    @IBAction func red(_ sender: Any) {
//       change()
//
//    }
//    @IBAction func green(_ sender: Any) {
//       change()
//    }
//
//    @IBAction func blue(_ sender: Any) {
//        change()
//    }
//    @IBAction func alpha(_ sender: Any) {
//       change()
//    }
    
    
    
}

