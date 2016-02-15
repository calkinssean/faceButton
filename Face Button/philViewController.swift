//
//  philViewController.swift
//  Face Button
//
//  Created by Sean Calkins on 2/11/16.
//  Copyright © 2016 Sean Calkins. All rights reserved.
//

import UIKit

class philViewController: UIViewController {
    @IBOutlet weak var philButton: UIButton!
   
    
    @IBAction func moveButton(philButton: UIButton) {
        // Find the button's width and height
        let buttonWidth = philButton.frame.width
        let buttonHeight = philButton.frame.height
        
        // Find the width and height of the enclosing view
        let viewWidth = philButton.superview!.bounds.width
        let viewHeight = philButton.superview!.bounds.height
        
        // Compute width and height of the area to contain the button's center
        let xwidth = viewWidth - buttonWidth
        let yheight = viewHeight - buttonHeight
        
        // Generate a random x and y offset
        let xoffset = CGFloat(arc4random_uniform(UInt32(xwidth)))
        let yoffset = CGFloat(arc4random_uniform(UInt32(yheight)))
        
        // Offset the button's center by the random offsets.
        philButton.center.x = xoffset + buttonWidth / 2
        philButton.center.y = yoffset + buttonHeight / 2
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
