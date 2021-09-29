//
//  ViewController.swift
//  CornerColors
//
//  Created by Karamustafic, Anela on 9/18/21.
//

import UIKit

class ViewController: UIViewController {
    
    var model = CornerColors ()

    @IBOutlet weak var topLeftCorner: UIView!
    
    @IBOutlet weak var topRightCorner: UIView!
    
    @IBOutlet weak var bottomRightCorner: UIView!
    
    @IBOutlet weak var bottomLeftCorner: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topRightCorner.backgroundColor = UIColor.red
        topLeftCorner.backgroundColor = UIColor.green
        bottomLeftCorner.backgroundColor = UIColor.blue
        bottomRightCorner.backgroundColor = UIColor.yellow
//        topLeftCorner.backgroundColor =
        // Do any additional setup after loading the view.
    }

    @IBAction func changeColors(_ sender: Any) {
        topLeftCorner.backgroundColor = model.topLeftCorner()
        topRightCorner.backgroundColor = model.topRightCorner()
        bottomRightCorner.backgroundColor = model.bottomRightCorner()
        bottomLeftCorner.backgroundColor = model.bottomLeftCorner()
    }
    
}

