//
//  ViewController2.swift
//  Drawing
//
//  Created by Ravi Pinamacha on 2/13/18.
//  Copyright © 2018 Divya. All rights reserved.
//

import UIKit

protocol vc2Delegate: class {
    func finishPassing(string: String)
}

class ViewController2: UIViewController {
    var delegate: vc2Delegate?
    

    @IBAction func vc2Clicked(_ sender: Any) {
        delegate?.finishPassing(string: "From VC2")
    }
    
}
