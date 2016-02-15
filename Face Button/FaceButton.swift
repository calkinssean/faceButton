//
//  FaceButton.swift
//  Face Button
//
//  Created by Sean Calkins on 2/14/16.
//  Copyright © 2016 Sean Calkins. All rights reserved.
//

import UIKit

class FaceButton: UIButton {
    
    var clicks = 0
    var timer: NSTimer?
    var count: Int = 0
    let speed: NSTimeInterval = 0.1
    
    func moveButton(button: FaceButton) {
    
        
        button.center.x = CGFloat(clicks)
        button.center.y = CGFloat(clicks)
    }
    
}