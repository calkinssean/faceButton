//
//  ViewController.swift
//  Face Button
//
//  Created by Sean Calkins on 2/2/16.
//  Copyright © 2016 Sean Calkins. All rights reserved.
//




import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var clicks: CGFloat = 0
    var timer: NSTimer?
    var xCount: CGFloat = 30
    var yCount: CGFloat = 30
    let speed : NSTimeInterval = 0.001
    var xHasReachedMax = false
    var yHasReachedMax = false
    
    @IBOutlet weak var faceClicksTextField: UITextField!
    @IBOutlet weak var facebutton2: UIButton!
    @IBOutlet weak var seanButton: UIButton!
    @IBOutlet weak var facebutton: FaceButton!
    @IBOutlet weak var textBox: UITextField!
    @IBAction func faceButton2(sender: AnyObject) {
        
        clicks--
        faceClicksTextField.text = "\(clicks)"
        backgroundColor()
        checkForBonusRound()
       
    
        timer = NSTimer.scheduledTimerWithTimeInterval(speed, target: self, selector: "updateFace", userInfo: nil, repeats: true)
        updateFace()
   }
    
    @IBAction func faceButton(sender: AnyObject) {
        
        clicks++
        faceClicksTextField.text = "\(clicks)"
        backgroundColor()
        checkForBonusRound()
        updateFace()
    }
    
    
    func updateFace() {
        if yCount == 770 {
            yHasReachedMax = true
            
        }
        if yHasReachedMax == false {
            yCount++
            seanButton.center.y = (yCount)
            
        }
        if yHasReachedMax == true {
            yCount--
            seanButton.center.y = (yCount)
        }
        if yCount == 30 {
            yHasReachedMax = false
            
        }
        if xCount == 400 {
            xHasReachedMax = true
            
        }
        if xHasReachedMax == false {
            xCount++
            seanButton.center.x = (xCount)
            
        }
        if xHasReachedMax == true {
            xCount--
            seanButton.center.x = (xCount)
            
        }
        if xCount == 30 {
            xHasReachedMax = false

        }
        
        
    
    
    }
    
    
    func backgroundColor() {
        
        let number1 = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
        let number2 = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
        let number3 = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
        let color = UIColor(red: CGFloat(number1), green: CGFloat(number2), blue: CGFloat(number3), alpha: 1.0)
        self.view.backgroundColor = color
        textBox.backgroundColor = color

        if clicks == 20 {
            textBox.text = "Whoa"
        } else if clicks == 40 || clicks == 68 {
            textBox.text = "Keep Clicking"
        } else if clicks == 69 {
            textBox.text = "HOLY FUCKING SHIT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
            textBox.backgroundColor = UIColor.yellowColor()
        } else if clicks >= 70 {
            textBox.text = "Too far bro"
        }
    }
    func checkForBonusRound() {
        if clicks == 100 {
            performSegueWithIdentifier("philViewControllerSegue", sender: self)
        }
    }
}

