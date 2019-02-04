//
//  ViewController.swift
//  Bip the Guy
//
//  Created by Sarah Minji Kim on 2/3/19.
//  Copyright © 2019 Sarah Minji Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: properties
    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //MARK: functions
    func animateImage () {
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        
        //shrink our imageTOPUnch by 60 pixels
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + shrinkValue, y: self.imageToPunch.bounds.origin.y + shrinkValue, width: self.imageToPunch.bounds.size.width - shrinkValue, height: self.imageToPunch.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds}, completion: nil)
        
    }

    //MARK: ACTIONS
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
       animateImage ()
    }
}

