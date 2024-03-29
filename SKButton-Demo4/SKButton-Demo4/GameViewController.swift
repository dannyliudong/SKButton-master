//
//  GameViewController.swift
//  SKButton-Demo4
//
//  Created by Brandon Groff on 12/10/15.
//  Copyright (c) 2015 Brandon Groff. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Note: Not initializing GameScene with size: Device.screenSize, so the 
        // SKButtonPosition class functions will not work as expected
        
        if let scene = GameScene(fileNamed:"GameScene") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .aspectFill
            
            skView.presentScene(scene)
        }
    }




    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

 
}
