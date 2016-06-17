//
//  ViewController.swift
//  Animations Alien
//
//  Created by George Gogarten on 6/17/16.
//  Copyright © 2016 George Gogarten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1
    
    @IBOutlet weak var alienImage: UIImageView!
    
    
    @IBAction func updateImage(sender: AnyObject) {
        
        if counter == 5 {
            
            counter = 1
            
        } else {
        
        counter = counter + 1
        
        }
        
        
        alienImage.image = UIImage(named: "frame\(counter).png")
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidLayoutSubviews() {
        
        alienImage.frame = CGRectMake(100, 20, 0, 0)
    
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1) {
            
            self.alienImage.frame = CGRectMake(100, 20, 100, 200)
        
        }
    
            
    }

}

