//
//  ViewController.swift
//  Game_3Moku
//
//  Created by 山中力仁 on 2017/09/04.
//  Copyright © 2017年 yamayoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Button5: UIButton!
    
    @IBAction func evButton5(_ sender: UIButton) {
                Button5.setImage(UIImage(named: "maru.PNG"), for: UIControlState())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

