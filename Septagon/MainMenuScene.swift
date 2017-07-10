//
//  MainMenuScene.swift
//  Septagon
//
//  Created by Joshua Hudson on 7/9/17.
//  Copyright © 2017 ParanoidPenguinProductions. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    
    var playLabel = SKLabelNode()
    
    override func didMove(to view: SKView) {
        
        print("The main menu code is linked up to the main menu sks file")
        
        playLabel = self.childNode(withName: "playLabel") as! SKLabelNode
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch: AnyObject in touches {
            
            let pointITouched = touch.location(in: self)
            
            if playLabel.contains(pointITouched) {
                
                let sceneToMoveTo = GameScene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                
                let sceneTransition = SKTransition.fade(withDuration: 0.5)
                self.view?.presentScene(sceneToMoveTo, transition: sceneTransition)
                
            }
            
        }
        
    }
    
}
