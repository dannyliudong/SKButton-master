//
//  GameScene.swift
//  SKButton-Demo1
//
//  Created by Brandon Groff on 12/10/15.
//  Copyright (c) 2015 Brandon Groff. All rights reserved.
//

import SpriteKit

class GameScene: SKScene, SKButtonDelegate {
    
    var myFirstButton: SKButton!
    
    override func didMove(to view: SKView) {
        /* Setup your scene here */
        
        //create just a default button
        self.myFirstButton = SKButton()
        //IMPORTANT: Make sure to do this so your view knows when the button is touched
        self.myFirstButton.delegate = self
        //adds the button to view
        self.addChild(self.myFirstButton)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       /* Called when a touch begins */
        for touch in touches {
            let _ = touch.location(in: self)
            
        }
    }
   
    override func update(_ currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    //IMPORTANT: This is required by the SKButtonDelegate and to recieve button touches
    func skButtonTouchEnded(sender: SKButton) {
        print("My First Button!")
    }
}
