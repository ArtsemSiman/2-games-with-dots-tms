//
//  ViewController.swift
//  Navigation
//
//  Created by Артём Симан on 2.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func changeColor(_ sender: Any) {
        
        let redValue = CGFloat (drand48())
        let greenValue = CGFloat (drand48())
        let blueValue = CGFloat (drand48())
        
        self.view.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

