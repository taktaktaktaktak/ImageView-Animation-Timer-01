//
//  ViewController.swift
//  ImageView Animation Timer 01
//
//  Created by dit000 on 2019. 3. 27..
//  Copyright © 2019년 DIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var alienImageViewe: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    var count = 1
    var isAnimation = false
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageViewe.image = UIImage(named:"Image1")
        
    }

    @IBAction func playBtnPressed(_ sender: Any) {
        print("play Pressed")
        myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(playAnimation), userInfo: nil, repeats: true)
        //timer 호출
    }
    
    @IBAction func pauseBtnPressed(_ sender: Any) {
        print("pause Pressed")
        myTimer.invalidate()
    }
    @IBAction func stopBtnPressed(_ sender: Any) {
        print("stop Pressed")
        count = 0
        //countLabel.text = String(count)
    }
    @objc func playAnimation(){
        
        if count == 5{
            count = 1
        } else {
            count+=1
        }
        
        alienImageViewe.image = UIImage(named: "Image\(count)")
        countLabel.text = String(count)
        
    }
}

