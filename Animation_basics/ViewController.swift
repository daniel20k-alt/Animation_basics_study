//
//  ViewController.swift
//  Animation_basics
//
//  Created by DDDD on 21/03/2020.
//  Copyright © 2020 MeerkatWorks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView = UIImageView(image: UIImage(named: "meerkatJosh"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
    }

    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true
    
        UIView.animate(withDuration: 1, delay: 0, options: [], animations: {
            switch self.currentAnimation {
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                break
            case 1:
                self.imageView.transform = .identity
            case 2:
                self.imageView.transform = CGAffineTransform(translationX: -200, y: -200)
            case 3:
                self.imageView.transform = .identity
            case 4:
                self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
            case 5:
                self.imageView.transform = .identity
            case 6:
                self.imageView.alpha = 0.1
                self.imageView.backgroundColor = .yellow
            case 7:
                self.imageView.alpha = 1
                self.imageView.backgroundColor = .clear
                
            default:
                break
            }
        }) { finished in
            sender.isHidden = false
        }
 
        currentAnimation += 1
        
        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
}

