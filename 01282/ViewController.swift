//
//  ViewController.swift
//  01282
//
//  Created by User on 2019/1/28.
//  Copyright © 2019 g87. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var redswitch: UISwitch!
    @IBOutlet weak var blueswitch: UISwitch!
    @IBOutlet weak var greenswitch: UISwitch!
    @IBOutlet weak var gradiantswitch: UISwitch!
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var gradinview: UIView!
    
    @IBOutlet weak var gradiant: UISlider!
    @IBOutlet weak var red: UISlider!
    @IBOutlet weak var green: UISlider!
    @IBOutlet weak var blue: UISlider!
    @IBOutlet weak var alpha: UISlider!
    
    
    @IBOutlet weak var redvalue: UILabel!
    @IBOutlet weak var greenvalue: UILabel!
    @IBOutlet weak var bluevalue: UILabel!
    
    @IBOutlet weak var alphavalue: UILabel!
    @IBOutlet weak var gradiantvalue: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageview.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    func change(){
       
        
        
    }
    
    @IBAction func changecolar(_ sender: UISlider) {
        imageview.backgroundColor=UIColor(red: CGFloat(red.value),
                                          green: CGFloat(green.value), blue: CGFloat(blue.value), alpha: CGFloat(alpha.value))
        
        let gradientLayer = CAGradientLayer()
        let locationTop = round(10 * gradiant.value)/10
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.red.cgColor]
        gradientLayer.frame = self.gradinview.bounds
        gradientLayer.locations = [0.0,NSNumber(value: locationTop)]
        self.gradinview.layer.addSublayer(gradientLayer)
        if alpha.value == Float(0.00){
            gradinview.layer.isHidden = true
        }else{
            gradinview.layer.isHidden = false
        }

        if sender == red || sender == green || sender == green || sender == alpha || sender == gradiant {
            redvalue.text = String(format:"%.2f",(red.value))
            bluevalue.text = String(format: "%.2f", (blue.value))
            greenvalue.text = String(format: "%.2f", (green.value))
            alphavalue.text = String(format: "%.2f", (alpha.value))
            gradiantvalue.text = String(format: "%.2f", (gradiant.value))

            
        }
    }
    
    @IBAction func switchcolar(_ sender: UISwitch) {
        if !redswitch.isOn {
            red.isEnabled = false;
        } else {
            red.isEnabled = true;
        }
        if !greenswitch.isOn {
            green.isEnabled = false;
        } else {
            green.isEnabled = true;
        }
        if !blueswitch.isOn {
            blue.isEnabled = false;
        } else {
            blue.isEnabled = true;
        }
        if !gradiantswitch.isOn {
            gradiant.isEnabled = false;
        } else {
            gradiant.isEnabled = true;
        }
       
    }
    
    @IBAction func random(_ sender: Any) {
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        let randomAlpha = CGFloat.random(in: 0...1)
        let randomGradient = Float.random(in: 0...1)
        
        let gradientLayer = CAGradientLayer()
        let locationTop = round(10 * gradiant.value)/10
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.red.cgColor]
        gradientLayer.frame = self.gradinview.bounds
        gradientLayer.locations = [0.0,NSNumber(value: locationTop)]
        self.gradinview.layer.addSublayer(gradientLayer)


        imageview.backgroundColor = UIColor(red: randomRed,
                                            green: randomGreen, blue: randomBlue, alpha: randomAlpha)
        
        red.value = Float(randomRed)
        redvalue.text = String(format:"%.2f", randomRed)
        green.value = Float(randomGreen)
        greenvalue.text = String(format:"%.2f", randomGreen)
        blue.value = Float(randomBlue)
        bluevalue.text = String(format:"%.2f", randomBlue)
        alpha.value = Float(randomAlpha)
        alphavalue.text = String(format: "%.2f", randomAlpha)
        gradiant.value = Float(randomGradient)
        gradiantvalue.text = String(format: "%.2f", randomGradient)    }
    
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

