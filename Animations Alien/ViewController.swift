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
    
    var timer = NSTimer()
    
    @IBOutlet weak var alienImage: UIImageView!
    
    
    @IBAction func updateImage(sender: AnyObject) {
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
        
    }
    
    func doAnimation() {
       
        if counter == 5 {
            
            counter = 1
            
        } else {
            
            counter = counter + 1
            
        }
        
        
        alienImage.image = UIImage(named: "frame\(counter).png")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    override func viewDidLayoutSubviews() {
        
        alienImage.frame = CGRectMake(100, 20, 0, 0)
    
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1) {
            
            self.alienImage.frame = CGRectMake(100, 20, 100, 200)
        
        }
    
            
    }
*/
    
    
 
 
 
}

