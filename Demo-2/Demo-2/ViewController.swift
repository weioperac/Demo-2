//
//  ViewController.swift
//  Demo-2
//
//  Created by Wei Chen on 15/8/29.
//  Copyright (c) 2015年 Wei Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    
    @IBOutlet weak var numberOfBallSlider: UISlider!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.text=String(Int(self.numberOfBallSlider.value))

    }

    @IBAction func sliderChange(sender: UISlider) {
        self.textField.text=String(Int(self.numberOfBallSlider.value))
    }
    
    
    
    

    
    @IBAction func animateButtonPressed(sender: UIButton) {
   

        let numberOfBall = Int(self.numberOfBallSlider.value)
        
        
        for loopNumber in 0...numberOfBall{
            
//            let size: CGFloat = CGFloat(Int(rand()) % 40 + 20)
//           let yPosition: CGFloat = CGFloat(Int(rand()) % 200 + 20)
//            let coloredSquare = UIView()
//            coloredSquare.backgroundColor = UIColor.blueColor()
//            coloredSquare.frame = CGRectMake(0, yPosition, size, size)
//            self.view.addSubview(coloredSquare)

            let size: CGFloat = CGFloat(Int(rand()) % 40 + 20)
            let xPosition: CGFloat = CGFloat((Int(rand()) % 320)-320)
            let yPosition: CGFloat = CGFloat(Int(rand()) % 200 + 20)
            
            
            let ball=UIImageView()
            ball.image=UIImage(named: "ball")
            ball.frame = CGRectMake(xPosition, yPosition, size, size)
            //ball.contentMode=UIViewContentMode.ScaleAspectFit
            self.view.addSubview(ball)
        
            
            let duration = NSTimeInterval(Int(rand())%3)
            let delay = 0.0
            let options = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseIn
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                ball.frame = CGRectMake(320-size, yPosition, size, size)
                }, completion: nil)
        }
        
        

        
        
        
//        let options=UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseIn
        
//        UIView.animateWithDuration(0.25,delay: 0,options: options,animations: {
//           coloredSquare.backgroundColor=UIColor.redColor()
//            coloredSquare.frame=CGRectMake(320-50, 120, 50, 50)
//            },completion:nil)
        

        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

