//
//  ViewController.swift
//  SolarSystem
//
//  Created by Francisco Trueba on 27/06/21.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    var anchor:SolarSystem.SystemSolar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        anchor = try! SolarSystem.loadSystemSolar()
        anchor.generateCollisionShapes(recursive: true)
        
        arView.scene.anchors.append(anchor)
        
    }
}
