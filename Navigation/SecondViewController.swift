//
//  SecondViewController.swift
//  Navigation
//
//  Created by Артём Симан on 2.03.22.
//

import UIKit


class SecondViewController: UIViewController {
    @IBOutlet weak var circle: UIView!
    
    var swipe: CGFloat = 15
    var circleHeight: CGFloat = 50
    var circleWidth: CGFloat = 50
    
    @IBAction func closeSecond(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func swipes(_ sender: UISwipeGestureRecognizer) {
        
        switch sender.direction {
        case .down:
            circle.frame.origin.y += swipe
            circle.backgroundColor = .green
        case .up:
            circle.frame.origin.y -= swipe
            circle.backgroundColor = .black
        case .left:
            circle.frame.origin.x -= swipe
            circle.backgroundColor = .red
        case .right:
            circle.frame.origin.x += swipe
            circle.backgroundColor = .purple
        default:
            break
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        circle.frame = CGRect(x: 130, y: 150, width: 50, height: 50)
        circle.layer.cornerRadius = 25
        
    }
}
