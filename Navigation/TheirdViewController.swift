//
//  TheirdViewController.swift
//  Navigation
//
//  Created by Артём Симан on 2.03.22.
//

import UIKit

class TheirdViewController: UIViewController {
    
    var dots: [UIView] = []
    @IBAction func closeTheird(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        
        let location = sender.location(in: view)
        for index in 0..<dots.count{
            
            if dots[index].frame.contains(location){
                dots[index].removeFromSuperview()
                dots.remove(at: index)
                return
            }
        }
        
        let dot = UIView()
        dot.backgroundColor = .orange
        dot.frame = CGRect(x: sender.location(in: view).x - 25, y: sender.location(in: view).y - 25, width: 50, height: 50)
        
        dot.layer.cornerRadius = 25
        dots.append(dot)
        view.addSubview(dot)
    }
    
   
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
 
}
