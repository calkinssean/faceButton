//
//  ViewController.swift
//  Face Button
//
//  Created by Sean Calkins on 2/2/16.
//  Copyright © 2016 Sean Calkins. All rights reserved.
//




import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var faceClicksTextField: UITextField!
    
    @IBOutlet weak var facebutton2: UIButton!
   
    
    @IBOutlet weak var facebutton: FaceButton!
    var clicks: CGFloat = 0
   
    
    var timer: NSTimer?
    var count: CGFloat = 0
    let speed: NSTimeInterval = 0.1

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func backgroundColor() {
        if clicks % 2 == 0 {
            self.view.backgroundColor = UIColor.redColor()
            textBox.backgroundColor = UIColor.redColor()
        } else if clicks % 3 == 0 {
            self.view.backgroundColor = UIColor.greenColor()
            textBox.backgroundColor = UIColor.grayColor()
        }
        else {
            self.view.backgroundColor = UIColor.whiteColor()
            textBox.backgroundColor = UIColor.whiteColor()
        }
        if clicks == 20 {
            textBox.text = "Whoa"
            self.view.backgroundColor = UIColor.blueColor()
        } else if clicks == 40 || clicks == 68 {
            textBox.text = "Keep Clicking"
        } else if clicks == 69 {
            textBox.text = "HOLY FUCKING SHIT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
            self.view.backgroundColor = UIColor.yellowColor()
            textBox.backgroundColor = UIColor.yellowColor()
        } else if clicks >= 70 {
            textBox.text = "Too far bro"
        }
    }
    func checkForBonusRound() {
        if clicks == 10 {
            performSegueWithIdentifier("philViewControllerSegue", sender: self)
        }
    }
    
    
    
    
    
    @IBOutlet weak var textBox: UITextField!
    
    
    
    @IBOutlet weak var movingButton: UIButton!
    
    
    @IBAction func moveButton(philButton: UIButton) {
        
        
        
        
      
        movingButton.center.x = CGFloat(clicks)
        movingButton.center.y = CGFloat(clicks)
        
    }
    
    
    
    
    
    
    
    
    @IBAction func faceButton2(sender: AnyObject) {
    clicks--
    faceClicksTextField.text = "\(clicks)"
    backgroundColor()
    checkForBonusRound()
    
    }
    
    @IBAction func faceButton(sender: AnyObject) {
    clicks++
    faceClicksTextField.text = "\(clicks)"
    backgroundColor()
    checkForBonusRound()
       
        
        
    }
   
       
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func viewTapped() {
        print("view tapped")
        
    }
    
    
    
    

    
    
}

