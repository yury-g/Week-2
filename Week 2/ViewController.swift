//
//  ViewController.swift
//  Week 2
//
//  Created by Yury Gitman on 9/8/16.
//  Copyright © 2016 com.yuryg. All rights reserved.
//
//  topics: Vars(Int, Float, String), Function Syntax, Operators (+, -, =), Slider, Labels, Buttons, ProgessView
//


import UIKit

class ViewController: UIViewController {
   
    //vars
    var myString = "Hello"
    var nameString = ""
    var myFloat: Float = 0.0
    
    
    @IBOutlet weak var myTextFieldOutlet: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!

    @IBOutlet weak var myProgressView: UIProgressView!

    @IBOutlet weak var myNumLabel: UILabel!
    
    @IBOutlet weak var mySlider: UISlider!
    
    
    @IBAction func button1Pressed(sender: UIButton) {
        nameString = myTextFieldOutlet.text!
        
       myLabel.text = myString + " " + nameString
        myTextFieldOutlet.resignFirstResponder()
    }
    
    @IBAction func TextEntered(sender: UITextField) {
        // Example that this can be an action too.
        print("textEntered")
        print( myString + " " + nameString)
    }

    
    @IBAction func mySliderMoved(sender: UISlider) {
        print("slider Moved value is \(mySlider.value)")
        
        myFloat = mySlider.value
        myNumLabel.text = String(myFloat)
        myProgressView.progress = myFloat
    
        
    }
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myLabel.text = "what's your name?"
        myNumLabel.text = String(myFloat)
        myProgressView.progress = myFloat
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }
    
    
}

