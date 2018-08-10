//
//  ViewController.swift
//  Animations
//
//  Created by Mansi Mahajan on 8/1/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



    @IBOutlet weak var btn: UIButton!
    var degree = CGFloat(Double.pi)
    @IBAction func Rotate(_ sender: UIButton) {
      //    sectionIsExpanded = !sectionIsExpanded
       
        if degree == -2*CGFloat(Double.pi) {
            UIView.animate(withDuration: 0.25) {
                self.btn.transform = CGAffineTransform(rotationAngle: self.degree)
            }
            degree = CGFloat(Double.pi)
        }else{
            UIView.animate(withDuration: 0.25) {
                self.btn.transform = CGAffineTransform(rotationAngle: self.degree)
                
            }
            degree = -2*CGFloat(Double.pi)
        }
        print(self.degree)
    }
    
//    var sectionIsExpanded: Bool = true {
//        didSet {
//            UIView.animate(withDuration: 0.25) {
//                if self.sectionIsExpanded {
//                    self.btn.transform = CGAffineTransform.identity
//                } else {
//                    self.btn.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)
//                }
//            }
//        }
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

