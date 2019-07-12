////
////  BirdScene.swift
////  Geomagic
////
////  Created by Ni Made Ananda Ayu Permata on 12/07/19.
////  Copyright © 2019 Geomecin. All rights reserved.
////
//
//import SpriteKit
//
//class BirdScene: SKScene {
//
//    var MainBird = SKSpriteNode()
//
//    var TextureAtlas = SKTextureAtlas()
//    var TextureArray = [SKTexture]()
//    override func didMove(to view: SKView) {
//        TextureAtlas = SKTextureAtlas(named: "Images")
//
//        //NSLog("\(TextureAtlas.textureNames)")
//
//        for i in 1...TextureAtlas.textureNames.count{
//            var Name = "owl\(i).png"
//            TextureArray.append(SKTexture(imageNamed: Name))
//        }
//        MainBird = SKSpriteNode(imageNamed: "owl1.png")
//        MainBird.size = CGSize(width: 70, height: 140)
//        MainBird.position = CGPoint(x: 30, y: self.size.height/2)
//        self.addChild(MainBird)
//
//    }
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        //MainBird.run()
//        MainBird.run(_ action: SKAction.repeatForever(SKAction.animate(with: TextureArray, timePerFrame: 0.1)))
//    }
//    override func update(_ currentTime: TimeInterval) {
//
//    }
//}
