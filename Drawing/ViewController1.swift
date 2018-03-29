
//  ViewController1.swift
//  Drawing

//  Created by Ravi Pinamacha on 2/13/18.
//  Copyright © 2018 Divya. All rights reserved.
//

import UIKit
@IBDesignable
class ViewController1: UIViewController, vc2Delegate {
   

   
    @IBOutlet weak var vc1button: UIButton!
   @IBAction func vc1Clicked(_ sender: Any) {
         performSegue(withIdentifier: "v1ToV2", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? ViewController2 {
            dest.delegate = self
        }
    }
    
    func finishPassing(string: String) {
       print("Notify")
    }
   
    
}
